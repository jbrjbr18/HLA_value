<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Donor Form</title>
<link rel="stylesheet" href="style.css">
<style>
  body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f0f4f8; /* Light blue background */
  }

  .container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 120vh; /* Adjusted height */
  }

  .card {
    background-color: #ffffff; /* White card background */
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 90%;
    max-width: 400px;
  }

  .card form label {
    display: block;
    margin-bottom: 6px;
    font-size: 14px;
    font-weight: bold;
  }

  .card form input,
  .card form select,
  .card form textarea {
    width: 95%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
  }

  .card form button {
    width: 100%;
    padding: 10px;
    border: none;
    border-radius: 6px;
    background-color: #007bff; /* Blue button background */
    color: #fff;
    font-size: 16px;
    cursor: pointer;
  }

  .legal-section {
    margin-top: 20px;
    text-align: center;
  }

  .card form .file-upload {
    margin-bottom: 20px;
  }
</style>
</head>
<body>
<div class="container">
  <div class="card">
    <form action="ef" method="post">
    <h1>Enter Donor Details</h1>
      <label for="name">Name</label>
      <input name="name" type="text" placeholder="Name" required="">
      
      <label for="age">Enter Your Age (18 - 60)</label>
      <input name="age" type="number" placeholder="Age" required="" min="18" max="60">
      
      <label for="gender">Enter Your Gender</label>
      <input name="gender" type="text" placeholder="Gender" required="">
      
      <label for="blood-group">Enter Your Blood Group</label>
      <input name="blood-group" type="text" placeholder="Blood Group" required="">
      
      <label for="address">Enter Your Address</label>
      <textarea name="address" placeholder="Your Address Comes here...." rows="5" cols="33"></textarea>
      
      <label for="hla-value">Enter HLA Value</label>
      <input name="hla-value" type="text" placeholder="eg:HLA-A_A*1" required="">
      
      
      
      <label for="stem-cells">Select Stem Cells</label>
      <select name="stem-cells">
        <option value="Embryonic Stem Cells (ESCs)">Embryonic Stem Cells (ESCs)</option>
        <option value="Adult Stem Cells (also known as Somatic or Tissue-Specific Stem Cells)">Adult Stem Cells (also known as Somatic or Tissue-Specific Stem Cells)</option>
        <option value="Perinatal Stem Cells">Perinatal Stem Cells</option>
      </select>
      
      <button type="submit">Submit Form</button>
    </form>
  </div>
</div>
</body>
</html>
