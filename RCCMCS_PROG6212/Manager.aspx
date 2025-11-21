<!DOCTYPE html>
<html>
<head runat="server">
    <title>Managers Page</title>
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
            font-weight: 600;
        }

        .header-strip img{
            height: 30px;
            width:30px;
            justify-content:end;
        }

        .claim-summary{
            margin-top: 2px;
            padding-left: 5px;
            padding-right:5px;
            border-radius:8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            height: 100px;
            width: 100%;
            font-size:14px;
        }

        .summary-claims-table{
            width: 100%;
        }

        .summary-claims-table thead{
            font-size:16px;
            color: grey;
        }

        .summary-claims-table td{
            height: 18px;
        }

        .summary-claims-table tr{
            width:100%;
            height: 10px;
        }

        .action-button1 {
            background-color: lawngreen;
            border: none;
            cursor: pointer;
            padding: 5px;
            margin: 0 2px;
            height: 40px;
            width: 40px;
        }
        .action-button2 {
            background-color: red;
            border: none;
            cursor: pointer;
            padding: 5px;
            margin: 0 2px;
            height: 40px;
            width: 40px;
        }

        .action-button:hover {
            opacity: 0.7;
        }

        .action-button img {
            width: 30px;
            height: 30px;
        }

        .status-pending {
            color: #ff9800;
        }

        .status-approved {
            color: #4caf50;
        }

        .status-rejected {
            color: #f44336;
        }

        .no-claims {
            text-align: center;
            color: #666;
            font-style: italic;
            padding: 20px;
        }
    </style>
</head>

<body>
    <form id="form2" runat="server">
        <div class="side-Navigation-bar">
            <a href="LandingPage.aspx" style="padding: 10px; transition:none;"><img src="Images/logo.png" alt="Icon" style="width:120px; height:50px;" /></a>
            <a href="Manager.aspx" style="border:none; font-weight:bold;">Mrs Khumalo</a>
            <a href="Manager.aspx">Manager</a>
            <div class="dashboard-items">
                <br />
                <a href="Lecturer.aspx" style="font-weight:bold; ">Dashboard</a>
                <a href="Manager.aspx" style="border-bottom: none;">Recent Claims</a>
                <a href="Manager2.aspx" style="border-bottom: none;">Verify Claims</a>
                <a href="Contact.aspx">Manager Details</a>
            </div>
            <br />
            <br />
            <a href="Settings.aspx" style="font-weight:bold;">Settings</a>
        </div>

        <div class="header-strip">
            <p>MRS KHUMALO</p>
            <img src="/Images/notifications.png" alt="Notifications" />
        </div>

        <div class="main-content">
            <p style="font-size:16px; color: grey; margin-top:70px;">RECENT CLAIMS</p>
            
            <div id="claimsContainer">
                
                <div class="no-claims">No claims submitted yet</div>
            </div>
        </div>
    </form>

    <script>
        function loadManagerClaims() {
            const claimsContainer = document.getElementById('claimsContainer');
            const claims = JSON.parse(localStorage.getItem('claims')) || [];

            if (claims.length === 0) {
                claimsContainer.innerHTML = '<div class="no-claims">No claims submitted yet</div>';
                return;
            }

            
            const sortedClaims = claims.sort((a, b) => new Date(b.submittedDate) - new Date(a.submittedDate));
            
            let claimsHTML = '';

            sortedClaims.forEach((claim, index) => {
                const statusClass = `status-${claim.status.toLowerCase()}`;
                
                claimsHTML += `
                    <section class="claim-summary" style="margin-top: ${index === 0 ? '0' : '20'}px;">
                        <table class="summary-claims-table">
                            <thead>
                            <tr><th>Khanyi Mkhonza</th></tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><strong>${claim.moduleCode}</strong></td>
                                    <td>Claim #${claim.id}</td>
                                    <td>${claim.date}</td>
                                </tr>
                                <tr>
                                    <td>${claim.phaseTask}</td>
                                    <td class="${statusClass}">${claim.status}</td>
                                    <td rowspan="2">
                                        <button class="action-button1" onclick="approveClaim(${claim.id})" title="Approve Claim">
                                           
                                        </button>
                                        <button class="action-button2" onclick="rejectClaim(${claim.id})" title="Reject Claim">
                                            
                                        </button>
                                    </td>
                                </tr> 
                                <tr>
                                    <td>Hours worked: ${claim.totalHours}</td>
                                    <td>R ${claim.totalAmount}</td>
                                </tr>     
                            </tbody>
                        </table>
                    </section>
                `;
            });

            claimsContainer.innerHTML = claimsHTML;
        }

        function approveClaim(claimId) {
            updateClaimStatus(claimId, 'Approved');
        }

        function rejectClaim(claimId) {
            updateClaimStatus(claimId, 'Rejected');
        }

        function updateClaimStatus(claimId, newStatus) {
            const claims = JSON.parse(localStorage.getItem('claims')) || [];
            const claimIndex = claims.findIndex(claim => claim.id === claimId);
            
            if (claimIndex !== -1) {
                claims[claimIndex].status = newStatus;
                localStorage.setItem('claims', JSON.stringify(claims));
                
              
                loadManagerClaims();
                
                alert(`Claim #${claimId} has been ${newStatus.toLowerCase()}`);
            }
        }

      
        document.addEventListener('DOMContentLoaded', loadManagerClaims);
    </script>
</body>
</html>