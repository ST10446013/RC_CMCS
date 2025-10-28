-- Create the database
CREATE DATABASE RCCMCS;
GO

-- Use the database
USE RCCMCS;
GO

-- Users table: stores all system users
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Role NVARCHAR(50) NOT NULL -- e.g., Tutor, Lecturer, Manager
);
GO

-- Claims table: stores submitted claims
CREATE TABLE Claims (
    ClaimID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL FOREIGN KEY REFERENCES Users(UserID),
    ModuleCode NVARCHAR(50),
    ProgramCode NVARCHAR(50),
    ClaimDate DATE NOT NULL,
    TotalHours DECIMAL(5,2) NOT NULL,
    Rate DECIMAL(6,2) NOT NULL,
    TotalAmount AS (TotalHours * Rate) PERSISTED,
    Status NVARCHAR(20) DEFAULT 'Pending', -- Pending, Approved, Rejected
    SubmittedDate DATETIME DEFAULT GETDATE()
);
GO

-- Optional: Claim history or audit trail
CREATE TABLE ClaimHistory (
    HistoryID INT PRIMARY KEY IDENTITY(1,1),
    ClaimID INT NOT NULL FOREIGN KEY REFERENCES Claims(ClaimID),
    Status NVARCHAR(20),
    ChangedBy NVARCHAR(100),
    ChangeDate DATETIME DEFAULT GETDATE(),
    Notes NVARCHAR(255)
);
GO
