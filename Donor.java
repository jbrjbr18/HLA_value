package p1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ef")
public class Donor extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Donor() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String name1 = request.getParameter("name");
        String age = request.getParameter("age");
        String gender1 = request.getParameter("gender");
        String bloodGroup = request.getParameter("blood-group");
        String address1 = request.getParameter("address");
        String hlaValue = request.getParameter("hla-value");
        String stemCells = request.getParameter("stem-cells");

        // Check if all fields are filled
        if (name1 != null && !name1.isEmpty() && age != null && !age.isEmpty() && gender1 != null && !gender1.isEmpty() &&
            bloodGroup != null && !bloodGroup.isEmpty() && address1 != null && !address1.isEmpty() && 
            hlaValue != null && !hlaValue.isEmpty() && stemCells != null && !stemCells.isEmpty()) {
            
            // Display JavaScript pop-up
            String script = "<script>alert('Successfully filled!');</script>";
            response.getWriter().println(script);
            
            // Validate HLA value
            if (isValidHlaValue(hlaValue)) {
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hla4", "root", "test");
                    String query = "INSERT INTO donor (name, age, gender, blood_group, address, hla_value, stem_cells) VALUES (?, ?, ?, ?, ?, ?, ?)";
                    PreparedStatement preparedStatement = con.prepareStatement(query);
                    preparedStatement.setString(1, name1);
                    preparedStatement.setString(2, age);
                    preparedStatement.setString(3, gender1);
                    preparedStatement.setString(4, bloodGroup);
                    preparedStatement.setString(5, address1);
                    preparedStatement.setString(6, hlaValue);
                    preparedStatement.setString(7, stemCells);
                    preparedStatement.executeUpdate();
                    con.close();
                    response.sendRedirect("NewFile.jsp"); // Redirect after successful insertion
                    PrintWriter out = response.getWriter();
                    out.println("<script>alert('Submitted successfully!');</script>");
                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("error.html"); // Redirect to error page in case of exception
                }
            } else {
                // HLA value is invalid, show JavaScript alert
                response.getWriter().println("<script>alert('Invalid HLA value. Please enter a valid HLA value.');</script>");
            }
        } else {
            // If any field is empty, display JavaScript alert
            response.getWriter().println("<script>alert('Please fill out all fields before submitting the form.');</script>");
        }
    }
    

    // Function to validate HLA value
    private boolean isValidHlaValue(String hlaValue) {
        // List of allowed HLA values
        String[] allowedHlaValues = {
            // HLA values here...
        		"HLA-A_A*1", "HLA-A_A*2", "HLA-A_A*3", "HLA-A_A*4", "HLA-A_A*5", "HLA-A_A*6",
    		    "HLA-A_A*7", "HLA-A_A*8", "HLA-A_A*9", "HLA-A_A*10", "HLA-A_A*11", "HLA-A_A*12",
    		    "HLA-A_A*13", "HLA-A_A*14", "HLA-A_A*15", "HLA-A_A*16", "HLA-A_A*17", "HLA-A_A*18",
    		    "HLA-A_A*19", "HLA-A_A*20", "HLA-A_A*21", "HLA-A_A*22", "HLA-A_A*23", "HLA-A_A*24",
    		    "HLA-A_A*25", "HLA-A_A*26", "HLA-A_A*27", "HLA-A_A*28", "HLA-A_A*29", "HLA-A_A*30",
    		    "HLA-A_A*31", "HLA-A_A*32", "HLA-A_A*33", "HLA-A_A*34", "HLA-A_A*35", "HLA-A_A*36",
    		    "HLA-A_A*37", "HLA-A_A*38",
    		    // HLA-B
    		    "HLA-B_B*1", "HLA-B_B*2", "HLA-B_B*3", "HLA-B_B*4", "HLA-B_B*5", "HLA-B_B*6",
    		    "HLA-B_B*7", "HLA-B_B*8", "HLA-B_B*9", "HLA-B_B*10", "HLA-B_B*11", "HLA-B_B*12",
    		    "HLA-B_B*13", "HLA-B_B*14", "HLA-B_B*15", "HLA-B_B*16", "HLA-B_B*17", "HLA-B_B*18",
    		    "HLA-B_B*19", "HLA-B_B*20", "HLA-B_B*21", "HLA-B_B*22", "HLA-B_B*23", "HLA-B_B*24",
    		    "HLA-B_B*25", "HLA-B_B*26", "HLA-B_B*27", "HLA-B_B*28", "HLA-B_B*29", "HLA-B_B*30",
    		    "HLA-B_B*31", "HLA-B_B*32", "HLA-B_B*33", "HLA-B_B*34", "HLA-B_B*35", "HLA-B_B*36",
    		    "HLA-B_B*37", "HLA-B_B*38",
    		    // HLA-C
    		    "HLA-C_C*1", "HLA-C_C*2", "HLA-C_C*3", "HLA-C_C*4", "HLA-C_C*5", "HLA-C_C*6",
    		    "HLA-C_C*7", "HLA-C_C*8", "HLA-C_C*9", "HLA-C_C*10", "HLA-C_C*11", "HLA-C_C*12",
    		    "HLA-C_C*13", "HLA-C_C*14", "HLA-C_C*15", "HLA-C_C*16", "HLA-C_C*17", "HLA-C_C*18",
    		    "HLA-C_C*19", "HLA-C_C*20", "HLA-C_C*21", "HLA-C_C*22", "HLA-C_C*23", "HLA-C_C*24",
    		    "HLA-C_C*25", "HLA-C_C*26", "HLA-C_C*27", "HLA-C_C*28", "HLA-C_C*29", "HLA-C_C*30",
    		    "HLA-C_C*31", "HLA-C_C*32", "HLA-C_C*33", "HLA-C_C*34", "HLA-C_C*35", "HLA-C_C*36",
    		    "HLA-C_C*37", "HLA-C_C*38",
    		    // HLA-DR
    		    "HLA-DR_DR*1", "HLA-DR_DR*2", "HLA-DR_DR*3", "HLA-DR_DR*4", "HLA-DR_DR*5", "HLA-DR_DR*6",
    		    "HLA-DR_DR*7", "HLA-DR_DR*8", "HLA-DR_DR*9", "HLA-DR_DR*10", "HLA-DR_DR*11", "HLA-DR_DR*12",
    		    "HLA-DR_DR*13", "HLA-DR_DR*14", "HLA-DR_DR*15", "HLA-DR_DR*16", "HLA-DR_DR*17", "HLA-DR_DR*18",
    		    "HLA-DR_DR*19", "HLA-DR_DR*20", "HLA-DR_DR*21", "HLA-DR_DR*22", "HLA-DR_DR*23", "HLA-DR_DR*24",
    		    "HLA-DR_DR*25", "HLA-DR_DR*26", "HLA-DR_DR*27", "HLA-DR_DR*28", "HLA-DR_DR*29", "HLA-DR_DR*30",
    		    "HLA-DR_DR*31", "HLA-DR_DR*32", "HLA-DR_DR*33", "HLA-DR_DR*34", "HLA-DR_DR*35", "HLA-DR_DR*36",
    		    "HLA-DR_DR*37", "HLA-DR_DR*38",
    		    // HLA-DQ
    		    "HLA-DQ_DQ*1", "HLA-DQ_DQ*2", "HLA-DQ_DQ*3", "HLA-DQ_DQ*4", "HLA-DQ_DQ*5", "HLA-DQ_DQ*6",
    		    "HLA-DQ_DQ*7", "HLA-DQ_DQ*8", "HLA-DQ_DQ*9", "HLA-DQ_DQ*10", "HLA-DQ_DQ*11", "HLA-DQ_DQ*12",
    		    "HLA-DQ_DQ*13", "HLA-DQ_DQ*14", "HLA-DQ_DQ*15", "HLA-DQ_DQ*16", "HLA-DQ_DQ*17", "HLA-DQ_DQ*18",
    		    "HLA-DQ_DQ*19", "HLA-DQ_DQ*20", "HLA-DQ_DQ*21", "HLA-DQ_DQ*22", "HLA-DQ_DQ*23", "HLA-DQ_DQ*24",
    		    "HLA-DQ_DQ*25", "HLA-DQ_DQ*26", "HLA-DQ_DQ*27", "HLA-DQ_DQ*28", "HLA-DQ_DQ*29", "HLA-DQ_DQ*30",
    		    "HLA-DQ_DQ*31", "HLA-DQ_DQ*32", "HLA-DQ_DQ*33", "HLA-DQ_DQ*34", "HLA-DQ_DQ*35", "HLA-DQ_DQ*36",
    		    "HLA-DQ_DQ*37", "HLA-DQ_DQ*38",
    		    // HLA-DP
    		    "HLA-DP_DP*1", "HLA-DP_DP*2", "HLA-DP_DP*3", "HLA-DP_DP*4", "HLA-DP_DP*5", "HLA-DP_DP*6",
    		    "HLA-DP_DP*7", "HLA-DP_DP*8", "HLA-DP_DP*9", "HLA-DP_DP*10", "HLA-DP_DP*11", "HLA-DP_DP*12",
    		    "HLA-DP_DP*13", "HLA-DP_DP*14", "HLA-DP_DP*15", "HLA-DP_DP*16", "HLA-DP_DP*17", "HLA-DP_DP*18",
    		    "HLA-DP_DP*19", "HLA-DP_DP*20", "HLA-DP_DP*21", "HLA-DP_DP*22", "HLA-DP_DP*23", "HLA-DP_DP*24",
    		    "HLA-DP_DP*25", "HLA-DP_DP*26", "HLA-DP_DP*27", "HLA-DP_DP*28", "HLA-DP_DP*29", "HLA-DP_DP*30",
    		    "HLA-DP_DP*31", "HLA-DP_DP*32", "HLA-DP_DP*33", "HLA-DP_DP*34", "HLA-DP_DP*35", "HLA-DP_DP*36",
    		    "HLA-DP_DP*37", "HLA-DP_DP*38"
        };

        // Check if the provided HLA value is in the allowed list
        for (String allowedValue : allowedHlaValues) {
            if (hlaValue.equals(allowedValue)) {
                return true;
            }
        }
        return false;
    }
}



