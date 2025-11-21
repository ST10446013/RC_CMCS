<%@ Page Title="About Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RCCMCS_PROG6212.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .about-container {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            padding: 60px 20px;
        }

        .about-container h1 {
            font-size: 28px;
            font-weight: 600;
            color: #333;
            margin-bottom: 20px;
        }

        .about-container p {
            font-size: 16px;
            color: #555;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .info-boxes {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
            padding-top: 30px;
        }

        .info-box {
            width: 280px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            background-color: white;
            font-size: 14px;
        }

        .info-box img {
            width: 25%;
            margin-bottom: 15px;
        }

        .info-box h3 {
            margin-bottom: 10px;
            color: #d9534f;
        }
    </style>

    <main class="about-container">
        <h1>About the Contract Monthly Claim System</h1>
        <p>
            The <strong>Contract Monthly Claim System (CMCS)</strong> is a digital platform developed for 
            <strong>Rosebank College</strong> to simplify and manage the process of submitting and approving 
            monthly work claims. The system ensures that tutors, lecturers, and managers can efficiently 
            record, review, and track claim submissions in a transparent and organized way.
        </p>

        <p>
            The CMCS promotes better accountability, faster approvals, and reduced paperwork by 
            moving the entire claims process online. It helps Rosebank staff save time, maintain 
            accurate records, and improve communication between academic staff and management.
        </p>

        <div class="info-boxes">
            <div class="info-box">
                <img src="Images/Icon1.png" alt="Tutor Icon" />
                <h3>Tutors</h3>
                <p>Submit claims for hours worked and tasks completed. View approval status and manage submissions easily.</p>
            </div>

            <div class="info-box">
                <img src="Images/Icon2.png" alt="Lecturer Icon" />
                <h3>Lecturers</h3>
                <p>Access and review submitted claims. Approve or decline claims while maintaining fair oversight of staff work hours.</p>
            </div>

            <div class="info-box">
                <img src="Images/Icon3.png" alt="Manager Icon" />
                <h3>Managers</h3>
                <p>Oversee claim activity across departments and ensure all approved submissions align with institutional policy.</p>
            </div>
        </div>

        <p style="padding-top:40px;">
            <em>Developed by Software Development students at Rosebank College as part of an academic project 
            to enhance institutional efficiency and staff experience.</em>
        </p>
    </main>
</asp:Content>
