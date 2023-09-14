-- Create the database
CREATE DATABASE PetroCorpDB;
GO

-- Use the database
USE PetroCorpDB;
GO

-- Create the DrillingRigs table
CREATE TABLE DrillingRigs (
    RigID INT PRIMARY KEY,
    RigName NVARCHAR(50) NOT NULL
);
GO

-- Insert sample drilling rigs
INSERT INTO DrillingRigs (RigID, RigName)
VALUES
    (1, 'Rig A'),
    (2, 'Rig B');
GO

-- Create the DrillingData table
CREATE TABLE DrillingData (
    DataID INT PRIMARY KEY,
    RigID INT NOT NULL,
    [Date] DATE NOT NULL,
    DrilledDepth DECIMAL(10, 2) NOT NULL,
    DrillingSpeed DECIMAL(10, 2) NOT NULL,
    OperatingHours DECIMAL(10, 2) NOT NULL,
    DrillBitChanges INT NOT NULL
);
GO

-- Insert sample drilling data
INSERT INTO DrillingData (DataID, RigID, [Date], DrilledDepth, DrillingSpeed, OperatingHours, DrillBitChanges)
VALUES
    (1, 1, '2023-09-01', 100, 20, 10, 1),
    (2, 1, '2023-09-02', 200, 18, 12, 2),
    (3, 1, '2023-09-03', 300, 22, 9, 0),
    (4, 1, '2023-09-04', 400, 19, 11, 1),
    (5, 1, '2023-09-05', 500, 21, 8, 0),
    (6, 2, '2023-09-01', 150, 25, 9, 0),
    (7, 2, '2023-09-02', 250, 24, 10, 1),
    (8, 2, '2023-09-03', 350, 26, 8, 0),
    (9, 2, '2023-09-04', 450, 23, 11, 2),
    (10, 2, '2023-09-05', 550, 27, 7, 0);
GO
