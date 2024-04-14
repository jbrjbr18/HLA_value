<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home</title>
<link rel="stylesheet" href="style.css">
<style>
 body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url('img3.jpg'); /* Set the background image */
    background-color: #f0f4f8; /* Light blue background */
    min-height: 100vh; /* Ensure the body covers the full viewport height */
    position: relative; /* Set position to relative to make room for the fixed footer */
    background-size: cover; /* Scale the background image to cover the entire container */
    background-position: center; /* Center the background image */
}

.container {
    position:none;
    max-width: 1600px;
    margin:none; /* Adjust top margin to create space below the navigation buttons */
    padding: 20px;
    background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    height: 1800px; /* Set height to auto */
    
}
 

  

  h1 {
    margin-top: 0;
    font-size: 36px;
    color: #333;
  }

  p {
    font-size: 18px;
    color: #666;
    line-height: 1.6;
    margin-bottom: 20px;
  }

  h2 {
    font-size: 24px;
    color: #333;
    margin-top: 30px;
    margin-bottom: 15px;
  }

  h3 {
    font-size: 20px;
    color: #333;
    margin-top: 25px;
    margin-bottom: 10px;
  }

  ul {
    list-style: none;
    padding: 0;
    margin: 0;
  }

  li {
    margin-bottom: 10px;
  }

  a {
    text-decoration: none;
    color: #007bff;
    transition: color 0.3s ease;
  }

  a:hover {
    color: #0056b3;
  }

  .hidden {
    display: none;
  }

  .toggle-arrow {
    cursor: pointer;
  }

 .footer-container {
    display: flex;
    justify-content: space-around;
    align-items: flex-start; /* Align items to the top */
    max-height: 250px; /* Set maximum height for the footer */
    overflow: auto; /* Add scrollbar if content exceeds max-height */
}



.footer-section h3 {
  font-size: 18px;
  margin-bottom: 10px;
}

/* Add margin-bottom to the footer-section class */
.footer-section {
  margin-bottom: 5px;
}

/* Adjust height and padding for smaller footer */
footer {
    background-color: #333;
    color: #fff;
    padding: 5px 0; /* Reduce padding */
    position: fixed;
    bottom: 0;
    width: 100%;
    height: 150px;
}
 

 
  .footer-section ul {
    list-style: none;
    padding: 0;
  }

  .footer-section ul li {
    margin-bottom: 5px;
  }

  .footer-section ul li a {
    color: #fff;
    text-decoration: none;
  }

  .footer-section ul li a:hover {
    text-decoration: underline;
  }


.navigation-buttons {
    position: none; /* Make the navigation buttons fixed */
    top: 0; /* Align the buttons to the top of the viewport */
    left: 0; /* Align the buttons to the left */
    width: 100%; /* Make the buttons cover the full width of the viewport */
    z-index: 999; /* Set z-index to ensure the buttons are above other content */
    box-shadow: none; /* Add a subtle shadow */
    display: flex; /* Use flexbox for layout */
    justify-content: space-around; /* Distribute buttons evenly */
    padding: 10px 0; /* Add padding to the top and bottom of the buttons */
}

.navigation-buttons button {
    border-radius: 20px; /* Set border radius */
    font-size: 16px; /* Adjust font size */
    color: #000; /* Set text color to black */
    background-color: transparent; /* Set background color to transparent */
    border: none; /* Remove button border */
    padding: 10px 15px; /* Set padding for buttons */
    transition: background-color 0.3s ease; /* Add transition effect */
}

.navigation-buttons button:hover {
    background-color: #f0f4f8; /* Change background color on hover */
}

.navigation-buttons button:first-child {
    width: auto; /* Set width for the first button */
}

.navigation-buttons button:not(:first-child) {
    flex-grow: 1; /* Allow buttons to grow and fill the space */
    margin: 0 150px; /* Add margin between buttons */
}



}
.stroma-button {
    font-weight: bold; /* Make the text bold */
    color: #fff; /* Set text color to white */
    background-color: #007bff; /* Set background color to Stroma blue */
    border: none; /* Remove border */
    transition: background-color 0.3s ease; /* Add transition effect */
    font-size: 24px; /* Set font size to 24px */
    padding: 10px 20px; /* Set padding */
    cursor: pointer; /* Change cursor to pointer on hover */
    margin-right: 10px; /* Add margin to the right for spacing */
}

.stroma-button:hover {
    background-color: #0056b3; /* Darken background color on hover */
}

 
</style>
</head>
<body>



<div class="container">
<!-- Navigation buttons outside of the container -->
<div class="navigation-buttons">
<h1 style="opacity: 0.5; font-size: 45px;">Stroma</h1>
    <button class="stroma-button" onclick="window.location.href='Home.jsp'">Home</button>
    <button class="stroma-button" onclick="window.location.href='Donor.jsp'">Donor</button>
    <button class="stroma-button" onclick="window.location.href='Reciver.jsp'">Receiver</button>
    <button class="stroma-button" onclick="showContact()"> Help</button>
</div>
  <h1>Welcome to Our Stem Cell Donation Platform</h1>
  <p>Wherever the art of medicine is loved, there is also a love for humanity.- Hippocrates</p>
  <p>Be a Lifesaver: Donate Stem Cells Today</p>
  <p>Join the Movement to Save Lives through Stem Cell Donation</p>
  <p>Stem cell donation offers hope and healing to those battling life-threatening diseases. Your simple act of donating stem cells can make a profound difference.</p>
  
  <h2>Frequently Asked Questions</h2>
  <div id="faq" class="hidden">
    <h3>What are stem cells?</h3>
    <p>Stem cells are undifferentiated cells that have the unique ability to develop into various specialized cell types in the body. They are characterized by their capacity for self-renewal and differentiation into specific cell types.</p>
    <h3>What types of stem cells exist, and how do they differ?</h3>
    <p>There are several types of stem cells, including embryonic stem cells, adult stem cells, and induced pluripotent stem cells (iPSCs). Embryonic stem cells are derived from embryos, while adult stem cells are found in various tissues throughout the body. iPSCs are created in the lab by reprogramming adult cells to behave like embryonic stem cells.</p>
    <h3>Where do stem cells come from?</h3>
    <p>Stem cells can be sourced from different areas, including embryos (embryonic stem cells), bone marrow, adipose tissue, umbilical cord blood, and even certain adult tissues like the liver or skin.</p>
    <h3>What is the importance of stem cells in medicine and research?</h3>
    <p>Stem cells have significant potential in medical research and treatment. They offer opportunities for studying diseases, screening drugs, and developing regenerative therapies to repair or replace damaged tissues and organs.</p>
    <h3>How are stem cells used in treating diseases and medical conditions?</h3>
    <p>Stem cells can be used in regenerative medicine to treat various conditions like leukemia, spinal cord injuries, heart disease, and diabetes. They have the potential to regenerate and repair tissues and organs.</p>
    <h3>Are there any ethical concerns associated with stem cell research and use?</h3>
    <p>Ethical concerns primarily revolve around the use of embryonic stem cells, as their extraction involves the destruction of embryos. However, alternative methods like iPSCs have reduced these ethical concerns.</p>
    <h3>Can anyone donate their stem cells, and how does the donation process work?</h3>
    <p>Depending on the type of donation (bone marrow, peripheral blood, or cord blood), individuals can register as donors. Matching donors are identified, and the cells are collected through a relatively straightforward and safe process.</p>
    <h3>What are the potential risks or side effects of stem cell therapies or treatments?</h3>
    <p>Risks can vary depending on the specific treatment. Potential risks include immune system reactions, tumor formation, or complications related to the procedure. However, most stem cell therapies are considered safe and are continually being improved.</p>
    <h3>What ongoing research is being conducted in the field of stem cells?</h3>
    <p>Ongoing research involves exploring new ways to manipulate stem cells, understanding their behavior in specific environments, improving transplantation techniques, and developing more effective therapies for various diseases and conditions.</p>
    <h3>What is the process of harvesting or obtaining stem cells?</h3>
    <p>Harvesting methods depend on the type of stem cells. Embryonic stem cells are obtained from embryos, while adult stem cells can be collected from bone marrow, blood, or other tissues through minimally invasive procedures.</p>
  </div>
  <div id="toggle" class="toggle-arrow">&#9660;</div>
</div>

<footer>
  <div class="footer-container">
    <div class="footer-section">
      <h3>COMPANY</h3>
      <ul>
        <li><a href="#">About Us</a></li>
        <li><a href="#">Our Team</a></li>
        <li><a href="#">Careers</a></li>
        <li><a href="#">Partnerships</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>RESOURCES</h3>
      <ul>
        <li><a href="#">FAQs</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Press Releases</a></li>
        <li><a href="#">Testimonials</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>SUPPORT</h3>
      <ul>
        <li><a href="#">Contact Us</a></li>
        <li><a href="#">Help Center</a></li>
        <li><a href="#">Terms of Service</a></li>
        <li><a href="#">Privacy Policy</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h3>CONNECT WITH US</h3>
      <ul>
        <li><a href="#">Facebook</a></li>
        <li><a href="#">Twitter</a></li>
        <li><a href="#">Instagram</a></li>
        <li><a href="#">LinkedIn</a></li>
      </ul>
    </div>
  </div>
</footer>


<script>
  const faqSection = document.getElementById('faq');
  const toggleButton = document.getElementById('toggle');
  
  toggleButton.addEventListener('click', () => {
    if (faqSection.classList.contains('hidden')) {
      faqSection.classList.remove('hidden');
      toggleButton.innerHTML = '&#9650;';
    } else {
      faqSection.classList.add('hidden');
      toggleButton.innerHTML = '&#9660;';
    }
  });

  function showContact() {
    alert("Contact through mail: sakthimeenakshi511@gmail.com\nMobile no: 9345612281");
  }
</script>
</body>
</html>
