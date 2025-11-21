<!DOCTYPE html>
<html>
<head runat="server">
    <title>HR Reports & Analytics</title>
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

        /* REPORTS PAGE STYLES */
        .section {
            background: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            margin-bottom: 15px;
            margin-top: 70px;
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
            min-width: 120px;
        }

        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 11px;
            height: 30px;
        }

        .btn-primary { background: #2196f3; color: white; }
        .btn-success { background: #4caf50; color: white; }
        .btn-secondary { background: #ff9800; color: white; }

        /* Report Cards */
        .report-cards {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
            margin-bottom: 20px;
        }

        .report-card {
            background: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            text-align: center;
            border-left: 4px solid #2196f3;
        }

        .report-card.total { border-left-color: #2196f3; }
        .report-card.approved { border-left-color: #4caf50; }
        .report-card.pending { border-left-color: #ff9800; }
        .report-card.rejected { border-left-color: #f44336; }

        .report-card h3 {
            margin: 0 0 8px 0;
            color: #32353A;
            font-size: 12px;
        }

        .report-card .number {
            font-size: 20px;
            font-weight: bold;
            color: #32353A;
        }

        .report-card .detail {
            font-size: 11px;
            color: #666;
            margin-top: 5px;
        }

        /* Reports Table */
        .reports-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 11px;
            margin-top: 10px;
        }

        .reports-table th {
            background-color: #32353A;
            color: white;
            padding: 10px 6px;
            text-align: left;
            font-weight: bold;
        }

        .reports-table td {
            padding: 8px 6px;
            border-bottom: 1px solid #ddd;
        }

        .reports-table tr:hover {
            background-color: #f5f5f5;
        }

        .status-pending { color: #ff9800; font-weight: bold; }
        .status-approved { color: #4caf50; font-weight: bold; }
        .status-rejected { color: #f44336; font-weight: bold; }

        .no-data {
            text-align: center;
            color: #666;
            font-style: italic;
            padding: 20px;
        }

        .export-section {
            background: #f8f9fa;
            padding: 12px;
            border-radius: 6px;
            margin-top: 15px;
            text-align: center;
        }

        .chart-container {
            background: white;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            margin-bottom: 15px;
            height: 300px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .chart-placeholder {
            width: 100%;
            height: 100%;
            background: #f8f9fa;
            border: 2px dashed #ddd;
            border-radius: 4px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #666;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
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
                <a href="Report.aspx" style="background-color: #e9ecef;">Reports & Analytics</a>
            </div>
            <br />
            <br />
            <a href="Settings.aspx" style="font-weight:bold;">Settings</a>
        </div>

        <div class="header-strip">
             <p>HR REPORTS & ANALYTICS</p>
             <img src="/Images/notifications.png" alt="Notifications" />
        </div>

        <div class="main-content">
            <!-- Report Filters Section -->
            <div class="section">
                <h2>REPORT FILTERS</h2>
                <div class="filters">
                    <div class="filter-group">
                        <label>DATE RANGE</label>
                        <select id="dateRange">
                            <option value="last-month">Last Month</option>
                            <option value="last-quarter">Last Quarter</option>
                            <option value="last-year">Last Year</option>
                            <option value="custom">Custom Range</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label>START DATE</label>
                        <input type="date" id="startDate" value="2023-11-01">
                    </div>
                    <div class="filter-group">
                        <label>END DATE</label>
                        <input type="date" id="endDate" value="2023-11-30">
                    </div>
                    <div class="filter-group">
                        <label>DEPARTMENT</label>
                        <select id="department">
                            <option value="all">All Departments</option>
                            <option value="lecturer">Lecturer</option>
                            <option value="manager">Manager/Co-Ordinator</option>
                            <option value="contract">Contract</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label>STATUS</label>
                        <select id="status">
                            <option value="all">All Statuses</option>
                            <option value="approved">Approved</option>
                            <option value="pending">Pending</option>
                            <option value="rejected">Rejected</option>
                        </select>
                    </div>
                    <div class="filter-group" style="justify-content: flex-end;">
                        <label>&nbsp;</label>
                        <button class="btn btn-primary" onclick="generateReport()">GENERATE REPORT</button>
                    </div>
                    <div class="filter-group" style="justify-content: flex-end;">
                        <label>&nbsp;</label>
                        <button class="btn btn-secondary" onclick="resetFilters()">RESET FILTERS</button>
                    </div>
                </div>
            </div>

            <!-- Summary Statistics -->
            <div class="report-cards">
                <div class="report-card total">
                    <h3>TOTAL CLAIMS</h3>
                    <div class="number" id="reportTotalClaims">0</div>
                    <div class="detail" id="reportTotalDetail">All departments</div>
                </div>
                <div class="report-card approved">
                    <h3>APPROVED</h3>
                    <div class="number" id="reportApprovedClaims">0</div>
                    <div class="detail" id="reportApprovedDetail">0% of total</div>
                </div>
                <div class="report-card pending">
                    <h3>PENDING</h3>
                    <div class="number" id="reportPendingClaims">0</div>
                    <div class="detail" id="reportPendingDetail">0% of total</div>
                </div>
                <div class="report-card rejected">
                    <h3>REJECTED</h3>
                    <div class="number" id="reportRejectedClaims">0</div>
                    <div class="detail" id="reportRejectedDetail">0% of total</div>
                </div>
            </div>

            <!-- Charts Section -->
            <div class="section">
                <h2>CLAIMS ANALYTICS</h2>
                <div class="chart-container">
                    <div class="chart-placeholder">
                        Claims Trend Chart (Monthly Overview)
                    </div>
                </div>
                <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px;">
                    <div class="chart-container">
                        <div class="chart-placeholder">
                            Status Distribution Pie Chart
                        </div>
                    </div>
                    <div class="chart-container">
                        <div class="chart-placeholder">
                            Department Comparison Chart
                        </div>
                    </div>
                </div>
            </div>

            <!-- Detailed Report Table -->
            <div class="section">
                <h2>DETAILED CLAIM REPORT</h2>
                <div class="filters">
                    <div class="filter-group">
                        <label>SORT BY</label>
                        <select id="sortBy" onchange="sortReportTable()">
                            <option value="date">Date (Newest First)</option>
                            <option value="amount">Amount (Highest First)</option>
                            <option value="name">Lecturer Name</option>
                        </select>
                    </div>
                    <div class="filter-group" style="justify-content: flex-end;">
                        <label>&nbsp;</label>
                        <button class="btn btn-success" onclick="exportToPDF()">EXPORT TO PDF</button>
                    </div>
                    <div class="filter-group" style="justify-content: flex-end;">
                        <label>&nbsp;</label>
                        <button class="btn btn-success" onclick="exportToExcel()">EXPORT TO EXCEL</button>
                    </div>
                </div>
                
                <div id="reportContainer">
                    <table class="reports-table" id="reportTable">
                        <thead>
                            <tr>
                                <th>CLAIM ID</th>
                                <th>LECTURER</th>
                                <th>DEPARTMENT</th>
                                <th>SUBMIT DATE</th>
                                <th>HOURS</th>
                                <th>AMOUNT</th>
                                <th>STATUS</th>
                                <th>MODULE</th>
                                <th>DAYS OPEN</th>
                            </tr>
                        </thead>
                        <tbody id="reportTableBody">
                            <!-- Report data will be loaded here -->
                        </tbody>
                    </table>
                    <div class="no-data" id="noReportData">No data available for selected filters</div>
                </div>

                <div class="export-section">
                    <p>Need this report in a different format?</p>
                    <button class="btn btn-success" onclick="exportToPDF()">Download PDF Report</button>
                    <button class="btn btn-success" onclick="exportToExcel()">Download Excel Data</button>
                </div>
            </div>
        </div>
    </form>

    <script>
        let reportData = [];
        let filteredReportData = [];

        function loadReportsPage() {
            loadReportData();
            generateReport();
            setupDateRangeListener();
        }

        function loadReportData() {
            const claims = JSON.parse(localStorage.getItem('claims')) || [];
            reportData = claims.map(claim => ({
                id: claim.id || claim.ClaimId,
                employeeName: claim.employeeName || claim.EmployeeName || 'Unknown',
                department: claim.department || 'lecturer',
                submitDate: claim.submittedDate || claim.submitDate,
                totalHours: claim.totalHours || claim.TotalHours,
                totalAmount: parseFloat(claim.totalAmount || claim.TotalAmount),
                status: claim.status,
                moduleCode: claim.moduleCode || claim.ModuleCode,
                claimDate: claim.claimDate || claim.date
            }));
        }

        function generateReport() {
            const dateRange = document.getElementById('dateRange').value;
            const startDate = document.getElementById('startDate').value;
            const endDate = document.getElementById('endDate').value;
            const department = document.getElementById('department').value;
            const status = document.getElementById('status').value;

            // Filter data based on selections
            filteredReportData = reportData.filter(claim => {
                // Date filtering
                const claimDate = new Date(claim.submitDate);
                let dateMatch = true;
                
                if (dateRange === 'custom') {
                    const filterStart = new Date(startDate);
                    const filterEnd = new Date(endDate);
                    dateMatch = claimDate >= filterStart && claimDate <= filterEnd;
                } else {
                    // Simplified date range logic for demo
                    const now = new Date();
                    let rangeStart = new Date();
                    
                    switch(dateRange) {
                        case 'last-month':
                            rangeStart.setMonth(now.getMonth() - 1);
                            break;
                        case 'last-quarter':
                            rangeStart.setMonth(now.getMonth() - 3);
                            break;
                        case 'last-year':
                            rangeStart.setFullYear(now.getFullYear() - 1);
                            break;
                    }
                    dateMatch = claimDate >= rangeStart;
                }

                // Department filtering
                const deptMatch = department === 'all' || claim.department === department;
                
                // Status filtering
                const statusMatch = status === 'all' || claim.status.toLowerCase() === status.toLowerCase();

                return dateMatch && deptMatch && statusMatch;
            });

            updateReportStats();
            renderReportTable();
        }

        function updateReportStats() {
            const total = filteredReportData.length;
            const approved = filteredReportData.filter(c => c.status === 'Approved').length;
            const pending = filteredReportData.filter(c => c.status === 'Pending').length;
            const rejected = filteredReportData.filter(c => c.status === 'Rejected').length;

            const approvedPercent = total > 0 ? ((approved / total) * 100).toFixed(1) : 0;
            const pendingPercent = total > 0 ? ((pending / total) * 100).toFixed(1) : 0;
            const rejectedPercent = total > 0 ? ((rejected / total) * 100).toFixed(1) : 0;

            document.getElementById('reportTotalClaims').textContent = total;
            document.getElementById('reportApprovedClaims').textContent = approved;
            document.getElementById('reportPendingClaims').textContent = pending;
            document.getElementById('reportRejectedClaims').textContent = rejected;

            document.getElementById('reportApprovedDetail').textContent = `${approvedPercent}% of total`;
            document.getElementById('reportPendingDetail').textContent = `${pendingPercent}% of total`;
            document.getElementById('reportRejectedDetail').textContent = `${rejectedPercent}% of total`;
        }

        function renderReportTable() {
            const tbody = document.getElementById('reportTableBody');
            const noDataMessage = document.getElementById('noReportData');
            
            if (filteredReportData.length === 0) {
                tbody.innerHTML = '';
                noDataMessage.style.display = 'block';
                return;
            }
            
            noDataMessage.style.display = 'none';
            
            let tableHTML = '';
            filteredReportData.forEach(claim => {
                const daysOpen = Math.floor((new Date() - new Date(claim.submitDate)) / (1000 * 60 * 60 * 24));
                const statusClass = `status-${claim.status.toLowerCase()}`;
                
                tableHTML += `
                    <tr>
                        <td>#${claim.id}</td>
                        <td>${claim.employeeName}</td>
                        <td>${claim.department.charAt(0).toUpperCase() + claim.department.slice(1)}</td>
                        <td>${new Date(claim.submitDate).toLocaleDateString()}</td>
                        <td>${claim.totalHours}</td>
                        <td>R ${claim.totalAmount.toFixed(2)}</td>
                        <td class="${statusClass}">${claim.status}</td>
                        <td>${claim.moduleCode}</td>
                        <td>${daysOpen}</td>
                    </tr>
                `;
            });
            
            tbody.innerHTML = tableHTML;
        }

        function sortReportTable() {
            const sortBy = document.getElementById('sortBy').value;
            
            filteredReportData.sort((a, b) => {
                switch(sortBy) {
                    case 'date':
                        return new Date(b.submitDate) - new Date(a.submitDate);
                    case 'amount':
                        return b.totalAmount - a.totalAmount;
                    case 'name':
                        return a.employeeName.localeCompare(b.employeeName);
                    default:
                        return 0;
                }
            });
            
            renderReportTable();
        }

        function resetFilters() {
            document.getElementById('dateRange').value = 'last-month';
            document.getElementById('department').value = 'all';
            document.getElementById('status').value = 'all';
            document.getElementById('sortBy').value = 'date';
            generateReport();
        }

        function setupDateRangeListener() {
            document.getElementById('dateRange').addEventListener('change', function() {
                const customDates = document.querySelectorAll('input[type="date"]');
                if (this.value === 'custom') {
                    customDates.forEach(input => input.style.display = 'block');
                } else {
                    customDates.forEach(input => input.style.display = 'none');
                }
            });
        }

        function exportToPDF() {
            alert('PDF report generation started... This would download a comprehensive PDF report.');
            // In real implementation, this would call a backend service to generate PDF
        }

        function exportToExcel() {
            alert('Excel export started... This would download an Excel file with all report data.');
            // In real implementation, this would call a backend service to generate Excel
        }

        // Initialize reports page when loaded
        document.addEventListener('DOMContentLoaded', loadReportsPage);
    </script>
</body>
</html>