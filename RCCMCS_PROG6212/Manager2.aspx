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
            margin-top: 40px;
            padding-left: 10px;
            padding-right:5px;
            border-radius:8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            height: 160px;
            width: 100%;
            font-size:14px;
        }

        .summary-claims-table{
            width: 100%;
        }

        .summary-claims-table th{
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

      
       .summary-claims-table button{
            width:70%;
            height: 30px;
            font-weight:400;
            border-style: none;
            border-radius:4px;
            

       }

       .approve-btn{
           color:white;
           background-color: green;
           transition: background-color 0.3s;
       }

        .reject-btn{
             color:white;
             background-color: red;
             transition: background-color 0.3s;
         }
      
         
    </style>
</head>

        <body>
            <form id="form2" runat="server">
                <div class="side-Navigation-bar">
                      <a href="LandingPage.aspx" style="padding: 10px; transition:none;"><img src="Images/logo.png" alt="Icon" style="width:120px; height:50px;" /></a>
                      <a href="Manager.aspx" style="border:none; font-weight:bold;">Mrs Khumalo</a>
                      <a href="Lecturer.aspx" >Manager</a>
                      <div class="dashboard-items">
                          <br />
                          <a href="Lecturer.aspx" style="font-weight:bold; ">Dashboard</a>
                          <a href="Manager.aspx" style="border-bottom: none;">Recent Claims</a>
                          <a href="Manager2.aspx" style="border-bottom: none;">Verify Claims</a>
                          <a href="Contact.aspx" >Manager Details</a>
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
                    <section class="claim-summary">
                         <table class="summary-claims-table">
                             <thead>
                                 <tr>
                                     <th style="text-align:left;">Khanyi Mkhonza</th>
                                     <th></th>
                                     <th>Total</th>
                                     <th>22/01/2025</th>
                                 </tr>
                                 
                             </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="4" style="width:150px; ">
                                        <img src="Images/attach.png" style="width:120px; border-style:solid; border-width:1px; border-color: black; background-color: grey;"/>
                                    </td>
                                    <td>Module Code: PROG6121</td>
                                    <td></td>
                                    <td></td>
                                </tr> 
                                <tr>
                                    <td>Claim type:</td>
                                    <td></td>
                                   <td rowspan="3" style="vertical-align: top; padding-top:20px;">
                                    <div style="display: flex; flex-direction: column; gap: 10px; align-items:center;">
                                        <button class="approve-btn">Approve</button>
                                        <button class="reject-btn">Reject</button>
                                    </div>
                                </td>
                                </tr>     
                                <tr>
                                    
                                    <td>Hours worked:</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Hourly Rate:</td>
                                    <td style="text-align:center;">R12 000</td>
                                    
                                </tr>
                            </tbody>
                             
                          </table>
                    </section>


                        <section class="claim-summary" style="margin-top:30px;">
                             <table class="summary-claims-table">
                                 <thead>
                                     <tr>
                                         <th style="text-align:left;">Khanyi Mkhonza</th>
                                         <th></th>
                                         <th>Total</th>
                                         <th>22/01/2025</th>
                                     </tr>
                                 </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="4" style="width:150px;">
                                            <img src="Images/attach.png" style="width:120px; border-style:solid; border-width:1px; border-color: black; background-color: grey;"/>
                                        </td>
                                        <td>Module Code: PROG6121</td>
                                        <td></td>
                                        <td></td>
                                    </tr> 
                                    <tr>
                                        <td>Claim type:</td>
                                        <td></td>
                                       <td rowspan="3" style="vertical-align: top; padding-top:20px;">
                                        <div style="display: flex; flex-direction: column; gap: 10px; align-items:center;">
                                            <button class="approve-btn">Approve</button>
                                            <button class="reject-btn">Reject</button>
                                        </div>
                                    </td>
                                    </tr>     
                                    <tr>
                
                                        <td>Hours worked:</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Hourly Rate:</td>
                                        <td style="text-align:center;">R12 000</td>
                
                                    </tr>
                                </tbody>
         
                              </table>
                        </section>

                    <section class="claim-summary" style="margin-top:30px;">
                         <table class="summary-claims-table">
                             <thead>
                                 <tr>
                                     <th style="text-align:left;">Khanyi Mkhonza</th>
                                     <th></th>
                                     <th>Total</th>
                                     <th>22/01/2025</th>
                                 </tr>
             
                             </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="4" style="width:150px; ">
                                        <img src="Images/attach.png" style="width:120px; border-style:solid; border-width:1px; border-color: black; background-color: grey;"/>
                                    </td>
                                    <td>Module Code: PROG6121</td>
                                    <td></td>
                                    <td></td>
                                </tr> 
                                <tr>
                                    <td>Claim type:</td>
                                    <td></td>
                                   <td rowspan="3" style="vertical-align: top; padding-top:20px;">
                                    <div style="display: flex; flex-direction: column; gap: 10px; align-items:center;">
                                        <button class="approve-btn">Approve</button>
                                        <button class="reject-btn">Reject</button>
                                    </div>
                                </td>
                                </tr>     
                                <tr>
                
                                    <td>Hours worked:</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>Hourly Rate:</td>
                                    <td style="text-align:center;">R12 000</td>
                
                                </tr>
                            </tbody>
         
                          </table>
                    </section>


                </div>
            </form>
            <script>
                document.addEventListener('DOMContentLoaded', function() {
                    const claims = JSON.parse(localStorage.getItem('claims')) || [];
                    const container = document.querySelector('.main-content');
                    container.innerHTML = ''; // clear the static claims

                    claims.forEach(claim => {
                        const section = document.createElement('section');
                        section.className = 'claim-summary';
                        section.innerHTML = `
                            <table class="summary-claims-table">
                                <thead>
                                    <tr>
                                        <th style="text-align:left;">${claim.moduleCode}</th>
                                        <th></th>
                                        <th>Total</th>
                                        <th>${claim.date}</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="4" style="width:150px;">
                                            ${claim.fileData 
                                                ? `<img src="${claim.fileData}" onclick="showPreview('${claim.fileData}')" 
                                                        style="width:120px; border:1px solid #000; cursor:pointer;" />`
                                                : `<img src="Images/attach.png" style="width:120px; border:1px solid #000;" />`}
                                        </td>
                                        <td>Phase: ${claim.phaseTask}</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>Hours worked: ${claim.totalHours}</td>
                                        <td></td>
                                        <td rowspan="3" style="vertical-align: top; padding-top:20px;">
                                            <div style="display:flex; flex-direction:column; gap:10px; align-items:center;">
                                                <button class="approve-btn">Approve</button>
                                                <button class="reject-btn">Reject</button>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Hourly Rate:</td>
                                        <td>R ${claim.rate}</td>
                                    </tr>
                                    <tr>
                                        <td>Total Amount:</td>
                                        <td>R ${claim.totalAmount}</td>
                                    </tr>
                                </tbody>
                            </table>
                        `;
                        container.appendChild(section);
                    });
                });
            </script>
            <div id="previewModal" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%;
                background-color:rgba(0,0,0,0.6); justify-content:center; align-items:center;">
              <div style="background:white; padding:20px; border-radius:8px; max-width:80%; max-height:80%;">
                <button onclick="closePreview()" style="float:right;">Close</button>
                <iframe id="previewFrame" style="width:100%; height:500px; border:none;"></iframe>
              </div>
            </div>

            <script>
                function showPreview(fileData) {
                    const modal = document.getElementById('previewModal');
                    const frame = document.getElementById('previewFrame');
                    frame.src = fileData;
                    modal.style.display = 'flex';
                }

                function closePreview() {
                    document.getElementById('previewModal').style.display = 'none';
                    document.getElementById('previewFrame').src = '';
                }
            </script>


        </body>
</html>
                            