<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Receiver Form</title>
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
    height: 110vh; /* Adjusted height */
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
    <form action="receiverServlet" method="post">
      <section class="bg-gray-50 p-10">
          <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
              Get a Donor
          </h1>
          <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <div>
                    <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Name</label>
                    <input name="name" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Name" required="">
                </div>
                <div>
                    <label for="dob" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Enter Your DOB (DD-MM-YYYY)</label>
                    <input name="dob" type="date" placeholder="DD-MM-YYYY" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                </div>
                <div>
                    <label for="gender" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Enter Your Gender</label>
                    <input name="gender" type="text" placeholder="Male" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                </div>
                <div>
                    <label for="contact" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Contact Number</label>
                    <input name="contact" type="text" placeholder="+91" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                </div>
                <div>
                    <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Enter Email</label>
                    <input name="email" type="email" placeholder="youremail@gmail.com" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                </div>
                <div>
                    <label for="stem-cells" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Required Stem Cells</label>
                    <select name="stem-cells" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                        <option>Embryonic Stem Cells (ESCs)</option>
                        <option>Adult Stem Cells (also known as Somatic or Tissue-Specific Stem Cells)</option>
                        <option>Perinatal Stem Cells</option>
                    </select>
                </div>
                <div>
                    <label for="hla-value" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Enter HLA Value</label>
                    <input name="hla-value" type="text" placeholder="HLA Value" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required="">
                </div>
             
                <div>
                    <input type="submit" value="Submit Form" class="w-full text-black bg-white hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">
                </div>
            </div>
          </div>
      </section>
    </form>
  </div>
</div>
</body>
</html>
