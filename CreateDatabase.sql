CREATE DATABASE VehicleDatabase;
GO

-- Table: Makes
CREATE TABLE Makes (
    MakeID INT PRIMARY KEY,
    Make NVARCHAR(100) NOT NULL
);

-- Table: MakeModels
CREATE TABLE MakeModels (
    ModelID INT PRIMARY KEY,
    MakeID INT FOREIGN KEY REFERENCES Makes(MakeID),
    ModelName NVARCHAR(100) NOT NULL
);

-- Table: SubModels
CREATE TABLE SubModels (
    SubModelID INT PRIMARY KEY,
    ModelID INT FOREIGN KEY REFERENCES MakeModels(ModelID),
    SubModelName NVARCHAR(100) NOT NULL
);

-- Table: Bodies
CREATE TABLE Bodies (
    BodyID INT PRIMARY KEY,
    BodyName NVARCHAR(100) NOT NULL
);

-- Table: DriveTypes
CREATE TABLE DriveTypes (
    DriveTypeID INT PRIMARY KEY,
    DriveTypeName NVARCHAR(100) NOT NULL
);

-- Table: FuelTypes
CREATE TABLE FuelTypes (
    FuelTypeID INT PRIMARY KEY,
    FuelTypeName NVARCHAR(100) NOT NULL
);

-- Table: VehicleDetails
CREATE TABLE VehicleDetails (
    ID INT PRIMARY KEY,
    MakeID INT FOREIGN KEY REFERENCES Makes(MakeID),
    ModelID INT FOREIGN KEY REFERENCES MakeModels(ModelID),
    SubModelID INT FOREIGN KEY REFERENCES SubModels(SubModelID),
    BodyID INT FOREIGN KEY REFERENCES Bodies(BodyID),
    Vehicle_Display_Name NVARCHAR(200) NOT NULL,
    Year INT NOT NULL,
    DriveTypeID INT FOREIGN KEY REFERENCES DriveTypes(DriveTypeID),
    Engine NVARCHAR(100),
    Engine_CC INT,
    Engine_Cylinders INT,
    Engine_Liter_Display DECIMAL(10, 2),
    FuelTypeID INT FOREIGN KEY REFERENCES FuelTypes(FuelTypeID),
    NumDoors INT
);
GO
