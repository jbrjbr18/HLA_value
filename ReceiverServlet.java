package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/receiverServlet")
public class ReceiverServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hlaValue = request.getParameter("hla-value");

        Connection con = null;
        PreparedStatement donorStmt = null;
        ResultSet rs = null;

        try {
            // Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hla4", "root", "test");

            // Query to check if the HLA value exists in the donor table
            String donorQuery = "SELECT * FROM donor WHERE hla_value = ?";
            donorStmt = con.prepareStatement(donorQuery);
            donorStmt.setString(1, hlaValue);

            // Execute the query
            rs = donorStmt.executeQuery();

            boolean found = false; // Flag to check if any matching donors are found
            StringBuilder donorDetails = new StringBuilder(); // StringBuilder to store donor details

            // Iterate over the ResultSet to collect details for each matching donor
            while (rs.next()) {
                found = true; // Set found to true since at least one matching donor is found

                // Retrieve donor details
                String donorName = rs.getString("name");
                String age = rs.getString("age");
                String donorGender = rs.getString("gender");
                String bloodGroup = rs.getString("blood_group");
                String address = rs.getString("address");
                String donorStemCells = rs.getString("stem_cells");

                // Append donor details to the StringBuilder
                donorDetails.append("Name: ").append(donorName).append("\\n")
                            .append("Age: ").append(age).append("\\n")
                            .append("Gender: ").append(donorGender).append("\\n")
                            .append("Blood Group: ").append(bloodGroup).append("\\n")
                            .append("Address: ").append(address).append("\\n")
                            .append("Stem Cells: ").append(donorStemCells).append("\\n\\n");
            }

            // Display pop-up 1: Submitted Successfully
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Submitted successfully!');</script>");

            // If at least one matching donor found, display pop-up 2: Stroma AI Working with loading animation
            if (found) {
                out.println("<script>function blink() { "
                        + "var dots = document.getElementById('dots'); "
                        + "setInterval(function() {"
                        + "if (dots.innerHTML.length > 2) { dots.innerHTML = '.'; }"
                        + "else { dots.innerHTML += '.'; }"
                        + "}, 500); "
                        + "}</script>");
                
                out.println("<style> #dots { color: blue; animation: blink 1s infinite; } @keyframes blink { 50% { opacity: 0; } } </style>");
                
                out.println("<script>blink();</script>");
                out.println("<script>alert('Stroma AI is working on finding matching details...');</script>");
            }

            // Wait for 3 seconds (3000 milliseconds)
            Thread.sleep(3000);

            // Display pop-up 3: Matched Details
            if (found) {
                // Write JavaScript code to display donor details in an alert
                out.println("<script>alert('HLA values match! Donor details: \\n" + donorDetails.toString() + "');</script>");
            } else {
                // If no matching donors found, display a message
                out.println("<script>alert('No matching donors found for the provided HLA value.');</script>");
            }

        } catch (SQLException | ClassNotFoundException | InterruptedException e) {
            e.printStackTrace();
            // Redirect to an error page
            response.sendRedirect("Error.jsp");
        } finally {
            // Close the resources in finally block to ensure they are always closed
            try {
                if (rs != null) rs.close();
                if (donorStmt != null) donorStmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
