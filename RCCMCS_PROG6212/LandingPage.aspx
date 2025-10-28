<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="RCCMCS_PROG6212._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" style="background-color: 32353A;" >

    <style>
        .next-btn {
            background-color: red;
            border: none;
            color: white;
            padding: 5px 8px;
            text-align: center;
            justify-content:center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            font-weight: 300;
            cursor: pointer;
            border-radius: 10px;
            width: 50%;
        }
        .next-btn a {
            color: white;
            text-decoration: none;
            
        }
       

    </style>
    <main>
        <section style="text-align:center; font-size: 20px; font-weight: 500; font-family:Arial, Helvetica, sans-serif; padding-top:80px; padding-bottom:50px;">
            <h1>CONTRACT MONTHLY CLAIM SYSTEM</h1>
        </section>

        <div class="row" style= "display:flex; justify-content:center; gap:20px; flex-wrap:nowrap; padding: 0px;">
            
            <section class="col-md-4" aria-labelledby="gettingStartedTitle" 
                style="padding:5px;
                       margin:2px;
                       border-radius:2px; 
                       border-radius:10px;
                       box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
                       font-size: 12px;
                       font-family: Arial, Helvetica, sans-serif">

               <section style="align-content:center; flex:auto; display:flex; justify-content:center; align-items:center; height:100px;">
                   <img src="Images/Icon1.png" alt="Lecturer Icon" style="display: block; width: 20%; " />
               </section>
                    
          
                <h2 id="gettingStartedTitle" style="text-align: center;">
                    TUTOR
                </h2>
                <p style="text-align: center;">
                    Submit Claims for hours worked or tasks completed,<br /> View claim status (Pending, Approved, Declined), <br />Edit/ Delete Claims
                </p>
                <button class="next-btn" >
                    <a href="Lecturer.aspx">NEXT &raquo;</a>
                </button>
            </section>
            


            <section class="col-md-4" aria-labelledby="librariesTitle" 
                style="padding:5px;
                       border-radius:2px; 
                       border-radius:10px;
                       box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
                       font-size: 12px;
                       font-family: Arial, Helvetica, sans-serif;">

                 <section style="align-content:center; flex:auto;  display:flex; justify-content:center; align-items:center; height:100px;">
                 <img src="Images/Icon2.png" alt="Lecturer Icon" style="display: block; width: 20%; " />
                 </section>

                <h2 id="librariesTitle" style="text-align: center;">
                    LECTURER
                </h2>
                <p style=" text-align: center;">
                   Submit Claims for hours worked or tasks completed,<br /> View claim status (Pending, Approved, Declined), <br />Edit/ Delete Claims
                </p>
                <button class="next-btn">
                    <a href="Lecturer.aspx">NEXT &raquo;</a>
                </button>
            </section>



            <section class="col-md-4" aria-labelledby="hostingTitle" 
                style="padding:5px;
                       margin:2px;
                       border-radius:2px; 
                       border-radius:10px;
                       box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
                       font-size: 12px;
                       font-family: Arial, Helvetica, sans-serif;">

                 <section style="align-content:center; flex:auto; display:flex; justify-content:center; align-items:center; height:100px;">
                  <img src="Images/Icon3.png" alt="Manager Icon" style="display: block; width: 20%;" />
                 </section>

                <h2 id="hostingTitle"  style="text-align: center;">
                    Manager/ Co-Ordinator
                </h2>

                <p style="text-align: center;">
                    Submit Claims for hours worked or tasks completed,<br /> View claim status (Pending, Approved, Declined), <br />Edit/ Delete Claims
                </p>
                <button  class="next-btn" >
                    <a href="Manager.aspx">NEXT &raquo;</a>
                </button>
            </section>
        </div>
    </main>

</asp:Content>
