<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lecturer Page</title>
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
            font-weight: 600;
        }

        .header-strip img{
            height: 30px;
            width:30px;
            justify-content:end;
        }

        .claim-summary{
            margin-top: 90px;
            padding-left: 5px;
            padding-right:5px;
            border-radius:10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            height: 140px;
            width: 100%;
            font-size:14px;
        }

        .summary-claims-table{
            width: 100%;
        }

        .summary-claims-table thead{
            font-size:16px;
            color: grey;
            font-weight: 200px;
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
            background-color: #32353A;
            color: white; 
            font-weight:400;
            height: 30px;
            width:40%;
            align-items:center;
            border-radius:8px;
            border :none;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            margin-bottom:-150px;
            cursor: pointer;
        }
       
        .summary-claims-button:hover{
            background-color: #2c2f33;
        }
       
        .recent-claims-table{
            width: 100%;
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
            color:white;
            font-size:14px;
        }

        .recent-claims-table td{
            padding: 10px 8px;
            border-bottom: 1px solid #ddd;
            height: 30px; 
        }

        .recent-claims-table tr:hover {
            background-color: #f5f5f5;
        }

        /* Status styles */
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

       
        .summary-numbers {
            font-weight: normal;
            color: black;
        }
    </style>
</head>

<body>
    <form id="form2" runat="server">
       <div class="side-Navigation-bar">
             <a href="LandingPage.aspx" style="padding: 10px; transition:none;"><img src="Images/logo.png" alt="Icon" style="width:120px; height:50px;" /></a>
             <a href="Home.aspx" style="border:none; font-weight:bold;">Miss Khanyi Mkhonza</a>
             <a href="Lecturer.aspx" >Lecturer</a>
             <div class="dashboard-items">
                 <br />
                 <a href="Lecturer.aspx" style="font-weight:bold; ">Dashboard</a>
                 <a href="Lecturer.aspx" style="border-bottom: none;">My Claims</a>
                 <a href="Lecturer2.aspx" style="border-bottom: none;">Submit Claims</a>
                 <a href="Contact.aspx" >Lecturer Details</a>
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
            <section class="claim-summary">
                 <table class="summary-claims-table">
                    <thead>
                        <tr><th colspan="2">SUMMARY OF CLAIMS</th></tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Total Claims submitted: </td>
                            <td>Approved Claims: <span id="approvedClaims" class="summary-numbers">0</span></td>
                        </tr>
                        <tr>
                            <td>Total Hours Worked: <span id="totalHours" class="summary-numbers">0</span></td>
                            <td>Rejected Claims: <span id="rejectedClaims" class="summary-numbers">0</span></td>
                        </tr> 
                        <br />
                        <tr >
                            <td colspan="2" style="text-align:center; margin-bottom: -50px;">
                                <button type="button" class="summary-claims-button" onclick="window.location.href='Lecturer2.aspx'">
                                     SUBMIT NEW CLAIM
                                </button>
                            </td>
                        </tr>     
                    </tbody>
                  </table>
            </section>

            <section>
                <p>Recent</p>
                <table class="recent-claims-table">
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
                    <tbody id="recentClaimsBody">
                        <!-- Claims will be loaded here dynamically -->
                    </tbody>
                </table>
            </section>
        </div>

        <script>
            function loadClaimsData() {
                // Get claims from localStorage
                const claims = JSON.parse(localStorage.getItem('claims')) || [];

                // Update summary statistics
                updateSummary(claims);

                // Load recent claims table
                loadRecentClaims(claims);
            }

            function updateSummary(claims) {
                const totalClaims = claims.length;
                const approvedClaims = claims.filter(claim => claim.status === 'Approved').length;
                const rejectedClaims = claims.filter(claim => claim.status === 'Rejected').length;
                const totalHours = claims.reduce((sum, claim) => sum + parseFloat(claim.totalHours), 0);

                // Update the summary numbers - keeping the original layout
                document.getElementById('approvedClaims').textContent = approvedClaims;
                document.getElementById('rejectedClaims').textContent = rejectedClaims;
                document.getElementById('totalHours').textContent = totalHours;

                // Note: Total Claims is not displayed in the original layout
            }

            function loadRecentClaims(claims) {
                const tableBody = document.getElementById('recentClaimsBody');
                tableBody.innerHTML = '';

                // Sort claims by date (newest first) and take latest 5
                const recentClaims = claims
                    .sort((a, b) => new Date(b.submittedDate) - new Date(a.submittedDate))
                    .slice(0, 5);

                if (recentClaims.length === 0) {
                    tableBody.innerHTML = '<tr><td colspan="7" style="text-align: center;">No claims submitted yet</td></tr>';
                    return;
                }

                recentClaims.forEach(claim => {
                    const row = document.createElement('tr');

                    let statusClass = 'status-pending';
                    if (claim.status === 'Approved') statusClass = 'status-approved';
                    if (claim.status === 'Rejected') statusClass = 'status-rejected';

                    row.innerHTML = `
                        <td>${claim.moduleCode}</td>
                        <td>${claim.programCode}</td>
                        <td>${claim.date}</td>
                        <td>${claim.totalHours}</td>
                        <td>${claim.rate}</td>
                        <td>R ${claim.totalAmount}</td>
                        <td class="${statusClass}">${claim.status}</td>
                    `;

                    tableBody.appendChild(row);
                });
            }

            // Load data when page loads
            document.addEventListener('DOMContentLoaded', loadClaimsData);
        </script>
    </form>
</body>
</html>