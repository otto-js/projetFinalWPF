USE [master]
GO
/****** Object:  Database [Hopital]    Script Date: 08/12/2020 00:01:04 ******/
CREATE DATABASE [Hopital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hopital', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Hopital.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hopital_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Hopital_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hopital] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hopital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hopital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hopital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hopital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hopital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hopital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hopital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hopital] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Hopital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hopital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hopital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hopital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hopital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hopital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hopital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hopital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hopital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hopital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hopital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hopital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hopital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hopital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hopital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hopital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hopital] SET RECOVERY FULL 
GO
ALTER DATABASE [Hopital] SET  MULTI_USER 
GO
ALTER DATABASE [Hopital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hopital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hopital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hopital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hopital', N'ON'
GO
USE [Hopital]
GO
/****** Object:  Table [dbo].[Admission]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[IDAdmission] [int] IDENTITY(1,1) NOT NULL,
	[chirurgieProgrammee] [bit] NOT NULL,
	[dateAdmission] [date] NOT NULL,
	[dateChirurgie] [date] NULL,
	[dateConge] [date] NULL,
	[televiseur] [bit] NOT NULL,
	[telephone] [bit] NOT NULL,
	[NSS] [nchar](9) NOT NULL,
	[numeroLit] [nchar](6) NOT NULL,
	[IDMedecin] [int] NOT NULL,
 CONSTRAINT [PK_Admission] PRIMARY KEY CLUSTERED 
(
	[IDAdmission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Assurance]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assurance](
	[IDAssurance] [int] IDENTITY(1,1) NOT NULL,
	[nomCompagnie] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Assurance] PRIMARY KEY CLUSTERED 
(
	[IDAssurance] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departement]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departement](
	[IDDepartement] [int] IDENTITY(1,1) NOT NULL,
	[nomDepartement] [nchar](25) NULL,
 CONSTRAINT [PK_Departement] PRIMARY KEY CLUSTERED 
(
	[IDDepartement] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lit]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lit](
	[numeroLit] [nchar](6) NOT NULL,
	[occupe] [bit] NOT NULL,
	[IDType] [int] NOT NULL,
	[IDDepartement] [int] NOT NULL,
 CONSTRAINT [PK_Lit] PRIMARY KEY CLUSTERED 
(
	[numeroLit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Medecin]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medecin](
	[IDMedecin] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nchar](25) NOT NULL,
	[prenom] [nchar](25) NOT NULL,
 CONSTRAINT [PK_Medecin] PRIMARY KEY CLUSTERED 
(
	[IDMedecin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patient]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[NSS] [nchar](9) NOT NULL,
	[dateNaissance] [date] NOT NULL,
	[nom] [nchar](25) NOT NULL,
	[prenom] [nchar](25) NOT NULL,
	[adresse] [nchar](50) NOT NULL,
	[ville] [nchar](25) NOT NULL,
	[province] [nchar](2) NOT NULL,
	[codePostal] [nchar](6) NOT NULL,
	[telephone] [nchar](12) NOT NULL,
	[IDAssurance] [int] NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[NSS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeLit]    Script Date: 08/12/2020 00:01:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeLit](
	[IDtype] [int] IDENTITY(1,1) NOT NULL,
	[description] [nchar](10) NOT NULL,
 CONSTRAINT [PK_TypeLit] PRIMARY KEY CLUSTERED 
(
	[IDtype] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admission] ON 

INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (2, 1, CAST(N'2020-10-29' AS Date), NULL, CAST(N'2020-12-01' AS Date), 0, 0, N'123456789', N'7     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (6, 0, CAST(N'2019-12-08' AS Date), NULL, CAST(N'2020-12-06' AS Date), 1, 1, N'321654987', N'2     ', 5)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (10, 0, CAST(N'2020-11-01' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 1, N'312312312', N'4     ', 7)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (11, 0, CAST(N'2020-10-01' AS Date), NULL, CAST(N'2020-10-15' AS Date), 0, 0, N'312312312', N'4     ', 7)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1009, 0, CAST(N'2020-12-02' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1010, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1011, 0, CAST(N'2020-12-07' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1012, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 0, N'123129887', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1013, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-07' AS Date), 0, 0, N'123123123', N'10    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1014, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-07' AS Date), 0, 0, N'123123128', N'3     ', 20)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1015, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-07' AS Date), 0, 0, N'123123129', N'12    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1016, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1017, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-06' AS Date), 0, 0, N'123123123', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1018, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-07' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1019, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-07' AS Date), 0, 0, N'123123123', N'3     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1020, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-08' AS Date), 0, 0, N'123123128', N'2     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1021, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-08' AS Date), 0, 0, N'123123129', N'12    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1022, 0, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-08' AS Date), 0, 0, N'123123312', N'16    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1023, 1, CAST(N'2020-12-06' AS Date), CAST(N'2020-12-08' AS Date), CAST(N'2020-12-08' AS Date), 1, 1, N'756756757', N'10    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1024, 1, CAST(N'2020-12-06' AS Date), NULL, CAST(N'2020-12-08' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1025, 1, CAST(N'2020-12-06' AS Date), CAST(N'2020-12-02' AS Date), CAST(N'2020-12-08' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1026, 1, CAST(N'2020-12-06' AS Date), CAST(N'2020-12-07' AS Date), CAST(N'2020-12-08' AS Date), 0, 0, N'123123122', N'1     ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1027, 1, CAST(N'2020-12-07' AS Date), NULL, CAST(N'2020-12-08' AS Date), 1, 1, N'312123312', N'6     ', 20)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1028, 1, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-02' AS Date), CAST(N'2020-12-08' AS Date), 1, 1, N'312123312', N'6     ', 20)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1029, 1, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-09' AS Date), CAST(N'2020-12-08' AS Date), 1, 1, N'312123312', N'6     ', 20)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1030, 0, CAST(N'2020-12-07' AS Date), NULL, CAST(N'2020-12-08' AS Date), 0, 0, N'16161616 ', N'33    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1031, 0, CAST(N'2020-12-07' AS Date), NULL, CAST(N'2020-12-08' AS Date), 0, 0, N'123123123', N'31    ', 19)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1032, 1, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-09' AS Date), CAST(N'2020-12-08' AS Date), 0, 0, N'123123128', N'17    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1033, 1, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-09' AS Date), CAST(N'2020-12-13' AS Date), 0, 0, N'123456789', N'35    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1034, 1, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-09' AS Date), NULL, 0, 0, N'321654988', N'34    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1035, 1, CAST(N'2020-12-07' AS Date), CAST(N'2020-12-09' AS Date), CAST(N'2020-12-08' AS Date), 0, 0, N'321654987', N'36    ', 1)
INSERT [dbo].[Admission] ([IDAdmission], [chirurgieProgrammee], [dateAdmission], [dateChirurgie], [dateConge], [televiseur], [telephone], [NSS], [numeroLit], [IDMedecin]) VALUES (1036, 0, CAST(N'2020-12-07' AS Date), NULL, NULL, 0, 0, N'123123122', N'1     ', 1)
SET IDENTITY_INSERT [dbo].[Admission] OFF
SET IDENTITY_INSERT [dbo].[Assurance] ON 

INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (1, N'RAMQ                          ')
INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (2, N'Croix Bleue                   ')
INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (3, N'Precocia                      ')
INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (4, N'CAAQuebec                     ')
INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (5, N'Desjardins                    ')
INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (6, N'Aviva                         ')
INSERT [dbo].[Assurance] ([IDAssurance], [nomCompagnie]) VALUES (7, N'Wawanessa Assurance           ')
SET IDENTITY_INSERT [dbo].[Assurance] OFF
SET IDENTITY_INSERT [dbo].[Departement] ON 

INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (1, N'Anesthesiologie          ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (2, N'Audiologie               ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (3, N'Cardiologie              ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (4, N'Oncologie                ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (5, N'Dermatologie             ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (6, N'Endocrinologie           ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (7, N'Gastroenterologie        ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (8, N'Hematologie              ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (9, N'Neonatologie             ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (10, N'Gynecologie              ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (11, N'Pediatrie                ')
INSERT [dbo].[Departement] ([IDDepartement], [nomDepartement]) VALUES (12, N'Chirurgie                ')
SET IDENTITY_INSERT [dbo].[Departement] OFF
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'1     ', 1, 1, 1)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'10    ', 0, 1, 4)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'11    ', 0, 2, 4)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'12    ', 0, 3, 4)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'13    ', 0, 1, 5)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'14    ', 0, 2, 5)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'15    ', 0, 3, 5)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'16    ', 0, 1, 6)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'17    ', 0, 2, 6)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'18    ', 0, 3, 6)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'19    ', 0, 1, 7)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'2     ', 0, 2, 1)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'20    ', 0, 2, 7)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'21    ', 0, 3, 7)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'22    ', 0, 1, 8)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'23    ', 0, 2, 8)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'24    ', 0, 3, 8)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'25    ', 0, 1, 9)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'26    ', 0, 2, 9)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'27    ', 0, 3, 9)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'28    ', 0, 1, 10)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'29    ', 0, 2, 10)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'3     ', 0, 3, 1)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'30    ', 0, 3, 10)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'31    ', 0, 1, 11)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'32    ', 0, 2, 11)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'33    ', 0, 3, 11)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'34    ', 1, 3, 12)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'35    ', 0, 3, 12)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'36    ', 0, 3, 12)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'4     ', 0, 1, 2)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'5     ', 0, 2, 2)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'6     ', 0, 3, 2)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'7     ', 0, 1, 3)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'8     ', 0, 2, 3)
INSERT [dbo].[Lit] ([numeroLit], [occupe], [IDType], [IDDepartement]) VALUES (N'9     ', 0, 3, 3)
SET IDENTITY_INSERT [dbo].[Medecin] ON 

INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (1, N'Proust                   ', N'roger                    ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (5, N'Magaram                  ', N'Tamara                   ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (7, N'Gygax                    ', N'Adrien                   ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (8, N'Spelling                 ', N'gardening                ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (15, N'Francis                  ', N'Zapata                   ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (16, N'Farandeau                ', N'Stephanie                ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (19, N'Stepou                   ', N'alexandre                ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (20, N'francois                 ', N'demarer                  ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (22, N'landier                  ', N'jeremy                   ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (23, N'garden                   ', N'square                   ')
INSERT [dbo].[Medecin] ([IDMedecin], [nom], [prenom]) VALUES (26, N'Pivot                    ', N'Bernard                  ')
SET IDENTITY_INSERT [dbo].[Medecin] OFF
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123123122', CAST(N'2000-11-11' AS Date), N'rouge                    ', N'rogrer                   ', N'14 rue reru                                       ', N'motnreal                 ', N'NL', N'h5h5h5', N'5142131234  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123123123', CAST(N'2000-11-02' AS Date), N'Galeano                  ', N'David                    ', N'16 Rue Gruau                                      ', N'Montreal                 ', N'QC', N'h5h5h5', N'5141231234  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123123128', CAST(N'2020-11-10' AS Date), N'landier                  ', N'David                    ', N'14 rue eqers                                      ', N'Montreal                 ', N'SK', N'h5h55h', N'5141234213  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123123129', CAST(N'2020-11-10' AS Date), N'landier                  ', N'David                    ', N'14 rue eqers                                      ', N'Montreal                 ', N'SK', N'h5h55h', N'5141234213  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123123312', CAST(N'2020-12-04' AS Date), N'landier                  ', N'jeremy                   ', N'14 rue montreal                                   ', N'monrreal                 ', N'QC', N'h1h2h4', N'5141231234  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123129887', CAST(N'2020-05-27' AS Date), N'landier                  ', N'jeremy                   ', N'78 rue grange                                     ', N'montreal                 ', N'PE', N'h1h6h4', N'5142346534  ', 6)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123456789', CAST(N'1979-08-19' AS Date), N'Landier                  ', N'Jeremy                   ', N'14 rue Garnier                                    ', N'Montreal                 ', N'QC', N'h1v1p1', N'5141234567  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123456867', CAST(N'2020-11-02' AS Date), N'bourge                   ', N'marie                    ', N'95 rue montreagera                                ', N'montreal                 ', N'PE', N'h     ', N'5142341234  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'123745634', CAST(N'2020-06-01' AS Date), N'landier                  ', N'jeremy                   ', N'95 rue mpwern                                     ', N'montreal                 ', N'NU', N'h1h1h1', N'5142342243  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'16161616 ', CAST(N'2010-03-10' AS Date), N'Jeune                    ', N'Personne                 ', N'16 rue de la jeunesse                             ', N'Montreal                 ', N'QC', N'h5h5h5', N'5141234123  ', 2)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'311312312', CAST(N'2020-11-30' AS Date), N'Fraise                   ', N'Melba                    ', N'97 rue du cocktail                                ', N'Montreal                 ', N'QC', N'h5h1h4', N'5146452345  ', 5)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'312123312', CAST(N'2020-11-03' AS Date), N'sadfy                    ', N'safi                     ', N'15 rue faras                                      ', N'montreal                 ', N'PE', N'h5h4h4', N'5146543456  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'312312312', CAST(N'2020-10-26' AS Date), N'frange                   ', N'steve                    ', N'15 rue gafrar                                     ', N'montreal                 ', N'ON', N'h4hh4h', N'5141231234  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'321654987', CAST(N'1989-07-18' AS Date), N'Prune                    ', N'Michael                  ', N'15 rue Principale                                 ', N'Montreal                 ', N'QC', N'h2v2p2', N'5143216547  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'321654988', CAST(N'1979-05-12' AS Date), N'Gale                     ', N'Gaelle                   ', N'16 rue de Barcelona                               ', N'Montreal                 ', N'QC', N'h3v3p3', N'5147896543  ', 2)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'534345323', CAST(N'1990-02-15' AS Date), N'Biden                    ', N'Joe                      ', N'54 rue du rouge gorge                             ', N'Montreal                 ', N'QC', N'h1h3h4', N'5142346234  ', 3)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'534456345', CAST(N'1994-12-07' AS Date), N'DeLaSouza                ', N'Mongolito                ', N'95 rue propere                                    ', N'montreal                 ', N'QC', N'h7h5h3', N'5142343456  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'567765344', CAST(N'2020-12-01' AS Date), N'Grarage                  ', N'Renaud                   ', N'56 avenue perude                                  ', N'Montréal                 ', N'QC', N'f9f9f9', N'5143452345  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'579768756', CAST(N'1979-06-20' AS Date), N'Lagaffe                  ', N'Gaston                   ', N'67 rue Grange                                     ', N'montreal                 ', N'QC', N'j7j7j7', N'5149874577  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'756556367', CAST(N'2020-06-03' AS Date), N'Vrouille                 ', N'Victor                   ', N'14 rue Gragnge                                    ', N'Montreal                 ', N'MB', N'h5h5h5', N'5146542346  ', 3)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'756756757', CAST(N'1960-02-12' AS Date), N'Brouge                   ', N'Brigitte                 ', N'96 rue de la montagne                             ', N'Montreal                 ', N'QC', N'f9f9f9', N'23452345    ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'783123123', CAST(N'2020-12-24' AS Date), N'Galeano                  ', N'David                    ', N'1669 rue Logan                                    ', N'Montreal                 ', N'QC', N'h1v1l1', N'5143415413  ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'890098890', CAST(N'1970-02-04' AS Date), N'Lastima                  ', N'LosCojones               ', N'15 rue des Poules                                 ', N'Montreal                 ', N'QC', N'h1h7h7', N'5147890978  ', 4)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'987987987', CAST(N'2020-12-16' AS Date), N'landier                  ', N'jeremy                   ', N'16 rue logan                                      ', N'montreal                 ', N'QC', N'u6u6u6', N'asdfasdfa   ', 1)
INSERT [dbo].[Patient] ([NSS], [dateNaissance], [nom], [prenom], [adresse], [ville], [province], [codePostal], [telephone], [IDAssurance]) VALUES (N'999999999', CAST(N'1950-02-09' AS Date), N'Brute                    ', N'Sabine                   ', N'90 rue de la pip                                  ', N'montreal                 ', N'QC', N'h1h5h5', N'5146345134  ', 5)
SET IDENTITY_INSERT [dbo].[TypeLit] ON 

INSERT [dbo].[TypeLit] ([IDtype], [description]) VALUES (1, N'Standard  ')
INSERT [dbo].[TypeLit] ([IDtype], [description]) VALUES (2, N'Semi-privé')
INSERT [dbo].[TypeLit] ([IDtype], [description]) VALUES (3, N'Privé     ')
SET IDENTITY_INSERT [dbo].[TypeLit] OFF
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Lit] FOREIGN KEY([numeroLit])
REFERENCES [dbo].[Lit] ([numeroLit])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Lit]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Medecin] FOREIGN KEY([IDMedecin])
REFERENCES [dbo].[Medecin] ([IDMedecin])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Medecin]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Patient] FOREIGN KEY([NSS])
REFERENCES [dbo].[Patient] ([NSS])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Patient]
GO
ALTER TABLE [dbo].[Lit]  WITH CHECK ADD  CONSTRAINT [FK_Lit_Departement] FOREIGN KEY([IDDepartement])
REFERENCES [dbo].[Departement] ([IDDepartement])
GO
ALTER TABLE [dbo].[Lit] CHECK CONSTRAINT [FK_Lit_Departement]
GO
ALTER TABLE [dbo].[Lit]  WITH CHECK ADD  CONSTRAINT [FK_Lit_TypeLit] FOREIGN KEY([IDType])
REFERENCES [dbo].[TypeLit] ([IDtype])
GO
ALTER TABLE [dbo].[Lit] CHECK CONSTRAINT [FK_Lit_TypeLit]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Assurance] FOREIGN KEY([IDAssurance])
REFERENCES [dbo].[Assurance] ([IDAssurance])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Assurance]
GO
USE [master]
GO
ALTER DATABASE [Hopital] SET  READ_WRITE 
GO
