<!DOCTYPE html>
<html>
<head runat="server">
    <title>HR Dashboard</title>
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

        /* NEW HR DASHBOARD STYLES */
        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
            margin-top: 80px;
            margin-bottom: 20px;
        }

        .card {
            background: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            text-align: center;
            border-left: 4px solid #2196f3;
        }

        .card.pending { border-left-color: #ff9800; }
        .card.approved { border-left-color: #4caf50; }
        .card.rejected { border-left-color: #f44336; }

        .card h3 {
            margin: 0 0 8px 0;
            color: #32353A;
            font-size: 12px;
        }

        .card .number {
            font-size: 20px;
            font-weight: bold;
            color: #32353A;
        }

        .section {
            background: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            margin-bottom: 15px;
        }

        .section h2 {
            color: #32353A;
            margin-bottom: 12px;
            font-size: 16px;
        }

        .filters {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
            flex-wrap: wrap;
        }

        .filter-group {
            display: flex;
            flex-direction: column;
        }

        .filter-group label {
            font-size: 11px;
            margin-bottom: 4px;
            color: #666;
        }

        .filter-group select, .filter-group input {
            padding: 6px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 11px;
            height: 30px;
        }

        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 11px;
            height: 30px;
        }

        .btn-approve { background: #4caf50; color: white; }
        .btn-reject { background: #f44336; color: white; }
        .btn-process { background: #ff9800; color: white; }
        .btn-export { background: #2196f3; color: white; }

        .bulk-actions {
            background: #f8f9fa;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 15px;
        }
        
        .auto-process {
            background: rgb(191, 191, 191, 0,80);
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 10px;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
            margin-top: 12px;
        }

        .stat-item {
            background: #f8f9fa;
            padding: 8px;
            border-radius: 4px;
            text-align: center;
        }

        .stat-value {
            font-size: 16px;
            font-weight: bold;
            color: #32353A;
        }

        .stat-label {
            font-size: 11px;
            color: #666;
        }

        /* Claims Table Styles */
        .claims-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 11px;
            margin-top: 10px;
        }

        .claims-table th {
            background-color: #32353A;
            color: white;
            padding: 10px 6px;
            text-align: left;
            font-weight: bold;
        }

        .claims-table td {
            padding: 8px 6px;
            border-bottom: 1px solid #ddd;
        }

        .claims-table tr:hover {
            background-color: #f5f5f5;
        }

        .checkbox-cell {
            width: 25px;
            text-align: center;
        }

        .status-pending { color: #ff9800; font-weight: bold; }
        .status-approved { color: #4caf50; font-weight: bold; }
        .status-rejected { color: #f44336; font-weight: bold; }

        .action-buttons {
            display: flex;
            gap: 4px;
        }

        .action-btn {
            padding: 4px 8px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 10px;
        }

        .no-claims {
            text-align: center;
            color: #666;
            font-style: italic;
            padding: 20px;
        }

        .quick-stats {
               display: grid;
               grid-template-columns: repeat(3, 1fr);
               gap: 15px;
               margin-bottom: 20px;
        }

        .stat {
           
            background: white;
            padding: 15px;
            border-radius: 4px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            text-align: center;
            
        }
    </style>
</head>

<body>
    <form id="form2" runat="server">
        <div class="side-Navigation-bar">
            <a href="LandingPage.aspx" style="padding: 10px; transition:none;">
                <img src="Images/logo.png" alt="Icon" style="width:120px; height:50px;" />
            </a>
            <a href="HR.aspx" style="border:none; font-weight:bold;">Mr Govender</a>
            <a href="HR.aspx">HR Dashboard</a>
            <div class="dashboard-items">
                <br />
                <a href="HRpage.aspx" style="font-weight:bold; ">Dashboard</a>
                <a href="ClaimsManagement.aspx" style="border-bottom: none;">Claims Processing</a>
                <a href="LecturerManagement.aspx" style="border-bottom: none;">Lecturer Management</a>
                <a href="Report.aspx">Reports & Analytics</a>
            </div>
            <br />
            <br />
            <a href="Settings.aspx" style="font-weight:bold;">Settings</a>
        </div>

        <div class="header-strip">
             <p>HR DEPARTMENT</p>
             <img src="/Images/notifications.png" alt="Notifications" />
        </div>

        <div class="main-content">
         
            <div class="dashboard-cards">
                <div class="card">
                    <h3>TOTAL CLAIMS</h3>
                    <div class="number" id="totalClaims">0</div>
                </div>
                <div class="card pending">
                    <h3>PENDING</h3>
                    <div class="number" id="pendingClaims">0</div>
                </div>
                <div class="card approved">
                    <h3>APPROVED</h3>
                    <div class="number" id="approvedClaims">0</div>
                </div>
                <div class="card rejected">
                    <h3>REJECTED</h3>
                    <div class="number" id="rejectedClaims">0</div>
                </div>
            </div>

            <!-- Auto Processing Section -->
            <div class="section auto-process">
                <h2>AUTOMATED CLAIM PROCESSING</h2>
                <div class="filters">
                    <div class="filter-group">
                        <label>Auto-Process Older Than:</label>
                        <select id="autoProcessDays">
                            <option value="1">1 Day</option>
                            <option value="3" selected>3 Days</option>
                            <option value="7">7 Days</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label>Auto-Approval Rules:</label>
                        <select id="autoRules">
                            <option value="5000">Amount < R5,000</option>
                            <option value="10000">Amount < R10,000</option>
                            <option value="0">No Auto-Approval</option>
                        </select>
                    </div>
                    <button class="btn btn-process" onclick="runAutoProcessing()">RUN AUTO PROCESSING</button>
                </div>
                <div class="stats-grid">
                    <div class="stat-item">
                        <div class="stat-value" id="autoProcessedCount">0</div>
                        <div class="stat-label">Claims Auto-Processed</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-value" id="timeSaved">0h</div>
                        <div class="stat-label">Time Saved</div>
                    </div>
                </div>
            </div>

          
            <!-- Quick Stats -->
            <div class="quick-stats">
                <div class="stat">
                    <strong>Pending:</strong> <span id="statsPending">0</span> claims
                </div>
                <div class="stat">
                    <strong>Total Amount:</strong> R <span id="statsAmount">0</span>
                </div>
                <div class="stat">
                    <strong>Avg Processing:</strong> <span id="statsAvgTime">0</span> days
                </div>
            </div>

         
            <!-- Claims Table -->
            <div class="section">
                <h2>CLAIMS PROCESSING</h2>
                <div id="claimsContainer">
                    <table class="claims-table" id="claimsTable">
                        <thead>
                            <tr>
                                <th class="checkbox-cell">☑</th>
                                <th>ID</th>
                                <th>LECTURER</th>
                                <th>MODULE</th>
                                <th>DATE</th>
                                <th>HOURS</th>
                                <th>AMOUNT</th>
                                <th>STATUS</th>
                                <th>DAYS OPEN</th>
                                <th>ACTIONS</th>
                            </tr>
                        </thead>
                        <tbody id="claimsTableBody">
                            <!-- Claims will be loaded here -->
                        </tbody>
                    </table>
                    <div class="no-claims" id="noClaimsMessage">No claims submitted yet</div>
                </div>
            </div>
        </div>
    </form>

    <script>
        let allClaims = [];
        let filteredClaims = [];

        function loadHRDashboard() {
            loadDashboardStats();
            loadClaimsData();
            populateLecturerFilter();
        }

        function loadDashboardStats() {
            const claims = JSON.parse(localStorage.getItem('claims')) || [];
            allClaims = claims;

            const totalClaims = claims.length;
            const pendingClaims = claims.filter(c => c.status === 'Pending').length;
            const approvedClaims = claims.filter(c => c.status === 'Approved').length;
            const rejectedClaims = claims.filter(c => c.status === 'Rejected').length;

            // Calculate pending amount and average processing time
            const pendingAmount = claims
                .filter(c => c.status === 'Pending')
                .reduce((sum, claim) => sum + parseFloat(claim.totalAmount), 0);

            const approvedClaimsData = claims.filter(c => c.status === 'Approved');
            const avgProcessingTime = approvedClaimsData.length > 0 ?
                approvedClaimsData.reduce((sum, claim) => {
                    const days = (new Date() - new Date(claim.submittedDate)) / (1000 * 60 * 60 * 24);
                    return sum + days;
                }, 0) / approvedClaimsData.length : 0;

            // Update dashboard cards
            document.getElementById('totalClaims').textContent = totalClaims;
            document.getElementById('pendingClaims').textContent = pendingClaims;
            document.getElementById('approvedClaims').textContent = approvedClaims;
            document.getElementById('rejectedClaims').textContent = rejectedClaims;

            // Update quick stats
            document.getElementById('statsPending').textContent = pendingClaims;
            document.getElementById('statsAmount').textContent = pendingAmount.toFixed(2);
            document.getElementById('statsAvgTime').textContent = avgProcessingTime.toFixed(1);

            // Calculate time saved (30 minutes per auto-processed claim)
            const autoProcessed = claims.filter(c => c.status === 'Approved' &&
                (new Date() - new Date(c.submittedDate)) < 30 * 24 * 60 * 60 * 1000).length;
            document.getElementById('timeSaved').textContent = (autoProcessed * 0.5).toFixed(1) + 'h';
        }

        function loadClaimsData() {
            const claims = JSON.parse(localStorage.getItem('claims')) || [];
            filteredClaims = [...claims].sort((a, b) => new Date(b.submittedDate) - new Date(a.submittedDate));

            applyCurrentFilters();
        }



        function renderClaimsTable() {
            const tbody = document.getElementById('claimsTableBody');
            const noClaimsMessage = document.getElementById('noClaimsMessage');

            if (filteredClaims.length === 0) {
                tbody.innerHTML = '';
                noClaimsMessage.style.display = 'block';
                return;
            }

            noClaimsMessage.style.display = 'none';

            let tableHTML = '';
            filteredClaims.forEach(claim => {
                const daysOpen = Math.floor((new Date() - new Date(claim.submittedDate)) / (1000 * 60 * 60 * 24));
                const statusClass = `status-${claim.status.toLowerCase()}`;

                tableHTML += `
                    <tr>
                        <td class="checkbox-cell">
                            <input type="checkbox" class="claim-checkbox" value="${claim.id || claim.ClaimId}">
                        </td>
                        <td>#${claim.id || claim.ClaimId}</td>
                        <td>${claim.employeeName || claim.EmployeeName || 'Unknown'}</td>
                        <td>${claim.moduleCode || claim.ModuleCode}</td>
                        <td>${new Date(claim.claimDate || claim.date).toLocaleDateString()}</td>
                        <td>${claim.totalHours || claim.TotalHours}</td>
                        <td>R ${parseFloat(claim.totalAmount || claim.TotalAmount).toFixed(2)}</td>
                        <td class="${statusClass}">${claim.status}</td>
                        <td>${daysOpen}</td>
                        <td>
                            <div class="action-buttons">
                                <button class="action-btn btn-approve" onclick="approveClaim(${claim.id || claim.ClaimId})" 
                                    ${claim.status === 'Pending' ? '' : 'disabled'}>
                                    Approve
                                </button>
                                <button class="action-btn btn-reject" onclick="rejectClaim(${claim.id || claim.ClaimId})"
                                    ${claim.status === 'Pending' ? '' : 'disabled'}>
                                    Reject
                                </button>
                            </div>
                        </td>
                    </tr>
                `;
            });

            tbody.innerHTML = tableHTML;
        }


        function selectAllClaims() {
            const checkboxes = document.querySelectorAll('.claim-checkbox');
            checkboxes.forEach(checkbox => {
                checkbox.checked = true;
            });
        }

        function bulkApproveClaims() {
            const selectedClaims = getSelectedClaimIds();
            if (selectedClaims.length === 0) {
                alert('Please select at least one claim to approve.');
                return;
            }

            if (confirm(`Approve ${selectedClaims.length} selected claims?`)) {
                selectedClaims.forEach(claimId => {
                    updateClaimStatus(claimId, 'Approved');
                });
                loadHRDashboard();
                alert(`Approved ${selectedClaims.length} claims successfully!`);
            }
        }

        function bulkRejectClaims() {
            const selectedClaims = getSelectedClaimIds();
            if (selectedClaims.length === 0) {
                alert('Please select at least one claim to reject.');
                return;
            }

            if (confirm(`Reject ${selectedClaims.length} selected claims?`)) {
                selectedClaims.forEach(claimId => {
                    updateClaimStatus(claimId, 'Rejected');
                });
                loadHRDashboard();
                alert(`Rejected ${selectedClaims.length} claims successfully!`);
            }
        }

        function getSelectedClaimIds() {
            const checkboxes = document.querySelectorAll('.claim-checkbox:checked');
            return Array.from(checkboxes).map(checkbox => parseInt(checkbox.value));
        }

        function approveClaim(claimId) {
            updateClaimStatus(claimId, 'Approved');
            loadHRDashboard();
        }

        function rejectClaim(claimId) {
            updateClaimStatus(claimId, 'Rejected');
            loadHRDashboard();
        }

        function updateClaimStatus(claimId, newStatus) {
            const claims = JSON.parse(localStorage.getItem('claims')) || [];
            const claimIndex = claims.findIndex(claim => claim.id === claimId || claim.ClaimId === claimId);

            if (claimIndex !== -1) {
                claims[claimIndex].status = newStatus;
                localStorage.setItem('claims', JSON.stringify(claims));
            }
        }

        function runAutoProcessing() {
            const daysThreshold = parseInt(document.getElementById('autoProcessDays').value);
            const amountThreshold = parseInt(document.getElementById('autoRules').value);

            const claims = JSON.parse(localStorage.getItem('claims')) || [];
            let processedCount = 0;

            claims.forEach(claim => {
                if (claim.status === 'Pending') {
                    const daysOld = Math.floor((new Date() - new Date(claim.submittedDate)) / (1000 * 60 * 60 * 24));

                    if (daysOld >= daysThreshold) {
                        if (amountThreshold > 0 && parseFloat(claim.totalAmount) <= amountThreshold) {
                            claim.status = 'Approved';
                            processedCount++;
                        }
                    }
                }
            });

            if (processedCount > 0) {
                localStorage.setItem('claims', JSON.stringify(claims));
                document.getElementById('autoProcessedCount').textContent = processedCount;
                loadHRDashboard();
                alert(`Auto-processed ${processedCount} claims successfully!`);
            } else {
                alert('No claims met the auto-processing criteria.');
            }
        }

        function exportToExcel() {
            alert('Excel export feature would download all filtered claims as an Excel file.');

        }

        // Initialize dashboard when page loads
        document.addEventListener('DOMContentLoaded', loadHRDashboard);
    </script>
</body>
</html>