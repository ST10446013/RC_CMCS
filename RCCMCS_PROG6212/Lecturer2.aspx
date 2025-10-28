<!DOCTYPE html>
<html>
<head runat="server">
    <title>SubmitClaim Page</title>
    <style>
        body {
            margin: 0; 
            padding: 0;
            background-color: white;
            font-family: Arial, sans-serif;
        }

        .side-Navigation-bar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 200px;
            background-color: white;
            padding-bottom: 2px;
            border-right-style: solid;
            border-right-color: lightgray;
            border-right-width: 1px;
        }

        .side-Navigation-bar a {
            display: block;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            font-family: Arial, sans-serif;
            font-size: 12px;
            border-bottom-style: solid;
            border-bottom-width:1px;
            border-bottom-color:lightgray;
            margin: 6px;
            transition: background-color 0.3s;
        }

        .side-Navigation-bar a:hover {
            background-color: lightgray;
        }

        .main-content {
            margin-left: 200px;
            margin-right: 10px;
            padding: 10px;
            font-family: Arial, sans-serif;
            margin-bottom:20px;
        }

        h1 {
            color: #2c3e50;
        }

        .header-strip{
            position: fixed;
            top:0;
            height: 50px;
            width: 82%;
            margin-left:200px;
            padding:10px;
            background-color:  #32353A;
            justify-content: space-between;
            display:flex; 
            gap:400px; 
            flex-wrap:nowrap;
            margin-bottom:5px;
            font-family:Arial, Helvetica, sans-serif;
            align-items: center;
        }

        .header-strip p{
            color: white;
            font-weight: 400;
        }

        .header-strip img{
            height: 30px;
            width:30px;
            justify-content:end;
        }

        .summary-claims-table{
            width: 100%;
            padding-left:30px;
            font-family:Arial, Helvetica, sans-serif;
        }

        .summary-claims-table thead{
            font-size:16px;
            color: grey;
        }

        .summary-claims-table td{
            height: 25px;
        }

        .summary-claims-table tr{
            width:100%;
            height: 10px;
        }

        .summary-claims-button{
            justify-content:center;
            background-color:  #32353A;
            color: white; 
            font-weight:400;
            height: 30px;
            width:40%;
            align-items:center;
            border-radius:8px;
            border :none;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            margin-top:-40px;
            cursor: pointer;
        }

        .submit-container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
            margin-top: 20px;
        }

        .summary-claims-table input[type]{
           border-radius: 5px;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            border: 1px solid #dee2e6;
            background-color: #fff;
            height: 25px;
            width: 280px;
        }
       
        .recent-claims-table{
            margin-left:210px;
            width: 82%;
            border-collapse: collapse; 
            border: 1px solid #ddd;
            border-radius: 4px;
            overflow: hidden;
        }

        .recent-claims-table th{
            background-color: #32353A;
            padding: 12px 8px;
            text-align: left;
            border-bottom: 2px solid #ddd;
            font-weight: bold;
            color: white;
        }

        .recent-claims-table td{
            padding: 10px 8px;
            border-bottom: 1px solid #ddd;
            height: 30px; 
        }

        .recent-claims-table tr:hover {
            background-color: #f5f5f5;
        }

        .submit-claim{
            margin-top:100px;
            height:300px;
        }

        .summary-claims-table{
            border-radius:10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            height:280px;
        }

        .file-adding {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 100%;
        }

        .file-button {
            font-size: 20px;
            padding: 80px;
            width: 250px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .file-button input[type="file"] {
            font-size: 10px;
            margin-top: 15px; 
        }

        .file-button img {
            height: 80px;
            width: 80px;
            margin-bottom: 10px; 
        }

        .main-content textarea{
            font-size: 16px;
            width: 99%;
            border-radius: 10px;
            box-shadow: inset 0 1px 4px rgba(0, 0, 0, 0.1);
            border-style: none;
        }

        .status-pending {
            color: #ff9800;
            font-weight: bold;
        }

        .status-approved {
            color: #4caf50;
            font-weight: bold;
        }

        .status-rejected {
            color: #f44336;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="side-Navigation-bar">
            <a href="LandingPage.aspx" style="padding: 10px; transition:none;"><img src="Images/logo.png" alt="Icon" style="width:120px; height:50px;" /></a>
            <a href="Home.aspx" style="border:none; font-weight:bold;">Miss Khanyi Mkhonza</a>
            <a href="Lecturer.aspx">Lecturer</a>
            <div class="dashboard-items">
                <br />
                <a href="Lecturer.aspx" style="font-weight:bold; ">Dashboard</a>
                <a href="Lecturer.aspx" style="border-bottom: none;">My Claims</a>
                <a href="Lecturer2.aspx" style="border-bottom: none;">Submit Claims</a>
                <a href="Contact.aspx">Lecturer Details</a>
            </div>
            <br />
            <br />
            <a href="Settings.aspx" style="font-weight:bold;">Settings</a>
        </div>

        <div class="header-strip">
            <p>MISS MKHONZA</p>
            <img src="/Images/notifications.png" alt="Notifications" />
        </div>

        <div class="main-content">
            <div class="submit-claim" style="display:flex; justify-content:center; gap:20px; flex-wrap:nowrap; padding: 0px;">
                <table class="summary-claims-table">
                    <tbody>
                        <tr>
                            <td>Module Code</td>
                            <td><input type="text" id="moduleCode" required/></td>
                        </tr>
                        <tr>
                            <td>Program Code</td>
                            <td><input type="text" id="programCode" required/></td>
                        </tr>
                        <tr>
                            <td>Date</td>
                            <td><input type="date" id="claimDate" required/></td>
                        </tr>
                        <tr>
                            <td>Phase/ Task</td>
                            <td><input type="text" id="phaseTask" required/></td>
                        </tr>
                        <tr>
                            <td>Total Hours</td>
                            <td><input type="number" id="totalHours" min="1" required/></td>
                        </tr>
                        <tr>
                            <td>Rate</td>
                            <td><input type="number" id="rate" min="0" step="0.01" required/></td>
                        </tr>
                    </tbody>
                </table>

               <div class="file-adding">
                  <div class="file-button">
                    <img src="Images/attach.png" id="previewIcon" />
                    <input type="file" name="fileupload" id="fileUpload" onchange="previewFile()" />
                  </div>
                </div>

               

            </div>

            <div>
                <textarea rows="4" cols="50" name="notes" id="additionalNotes">Additional notes here</textarea>
            </div>
            <div class="submit-container">
                <button type="button" class="summary-claims-button" onclick="submitClaim()">
                    SUBMIT CLAIM
                </button>
            </div>
        </div>

        <div>
            <table class="recent-claims-table" id="claimsTable">
                <thead>
                    <tr>
                        <th>Module Code</th>
                        <th>Programme Code</th>
                        <th>Date</th>
                        <th>Total Hours</th>
                        <th>Rate</th>
                        <th>Total Amount</th>
                        <th>Claim Status</th>
                    </tr>
                </thead>
                <tbody id="claimsTableBody">
                    <!-- Existing sample data -->
                    <tr>
                        <td>DIS2</td>
                        <td>PROG6121</td>
                        <td>11/11/23</td>
                        <td>10</td>
                        <td>2.3</td>
                        <td>3000</td>
                        <td class="status-pending">Pending</td>
                    </tr>
                  
                </tbody>
            </table>
        </div>
    </form>

   <script>
       // Array to store claims data
       let claims = JSON.parse(localStorage.getItem('claims')) || [];

       function submitClaim() {
           // Get form values
           const moduleCode = document.getElementById('moduleCode').value;
           const programCode = document.getElementById('programCode').value;
           const claimDate = document.getElementById('claimDate').value;
           const phaseTask = document.getElementById('phaseTask').value;
           const totalHours = parseFloat(document.getElementById('totalHours').value);
           const rate = parseFloat(document.getElementById('rate').value);
           const additionalNotes = document.getElementById('additionalNotes').value;

           // Validate required fields
           if (!moduleCode || !programCode || !claimDate || !phaseTask || !totalHours || !rate) {
               alert('Please fill in all required fields');
               return;
           }

           // Calculate total amount
           const totalAmount = totalHours * rate;

           // Format date for display
           const formattedDate = new Date(claimDate).toLocaleDateString('en-GB');

           // Create new claim object
           const newClaim = {
               id: Date.now(),
               moduleCode,
               programCode,
               date: formattedDate,
               totalHours,
               rate,
               totalAmount: totalAmount.toFixed(2),
               status: 'Pending',
               phaseTask,
               notes: additionalNotes,
               submittedDate: new Date().toISOString(),
               fileData: uploadedFileData // <— base64 file here
           };


           // Add to claims array
           claims.push(newClaim);

           // Save to localStorage
           localStorage.setItem('claims', JSON.stringify(claims));

           // Add to table
           addClaimToTable(newClaim);

           // Clear form
           clearForm();

           // Show success message
           alert('Claim submitted successfully!');
       }

       function addClaimToTable(claim) {
           const tableBody = document.getElementById('claimsTableBody');

           // Create new row
           const newRow = document.createElement('tr');

           // Determine status class
           let statusClass = 'status-pending';
           if (claim.status === 'Approved') statusClass = 'status-approved';
           if (claim.status === 'Rejected') statusClass = 'status-rejected';

           newRow.innerHTML = `
            <td>${claim.moduleCode}</td>
            <td>${claim.programCode}</td>
            <td>${claim.date}</td>
            <td>${claim.totalHours}</td>
            <td>${claim.rate}</td>
            <td>R ${claim.totalAmount}</td>
            <td class="${statusClass}">${claim.status}</td>
        `;

           // Add new row at the top of the table
           tableBody.insertBefore(newRow, tableBody.firstChild);
       }

       function loadClaims() {
           const tableBody = document.getElementById('claimsTableBody');

           // Clear existing rows (except the sample ones if you want to keep them)
           // tableBody.innerHTML = ''; // Uncomment this to remove sample data

           // Add claims from localStorage
           claims.forEach(claim => {
               addClaimToTable(claim);
           });
       }

       function clearForm() {
           document.getElementById('moduleCode').value = '';
           document.getElementById('programCode').value = '';
           document.getElementById('claimDate').value = '';
           document.getElementById('phaseTask').value = '';
           document.getElementById('totalHours').value = '';
           document.getElementById('rate').value = '';
           document.getElementById('additionalNotes').value = 'Additional notes here';
           document.getElementById('fileUpload').value = '';
       }

       // Initialize when page loads
       document.addEventListener('DOMContentLoaded', function () {
           const today = new Date().toISOString().split('T')[0];
           document.getElementById('claimDate').value = today;
           loadClaims();
       });

       let uploadedFileData = null; // will store base64 file data

       function previewFile() {
           const fileInput = document.getElementById('fileUpload');
           const file = fileInput.files[0];
           const reader = new FileReader();

           reader.onload = function (e) {
               uploadedFileData = e.target.result;
               const icon = document.getElementById('previewIcon');

               if (file.type.startsWith("image/")) {
                   icon.src = e.target.result; // show image directly
               } else if (file.type === "application/pdf") {
                   icon.src = "Images/pdf-icon.png"; // use pdf icon
               } else {
                   icon.src = "Images/attach.png"; // fallback
               }
           };

           if (file) {
               reader.readAsDataURL(file);
           }
       }
   </script>
</body>
</html>