USE [ParonSoft]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeesListById]    Script Date: 2023-04-18 11:26:01 PM ******/
DROP PROCEDURE [dbo].[SP_GetEmployeesListById]
GO
/****** Object:  StoredProcedure [dbo].[SP_Employees_List]    Script Date: 2023-04-18 11:26:01 PM ******/
DROP PROCEDURE [dbo].[SP_Employees_List]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2023-04-18 11:26:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[CircleMapping]    Script Date: 2023-04-18 11:26:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CircleMapping]') AND type in (N'U'))
DROP TABLE [dbo].[CircleMapping]
GO
USE [master]
GO
/****** Object:  Database [ParonSoft]    Script Date: 2023-04-18 11:26:01 PM ******/
DROP DATABASE [ParonSoft]
GO
/****** Object:  Database [ParonSoft]    Script Date: 2023-04-18 11:26:01 PM ******/
CREATE DATABASE [ParonSoft]
GO
USE [ParonSoft]
GO
/****** Object:  Table [dbo].[CircleMapping]    Script Date: 2023-04-18 11:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CircleMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ManagerName] [varchar](100) NULL,
	[ManagerId] [int] NULL,
	[EmployeeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2023-04-18 11:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[JoinDate] [datetime] NULL,
	[Designation] [nvarchar](100) NULL,
	[Salary] [decimal](18, 2) NULL,
	[IsBonusAdded] [bit] NULL,
 CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CircleMapping] ON 
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (1, N'John', 1, NULL)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (2, N'Ron', 1, 2)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (3, N'Ron', 2, 2)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (4, N'Jack', 2, 14)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (5, N'Jane', 2, 15)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (6, N'Hun', 2, 16)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (7, N'Doe', 3, 3)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (8, N'Huma', 3, 5)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (9, N'Nicolas', 4, 4)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (10, N'Josh', 4, 8)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (11, N'Stardum', 4, 9)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (12, N'Huma', 5, 5)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (13, N'Joya', 5, 6)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (14, N'Jason', 5, 7)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (15, N'Josh', 6, 8)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (16, N'Umaer', 6, 10)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (17, N'Uzair', 6, 11)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (18, N'Stardum', 7, 9)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (19, N'Kate', 7, 12)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (20, N'Harish', 7, 13)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (21, N'Doe', 5, 3)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (22, N'Nicolas', 6, 4)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (23, N'Nicolas', 7, 4)
GO
INSERT [dbo].[CircleMapping] ([Id], [ManagerName], [ManagerId], [EmployeeId]) VALUES (25, N'John', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[CircleMapping] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (1, N'John', CAST(N'2010-01-01T00:00:00.000' AS DateTime), N'General Manager', CAST(500000.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (2, N'Ron', CAST(N'2011-02-02T00:00:00.000' AS DateTime), N'Manager', CAST(500000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (3, N'Doe', CAST(N'2009-04-04T00:00:00.000' AS DateTime), N'Director', CAST(700000.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (4, N'Nicolas', CAST(N'2012-05-05T00:00:00.000' AS DateTime), N'CTO', CAST(600000.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (5, N'Huma', CAST(N'2011-05-05T00:00:00.000' AS DateTime), N'HR Director', CAST(80000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (6, N'Joya', CAST(N'2011-07-10T00:00:00.000' AS DateTime), N'HR Executive', CAST(30000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (7, N'Jason', CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'HR Executive', CAST(30000.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (8, N'Josh', CAST(N'2012-01-10T00:00:00.000' AS DateTime), N'Team Lead', CAST(40000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (9, N'Stardum', CAST(N'2010-01-02T00:00:00.000' AS DateTime), N'Team Lead', CAST(40000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (10, N'Umaer', CAST(N'2010-02-01T00:00:00.000' AS DateTime), N'Senior Software Engineer', CAST(30000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (11, N'Uzair', CAST(N'2010-01-03T00:00:00.000' AS DateTime), N'Senior Software Egineer', CAST(30000.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (12, N'Kate', CAST(N'2010-01-10T00:00:00.000' AS DateTime), N'Engineer', CAST(20000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (13, N'Harish', CAST(N'2010-10-10T00:00:00.000' AS DateTime), N'Engineer', CAST(20000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (14, N'Jack', CAST(N'2014-10-10T00:00:00.000' AS DateTime), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 0)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (15, N'Jane', CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[Employee] ([Id], [Name], [JoinDate], [Designation], [Salary], [IsBonusAdded]) VALUES (16, N'Hun', CAST(N'2009-10-10T00:00:00.000' AS DateTime), N'Office Executive', CAST(15000.00 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_Employees_List]    Script Date: 2023-04-18 11:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--	 SP_Employees_List

CREATE PROCEDURE [dbo].[SP_Employees_List]  
AS
BEGIN	

	 SELECT Id,Name,FORMAT(JoinDate ,'dd-MM-yyyy')JoinDate,Designation,Salary,IsBonusAdded
	 FROM Employee	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeesListById]    Script Date: 2023-04-18 11:26:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--	 SP_GetEmployeesListById 16

CREATE PROCEDURE [dbo].[SP_GetEmployeesListById]  
(
 @Id int
)
AS
BEGIN	

DECLARE @Ids int;

	SET @Ids = (SELECT TOP 1 ManagerId FROM CircleMapping WHERE EmployeeId = @Id);


		CREATE TABLE #Temp 
		(
			Id INT IDENTITY(1,1),
			IID int,
		);

		INSERT INTO #Temp(IID)
		SELECT EmployeeId FROM CircleMapping WHERE ManagerId = @Ids;			
	

		 WITH LEEP_YEARP AS
		(
			SELECT IIF(DAY(EOMONTH(DATEFROMPARTS(YEAR(GETDATE()),2,1))) = 29,1,0) IS_LP
		),
		Managers AS
		(
			SELECT 
				CM.ManagerId, CM.EmployeeId, CM.ManagerName, e.JoinDate
			FROM Employee E
			INNER JOIN CircleMapping CM ON E.Id = CM.EmployeeId
			WHERE cm.ManagerId = e.Id
		)

		SELECT DISTINCT
		E.Id,E.Name,FORMAT(E.JoinDate,'dd-MM-yyyy')JoinDate,E.Designation,

		CASE WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 1 AND DATEDIFF(year, E.JoinDate, GETDATE()) >= 4 AND E.JoinDate < M.JoinDate) AND E.Id=@Id THEN E.Salary + 12000 				
		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 1 AND DATEDIFF(year, E.JoinDate, GETDATE()) >= 4) THEN E.Salary + 10000
		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 0 AND DATEDIFF(year, E.JoinDate, GETDATE()) >= 4 AND E.JoinDate <= M.JoinDate) AND E.Id=@Id THEN E.Salary + 9000 
		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 0 AND DATEDIFF(year, E.JoinDate, GETDATE()) >= 4 AND E.JoinDate < M.JoinDate) THEN E.Salary + 8000 

		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 1 AND DATEDIFF(year, E.JoinDate, GETDATE()) < 4 AND E.JoinDate < M.JoinDate) AND E.Id=@Id THEN E.Salary + 6000 				
		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 1 AND DATEDIFF(year, E.JoinDate, GETDATE()) < 4) THEN E.Salary + 5000
		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 0 AND DATEDIFF(year, E.JoinDate, GETDATE()) < 4 AND E.JoinDate <= M.JoinDate) AND E.Id=@Id THEN E.Salary + 3500 
		WHEN (E.IsBonusAdded = 1 AND LP.IS_LP = 0 AND DATEDIFF(year, E.JoinDate, GETDATE()) < 4 AND E.JoinDate < M.JoinDate) THEN E.Salary + 3000

		ELSE E.Salary END Salary

		FROM Employee E, Managers M, LEEP_YEARP LP
		WHERE E.Id IN (SELECT IID FROM #Temp);

END

--	 SP_GetEmployeesListById 16


