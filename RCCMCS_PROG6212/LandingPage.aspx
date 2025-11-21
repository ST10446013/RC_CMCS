<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="RCCMCS_PROG6212._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" style="background-color: #32353A;">

    <style>
        main{
            height:1000px;
        }

        .next-btn {
            background-color: red;
            border: none;
            color: white;
            padding: 5px 8px;
            text-align: center;
            justify-content: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            font-weight: 300;
            cursor: pointer;
            border-radius: 10px;
            width: 50%;
            transition: background-color 0.3s ease;
        }

        .next-btn:hover {
            background-color: darkred;
        }

        .next-btn a {
            color: white;
            text-decoration: none;
        }

        
        .card-section {
            padding: 5px;
            margin: 2px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            font-size: 12px;
            font-family: Arial, Helvetica, sans-serif;
            background-color: white;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        
        .card-section:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.25);
        }

        .icon-wrapper {
            align-content: center;
            flex: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100px;
        }

        .icon-wrapper img {
            display: block;
            width: 20%;
        }

        h1 {
            color: black;
            text-align:center; 
            font-size: 40px; 
            font-weight: bold; 
            font-family:Arial, Helvetica, sans-serif; 
            padding-top:80px; 
            padding-bottom:50px;
        }
    </style>

    <main>
        <section ey>
            <h1>CONTRACT MONTHLY CLAIM SYSTEM</h1>
        </section>

        <div class="row" style="display:flex; justify-content:center; gap:20px; flex-wrap:nowrap; padding:0;">
            
           
            <section class="col-md-4 card-section" aria-labelledby="gettingStartedTitle">
                <div class="icon-wrapper">
                    <img src="Images/Icon1.png" alt="Tutor Icon" />
                </div>
                <h2 id="gettingStartedTitle" style="text-align: center;">TUTOR</h2>
                <p style="text-align: center;">
                    Submit Claims for hours worked or tasks completed,<br />
                    View claim status (Pending, Approved, Declined), <br />
                    Edit/ Delete Claims
                </p>
                <button class="next-btn">
                    <a href="Tutor.aspx">NEXT &raquo;</a>
                </button>
            </section>

            
            <section class="col-md-4 card-section" aria-labelledby="librariesTitle">
                <div class="icon-wrapper">
                    <img src="Images/Icon2.png" alt="Lecturer Icon" />
                </div>
                <h2 id="librariesTitle" style="text-align: center;">LECTURER</h2>
                <p style="text-align: center;">
                    Submit Claims for hours worked or tasks completed,<br />
                    View claim status (Pending, Approved, Declined), <br />
                    Edit/ Delete Claims
                </p>
                <button class="next-btn">
                    <a href="Lecturer.aspx">NEXT &raquo;</a>
                </button>
            </section>

            
            <section class="col-md-4 card-section" aria-labelledby="hostingTitle">
                <div class="icon-wrapper">
                    <img src="Images/Icon3.png" alt="Manager Icon" />
                </div>
                <h2 id="hostingTitle" style="text-align: center;">MANAGER/ CO-ORDINATOR</h2>
                <p style="text-align: center;">
                    Submit Claims for hours worked or tasks completed,<br />
                    View claim status (Pending, Approved, Declined), <br />
                    Edit/ Delete Claims
                </p>
                <button class="next-btn">
                    <a href="Manager.aspx">NEXT &raquo;</a>
                </button>
            </section>

        </div>
    </main>

</asp:Content>
