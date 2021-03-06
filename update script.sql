USE [master]
GO
/****** Object:  Database [MedicalCommunityDb]    Script Date: 2/3/2015 11:54:45 PM ******/
CREATE DATABASE [MedicalCommunityDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MedicalCommunityDb', FILENAME = N'D:\asp.net\MedicalCommunityApp\DB\MedicalCommunityDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MedicalCommunityDb_log', FILENAME = N'D:\asp.net\MedicalCommunityApp\DB\MedicalCommunityDb_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MedicalCommunityDb] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MedicalCommunityDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MedicalCommunityDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MedicalCommunityDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MedicalCommunityDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MedicalCommunityDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MedicalCommunityDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MedicalCommunityDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MedicalCommunityDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET RECOVERY FULL 
GO
ALTER DATABASE [MedicalCommunityDb] SET  MULTI_USER 
GO
ALTER DATABASE [MedicalCommunityDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MedicalCommunityDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MedicalCommunityDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MedicalCommunityDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MedicalCommunityDb]
GO
/****** Object:  Table [dbo].[tbl_center]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_center](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[district_id] [int] NOT NULL,
	[thana_id] [int] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_center] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_disease]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_disease](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](200) NULL,
	[treatment_procedure] [varchar](500) NULL,
	[prefered_drugs] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_disease] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_district]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_district](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[population] [int] NULL,
 CONSTRAINT [PK_tbl_district] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_doctor]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_doctor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[degree] [varchar](50) NOT NULL,
	[specialization] [varchar](50) NOT NULL,
	[centerId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_doctor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_dose]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_dose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dose] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_dose] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_medicine]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_medicine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[mg_ml] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Medicine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_patient]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_patient](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[diseaseId] [int] NOT NULL,
	[districtId] [int] NOT NULL,
	[thanaId] [int] NOT NULL,
	[treatmentId] [int] NOT NULL,
	[centerId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_patient] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_stock]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_stock](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[districtid] [int] NOT NULL,
	[thanaid] [int] NOT NULL,
	[centerid] [int] NOT NULL,
	[medicineid] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_tbl_stock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_thana]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_thana](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_thana] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_treatment]    Script Date: 2/3/2015 11:54:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_treatment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[diseaseId] [int] NOT NULL,
	[medicineId] [int] NOT NULL,
	[doseId] [int] NOT NULL,
	[before_after] [bit] NOT NULL,
	[quantity] [int] NOT NULL,
	[note] [varchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[patientId] [int] NOT NULL,
	[centerId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_treatment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_center] ON 

INSERT [dbo].[tbl_center] ([id], [name], [district_id], [thana_id], [code], [password]) VALUES (1, N'Amtali Community Center', 2, 8, N'amtal28', N'amtalicommunitycenter')
INSERT [dbo].[tbl_center] ([id], [name], [district_id], [thana_id], [code], [password]) VALUES (2, N'dhAKA COMUNITY CENTRE', 18, 148, N'dhaka18148', N'dhakacomunitycentre')
INSERT [dbo].[tbl_center] ([id], [name], [district_id], [thana_id], [code], [password]) VALUES (3, N'Comilla Community Center', 11, 87, N'comil1187', N'comillacommunitycenter')
SET IDENTITY_INSERT [dbo].[tbl_center] OFF
SET IDENTITY_INSERT [dbo].[tbl_disease] ON 

INSERT [dbo].[tbl_disease] ([id], [name], [description], [treatment_procedure], [prefered_drugs]) VALUES (1, N'Dengue', N'breakbone fever', N'Single-dose methylprednisolone', N'Acetaminophen (paracetamol)')
INSERT [dbo].[tbl_disease] ([id], [name], [description], [treatment_procedure], [prefered_drugs]) VALUES (2, N'Malaria', N'fever', N'15days', N'tablet')
INSERT [dbo].[tbl_disease] ([id], [name], [description], [treatment_procedure], [prefered_drugs]) VALUES (3, N'Fever', N'sick', N'bed rest', N'napa')
SET IDENTITY_INSERT [dbo].[tbl_disease] OFF
SET IDENTITY_INSERT [dbo].[tbl_district] ON 

INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (1, N'Barguna District', 892781)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (2, N'Barisal District', 2324310)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (3, N'Bhola District', 1776795)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (4, N'Jhalokati District', 682669)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (5, N'Patuakhali District', 1535854)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (6, N'Pirojpur District', 1113257)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (7, N'Bandarban District', 388335)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (8, N'Brahmanbaria District', 2840498)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (9, N'Chandpur District', 2416018)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (10, N'Chittagong District', 7616352)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (11, N'Comilla District', 5387288)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (12, N'Cox''s Bazar District', 2289990)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (13, N'Feni District', 1437371)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (14, N'Khagrachhari District', 613917)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (15, N'Lakshmipur District', 1729188)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (16, N'Noakhali District', 3108083)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (17, N'Rangamati District', 595979)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (18, N'Dhaka District', 12043977)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (19, N'Faridpur District', 1912969)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (20, N'Gazipur District', 3403912)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (21, N'Gopalganj District', 1172415)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (22, N'Jamalpur District', 2292674)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (23, N'Kishoreganj District', 2911907)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (24, N'Madaripur District', 1165952)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (25, N'Manikganj District', 1392867)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (26, N'Munshiganj District', 1445660)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (27, N'Mymensingh District', 5110272)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (28, N'Narayanganj District', 2948217)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (29, N'Narsingdi District', 2229642)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (30, N'Netrakona District', 1049778)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (31, N'Rajbari District', 1155824)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (32, N'Shariatpur District', 1358325)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (33, N'Sherpur District', 3605083)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (34, N'Tangail District', 2224944)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (35, N'Bagerhat District', 1476090)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (36, N'Chuadanga District', 1129015)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (37, N'Jessore District', 2764547)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (38, N'Jhenaidah District', 1771304)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (39, N'Khulna District', 2318527)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (40, N'Kushtia District', 1946838)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (41, N'Magura District', 918419)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (42, N'Meherpur District', 655392)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (43, N'Narail District', 721668)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (44, N'Satkhira District', 1985959)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (45, N'Bogra District', 3400874)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (46, N'Joypurhat District', 913768)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (47, N'Naogaon District', 2600157)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (48, N'Natore District', 1706673)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (49, N'Chapainawabganj District', 1647521)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (50, N'Pabna District', 2523179)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (51, N'Rajshahi District', 2595197)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (52, N'Sirajganj District', 3097489)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (53, N'Dinajpur District', 2990128)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (54, N'Gaibandha District', 2379255)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (55, N'Kurigram District', 2069273)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (56, N'Lalmonirhat District', 1256099)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (57, N'Nilphamari District', 1834231)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (58, N'Panchagarh District', 987644)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (59, N'Rangpur District', 2881086)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (60, N'Thakurgaon District', 1390042)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (61, N'Habiganj District', 2089001)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (62, N'Moulvibazar District', 1919062)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (63, N'Sunamganj District', 2467968)
INSERT [dbo].[tbl_district] ([id], [name], [population]) VALUES (64, N'Sylhet District', 3434188)
SET IDENTITY_INSERT [dbo].[tbl_district] OFF
SET IDENTITY_INSERT [dbo].[tbl_doctor] ON 

INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [centerId]) VALUES (1, N'Hyder', N'MBBS', N'Child', 0)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [centerId]) VALUES (2, N'Atik', N'FCPS', N'Child', 1)
INSERT [dbo].[tbl_doctor] ([id], [name], [degree], [specialization], [centerId]) VALUES (3, N'amir', N'MBBS', N'Heart', 3)
SET IDENTITY_INSERT [dbo].[tbl_doctor] OFF
SET IDENTITY_INSERT [dbo].[tbl_dose] ON 

INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (1, N'1-1-1')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (2, N'1-0-1')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (3, N'1-1-0')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (4, N'0-1-1')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (5, N'1-0-0')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (6, N'0-1-0')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (7, N'0-0-1')
INSERT [dbo].[tbl_dose] ([id], [dose]) VALUES (8, N'1-1-1-1')
SET IDENTITY_INSERT [dbo].[tbl_dose] OFF
SET IDENTITY_INSERT [dbo].[tbl_medicine] ON 

INSERT [dbo].[tbl_medicine] ([id], [Name], [mg_ml]) VALUES (1, N'Napa', N'500mg')
INSERT [dbo].[tbl_medicine] ([id], [Name], [mg_ml]) VALUES (2, N'Tuska', N'500ml')
INSERT [dbo].[tbl_medicine] ([id], [Name], [mg_ml]) VALUES (3, N'Flagil', N'500mg')
INSERT [dbo].[tbl_medicine] ([id], [Name], [mg_ml]) VALUES (4, N'Parasitamol', N'500mg')
INSERT [dbo].[tbl_medicine] ([id], [Name], [mg_ml]) VALUES (5, N'Fexo', N'120mg')
SET IDENTITY_INSERT [dbo].[tbl_medicine] OFF
SET IDENTITY_INSERT [dbo].[tbl_patient] ON 

INSERT [dbo].[tbl_patient] ([id], [name], [diseaseId], [districtId], [thanaId], [treatmentId], [centerId]) VALUES (1, N'Rimi Khanom', 1, 1, 1, 1, 1)
INSERT [dbo].[tbl_patient] ([id], [name], [diseaseId], [districtId], [thanaId], [treatmentId], [centerId]) VALUES (3, N'Asif Latif', 2, 2, 1, 1, 1)
INSERT [dbo].[tbl_patient] ([id], [name], [diseaseId], [districtId], [thanaId], [treatmentId], [centerId]) VALUES (4, N'Rakib Hasan', 1, 2, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_patient] OFF
SET IDENTITY_INSERT [dbo].[tbl_stock] ON 

INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (2, 1, 1, 1, 1, 10)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (5, 2, 8, 1, 1, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (6, 2, 8, 1, 2, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (7, 2, 8, 1, 3, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (8, 2, 8, 1, 1, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (9, 2, 8, 1, 2, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (10, 2, 8, 1, 3, 100)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (11, 2, 8, 1, 3, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (12, 2, 8, 1, 2, 12)
INSERT [dbo].[tbl_stock] ([id], [districtid], [thanaid], [centerid], [medicineid], [quantity]) VALUES (13, 2, 8, 1, 2, 12)
SET IDENTITY_INSERT [dbo].[tbl_stock] OFF
SET IDENTITY_INSERT [dbo].[tbl_thana] ON 

INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (1, N'Amtali Upazila', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (2, N'Bamna Upazila', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (3, N'Barguna Sadar Upazila', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (4, N'Betagi Upazila', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (5, N'Patharghata Upazila', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (6, N'Taltoli Upazila', 1)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (7, N'Agailjhara Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (8, N'Babuganj Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (9, N'Bakerganj Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (10, N'Banaripara Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (11, N'Gaurnadi Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (12, N'Hizla Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (13, N'Barisal Sadar Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (14, N'Mehendiganj Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (15, N'Muladi Upazila', 2)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (16, N'Wazirpur Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (17, N'Bhola Sadar Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (18, N'Burhanuddin Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (19, N'Char Fasson Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (20, N'Daulatkhan Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (21, N'Lalmohan Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (22, N'Manpura Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (23, N'Tazumuddin Upazila', 3)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (24, N'Jhalokati Sadar Upazila', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (25, N'Kathalia Upazila', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (26, N'Nalchity Upazila', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (27, N'Rajapur Upazila', 4)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (28, N'Bauphal Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (29, N'Dashmina Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (30, N'Galachipa Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (31, N'Kalapara Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (32, N'Mirzaganj Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (33, N'Patuakhali Sadar Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (34, N'Rangabali Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (35, N'Dumki Upazila', 5)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (36, N'Bhandaria Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (37, N'Kawkhali Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (38, N'Mathbaria Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (39, N'Nazirpur Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (40, N'Pirojpur Sadar Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (41, N'Nesarabad (Swarupkati) Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (42, N'        Zianagor Upazila', 6)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (43, N'Ali Kadam Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (44, N'Bandarban Sadar Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (45, N'Lama Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (46, N'Naikhongchhari Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (47, N'Rowangchhari Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (48, N'Ruma Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (49, N'Thanchi Upazila', 7)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (50, N'Akhaura Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (51, N'Bancharampur Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (52, N'Brahmanbaria Sadar Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (53, N'Kasba Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (54, N'Nabinagar Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (55, N'Nasirnagar Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (56, N'Sarail Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (57, N'Ashuganj Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (58, N'Bijoynagar Upazila', 8)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (59, N'Chandpur Sadar Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (60, N'Faridganj Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (61, N'Haimchar Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (62, N'Haziganj Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (63, N'Kachua Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (64, N'Matlab Dakshin Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (65, N'Matlab Uttar Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (66, N'Shahrasti Upazila', 9)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (67, N'Anwara Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (68, N'Banshkhali Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (69, N'Boalkhali Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (70, N'Chandanaish Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (71, N'Fatikchhari Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (72, N'Hathazari Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (73, N'Lohagara Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (74, N'Mirsharai Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (75, N'Patiya Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (76, N'Rangunia Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (77, N'Raozan Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (78, N'Sandwip Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (79, N'Satkania Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (80, N'Sitakunda Upazila', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (81, N'Bandor (Chittagong Port) Thana', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (82, N'Chandgaon Thana', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (83, N'Double Mooring Thana', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (84, N'Kotwali Thana', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (85, N'Pahartali Thana', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (86, N'Panchlaish Thana', 10)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (87, N'Barura Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (88, N'Brahmanpara Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (89, N'Burichang Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (90, N'Chandina Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (91, N'Chauddagram Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (92, N'Daudkandi Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (93, N'Debidwar Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (94, N'Homna Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (95, N'Laksam Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (96, N'Muradnagar Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (97, N'Nangalkot Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (98, N'Comilla Adarsha Sadar Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (99, N'Meghna Upazila', 11)
GO
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (100, N'Titas Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (101, N'Monohargonj Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (102, N'Comilla Sadar Dakshin Upazila', 11)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (103, N'Chakaria Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (104, N'Cox''s Bazar Sadar Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (105, N'Kutubdia Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (106, N'Maheshkhali Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (107, N'Ramu Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (108, N'Teknaf Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (109, N'Ukhia Upazila', 12)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (110, N'Chhagalnaiya Upazila', 13)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (111, N'Daganbhuiyan Upazila', 13)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (112, N'Feni Sadar Upazila', 13)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (113, N'Parshuram Upazila', 13)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (114, N'Sonagazi Upazila', 13)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (115, N'Fulgazi Upazila', 13)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (116, N'Dighinala Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (117, N'Khagrachhari Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (118, N'Lakshmichhari Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (119, N'Mahalchhari Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (120, N'Manikchhari Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (121, N'Matiranga Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (122, N'Panchhari Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (123, N'Ramgarh Upazila', 14)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (124, N'Lakshmipur Sadar Upazila', 15)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (125, N'Raipur Upazila', 15)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (126, N'Ramganj Upazila', 15)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (127, N'Ramgati Upazila', 15)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (128, N'Kamalnagar Upazila', 15)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (129, N'Begumganj Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (130, N'Noakhali Sadar Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (131, N'Chatkhil Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (132, N'Companiganj Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (133, N'Hatiya Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (134, N'Senbagh Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (135, N'Sonaimuri Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (136, N'Subarnachar Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (137, N'Kabirhat Upazila', 16)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (138, N'Bagaichhari Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (139, N'Barkal Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (140, N'Kawkhali (Betbunia) Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (141, N'Belaichhari Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (142, N'Kaptai Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (143, N'Juraichhari Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (144, N'Langadu Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (145, N'Naniyachar Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (146, N'Rajasthali Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (147, N'Rangamati Sadar Upazila', 17)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (148, N'Dhamrai Upazila', 18)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (149, N'Dohar Upazila', 18)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (150, N'Keraniganj Upazila', 18)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (151, N'Nawabganj Upazila', 18)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (152, N'Savar Upazila', 18)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (153, N'Alfadanga Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (154, N'Bhanga Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (155, N'Boalmari Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (156, N'Charbhadrasan Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (157, N'Faridpur Sadar Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (158, N'Madhukhali Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (159, N'Nagarkanda Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (160, N'Sadarpur Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (161, N'Saltha Upazila', 19)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (162, N'Gazipur Sadar Upazila', 20)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (163, N'Kaliakair Upazila', 20)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (164, N'Kaliganj Upazila', 20)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (165, N'Kapasia Upazila', 20)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (166, N'Sreepur Upazila', 20)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (167, N'Gopalganj Sadar Upazila', 21)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (168, N'Kashiani Upazila', 21)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (169, N'Kotalipara Upazila', 21)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (170, N'Muksudpur Upazila', 21)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (171, N'Tungipara Upazila', 21)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (172, N'Baksiganj Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (173, N'Dewanganj Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (174, N'Islampur Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (175, N'Jamalpur Sadar Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (176, N'Madarganj Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (177, N'Melandaha Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (178, N'Sarishabari Upazila', 22)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (179, N'Astagram Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (180, N'Bajitpur Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (181, N'Bhairab Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (182, N'Hossainpur Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (183, N'Itna Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (184, N'Karimganj Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (185, N'Katiadi Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (186, N'Kishoreganj Sadar Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (187, N'Kuliarchar Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (188, N'Mithamain Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (189, N'Nikli Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (190, N'Pakundia Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (191, N'Tarail Upazila', 23)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (192, N'Rajoir Upazila', 24)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (193, N'Madaripur Sadar Upazila', 24)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (194, N'Kalkini Upazila', 24)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (195, N'Shibchar Upazila', 24)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (196, N'Daulatpur Upazila', 25)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (197, N'Ghior Upazila', 25)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (198, N'Harirampur Upazila', 25)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (199, N'Manikgonj Sadar Upazila', 25)
GO
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (200, N'Saturia Upazila', 25)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (201, N'Shivalaya Upazila', 25)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (202, N'Singair Upazila', 25)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (203, N'Gazaria Upazila', 26)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (204, N'Lohajang Upazila', 26)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (205, N'Munshiganj Sadar Upazila', 26)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (206, N'Sirajdikhan Upazila', 26)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (207, N'Sreenagar Upazila', 26)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (208, N'Tongibari Upazila', 26)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (209, N'Bhaluka Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (210, N'Dhobaura Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (211, N'Fulbaria Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (212, N'Gaffargaon Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (213, N'Gauripur Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (214, N'Haluaghat Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (215, N'Ishwarganj Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (216, N'Mymensingh Sadar Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (217, N'Muktagachha Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (218, N'Nandail Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (219, N'Phulpur Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (220, N'Trishal Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (221, N'Tara Khanda Upazila', 27)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (222, N'Araihazar Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (223, N'Bandar Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (224, N'Narayanganj Sadar Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (225, N'Rupganj Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (226, N'Sonargaon Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (227, N'Fatullah Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (228, N'Siddhirganj Upazila', 28)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (229, N'Atpara Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (230, N'Barhatta Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (231, N'Durgapur Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (232, N'Khaliajuri Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (233, N'Kalmakanda Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (234, N'Kendua Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (235, N'Madan Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (236, N'Mohanganj Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (237, N'Netrokona Sadar Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (238, N'Purbadhala Upazila', 29)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (239, N'Baliakandi Upazila', 30)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (240, N'Goalandaghat Upazila', 30)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (241, N'Pangsha Upazila', 30)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (242, N'Rajbari Sadar Upazila', 30)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (243, N'Kalukhali Upazila', 30)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (244, N'Bhedarganj Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (245, N'Damudya Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (246, N'Gosairhat Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (247, N'Naria Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (248, N'Shariatpur Sadar Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (249, N'Zanjira Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (250, N'Shakhipur Upazila', 31)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (251, N'Jhenaigati Upazila', 32)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (252, N'Nakla Upazila', 32)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (253, N'Nalitabari Upazila', 32)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (254, N'Sherpur Sadar Upazila', 32)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (255, N'Sreebardi Upazila', 32)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (256, N'Gopalpur Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (257, N'Basail Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (258, N'Bhuapur Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (259, N'Delduar Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (260, N'Ghatail Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (261, N'Kalihati Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (262, N'Madhupur Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (263, N'Mirzapur Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (264, N'Nagarpur Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (265, N'Sakhipur Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (266, N'Dhanbari Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (267, N'Tangail Sadar Upazila', 33)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (268, N'Narsingdi Sadar Upazila', 34)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (269, N'Belabo Upazila', 34)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (270, N'Monohardi Upazila', 34)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (271, N'Palash Upazila', 34)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (272, N'Raipura Upazila', 34)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (273, N'Shibpur Upazila', 34)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (274, N'Bagerhat Sadar Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (275, N'Chitalmari Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (276, N'Fakirhat Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (277, N'Kachua Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (278, N'Mollahat Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (279, N'Mongla Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (280, N'Morrelganj Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (281, N'Rampal Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (282, N'Sarankhola Upazila', 35)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (283, N'Alamdanga Upazila', 36)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (284, N'Chuadanga Sadar Upazila', 36)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (285, N'Damurhuda Upazila', 36)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (286, N'Jibannagar Upazila', 36)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (287, N'Abhaynagar Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (288, N'Bagherpara Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (289, N'Chaugachha Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (290, N'Jhikargachha Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (291, N'Keshabpur Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (292, N'Jessore Sadar Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (293, N'Manirampur Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (294, N'Sharsha Upazila', 37)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (295, N'Harinakunda Upazila', 38)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (296, N'Jhenaidah Sadar Upazila', 38)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (297, N'Kaliganj Upazila', 38)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (298, N'Kotchandpur Upazila', 38)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (299, N'Maheshpur Upazila', 38)
GO
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (300, N'Shailkupa Upazila', 38)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (301, N'Batiaghata Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (302, N'Dacope Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (303, N'Dumuria Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (304, N'Dighalia Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (305, N'Koyra Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (306, N'Paikgachha Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (307, N'Phultala Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (308, N'Rupsha Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (309, N'Terokhada Upazila', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (310, N'Daulatpur Thana', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (311, N'Khalishpur Thana', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (312, N'Khan Jahan Ali Thana', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (313, N'Kotwali Thana', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (314, N'Sonadanga Thana', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (315, N'Harintana Thana', 39)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (316, N'Bheramara Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (317, N'Daulatpur Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (318, N'Khoksa Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (319, N'Kumarkhali Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (320, N'Kushtia Sadar Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (321, N'Mirpur Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (322, N'Shekhpara Upazila', 40)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (323, N'Magura Sadar Upazila', 41)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (324, N'Mohammadpur Upazila', 41)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (325, N'Shalikha Upazila', 41)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (326, N'Sreepur Upazila', 41)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (327, N'Gangni Upazila', 42)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (328, N'Meherpur Sadar Upazila', 42)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (329, N'Mujibnagar Upazila', 42)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (330, N'Kalia Upazila', 43)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (331, N'Lohagara Upazila', 43)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (332, N'Narail Sadar Upazila', 43)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (333, N'Naragati Thana', 43)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (334, N'Assasuni Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (335, N'Debhata Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (336, N'Kalaroa Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (337, N'Kaliganj Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (338, N'Satkhira Sadar Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (339, N'Shyamnagar Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (340, N'Tala Upazila', 44)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (341, N'Adamdighi Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (342, N'Bogra Sadar Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (343, N'Dhunat Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (344, N'Dhupchanchia Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (345, N'Gabtali Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (346, N'Kahaloo Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (347, N'Nandigram Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (348, N'Sariakandi Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (349, N'Shajahanpur Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (350, N'Sherpur Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (351, N'Shibganj Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (352, N'Sonatola Upazila', 45)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (353, N'Akkelpur Upazila', 46)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (354, N'Joypurhat Sadar Upazila', 46)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (355, N'Kalai Upazila', 46)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (356, N'Khetlal Upazila', 46)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (357, N'Panchbibi Upazila', 46)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (358, N'Atrai Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (359, N'Badalgachhi Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (360, N'Manda Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (361, N'Dhamoirhat Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (362, N'Mohadevpur Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (363, N'Naogaon Sadar Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (364, N'Niamatpur Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (365, N'Patnitala Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (366, N'Porsha Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (367, N'Raninagar Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (368, N'Sapahar Upazila', 47)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (369, N'Bagatipara Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (370, N'Baraigram Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (371, N'Gurudaspur Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (372, N'Lalpur Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (373, N'Natore Sadar Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (374, N'Singra Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (375, N'Naldanga Upazila', 48)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (376, N'Bholahat Upazila', 49)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (377, N'Gomastapur Upazila', 49)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (378, N'Nachole Upazila', 49)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (379, N'Nawabganj Sadar Upazila', 49)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (380, N'Shibganj Upazila', 49)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (381, N'Ataikula Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (382, N'Atgharia Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (383, N'Bera Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (384, N'Bhangura Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (385, N'Chatmohar Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (386, N'Faridpur Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (387, N'Ishwardi Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (388, N'Pabna Sadar Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (389, N'Santhia Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (390, N'Sujanagar Upazila', 50)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (391, N'Bagha Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (392, N'Bagmara Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (393, N'Charghat Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (394, N'Durgapur Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (395, N'Godagari Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (396, N'Mohanpur Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (397, N'Paba Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (398, N'Puthia Upazila', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (399, N'Tanore Upazila', 51)
GO
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (400, N'Boalia Thana', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (401, N'Matihar Thana', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (402, N'Rajpara Thana', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (403, N'Shah Mokdum Thana', 51)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (404, N'Belkuchi Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (405, N'Chauhali Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (406, N'Kamarkhanda Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (407, N'Kazipur Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (408, N'Raiganj Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (409, N'Shahjadpur Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (410, N'Sirajganj Sadar Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (411, N'Tarash Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (412, N'Ullahpara Upazila', 52)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (413, N'Birampur Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (414, N'Birganj Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (415, N'Biral Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (416, N'Bochaganj Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (417, N'Chirirbandar Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (418, N'Phulbari Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (419, N'Ghoraghat Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (420, N'Hakimpur Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (421, N'Kaharole Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (422, N'Khansama Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (423, N'Dinajpur Sadar Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (424, N'Nawabganj Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (425, N'Parbatipur Upazila', 53)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (426, N'Phulchhari Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (427, N'Gaibandha Sadar Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (428, N'Gobindaganj Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (429, N'Palashbari Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (430, N'Sadullapur Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (431, N'Sughatta Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (432, N'Sundarganj Upazila', 54)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (433, N'Bhurungamari Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (434, N'Char Rajibpur Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (435, N'Chilmari Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (436, N'Phulbari Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (437, N'Kurigram Sadar Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (438, N'Nageshwari Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (439, N'Rajarhat Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (440, N'Raomari Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (441, N'Ulipur Upazila', 55)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (442, N'Aditmari Upazila', 56)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (443, N'Hatibandha Upazila', 56)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (444, N'Kaliganj Upazila', 56)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (445, N'Lalmonirhat Sadar Upazila', 56)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (446, N'Patgram Upazila', 56)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (447, N'Dimla Upazila', 57)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (448, N'Domar Upazila', 57)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (449, N'Jaldhaka Upazila', 57)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (450, N'Kishoreganj Upazila', 57)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (451, N'Nilphamari Sadar Upazila', 57)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (452, N'Saidpur Upazila', 57)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (453, N'Atwari Upazila', 58)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (454, N'Boda Upazila', 58)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (455, N'Debiganj Upazila', 58)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (456, N'Panchagarh Sadar Upazila', 58)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (457, N'Tetulia Upazila', 58)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (458, N'Badarganj Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (459, N'Gangachhara Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (460, N'Kaunia Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (461, N'Rangpur Sadar Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (462, N'Mithapukur Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (463, N'Pirgachha Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (464, N'Pirganj Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (465, N'Taraganj Upazila', 59)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (466, N'Baliadangi Upazila', 60)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (467, N'Haripur Upazila', 60)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (468, N'Pirganj Upazila', 60)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (469, N'Ranisankail Upazila', 60)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (470, N'Thakurgaon Sadar Upazila', 60)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (471, N'Ajmiriganj Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (472, N'Bahubal Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (473, N'Baniyachong Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (474, N'Chunarughat Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (475, N'Habiganj Sadar Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (476, N'Lakhai Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (477, N'Madhabpur Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (478, N'Nabiganj Upazila', 61)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (479, N'Barlekha Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (480, N'Kamalganj Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (481, N'Kulaura Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (482, N'Moulvibazar Sadar Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (483, N'Rajnagar Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (484, N'Sreemangal Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (485, N'Juri Upazila', 62)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (486, N'Bishwamvarpur Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (487, N'Chhatak Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (488, N'Derai Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (489, N'Dharampasha Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (490, N'Dowarabazar Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (491, N'Jagannathpur Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (492, N'Jamalganj Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (493, N'Sullah Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (494, N'Sunamganj Sadar Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (495, N'Tahirpur Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (496, N'South Sunamganj Upazila', 63)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (497, N'Balaganj Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (498, N'Beanibazar Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (499, N'Bishwanath Upazila', 64)
GO
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (500, N'Companigonj Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (501, N'Fenchuganj Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (502, N'Golapganj Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (503, N'Gowainghat Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (504, N'Jaintiapur Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (505, N'Kanaighat Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (506, N'Sylhet Sadar Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (507, N'Zakiganj Upazila', 64)
INSERT [dbo].[tbl_thana] ([id], [name], [district_id]) VALUES (508, N'South Shurma Upazila', 64)
SET IDENTITY_INSERT [dbo].[tbl_thana] OFF
SET IDENTITY_INSERT [dbo].[tbl_treatment] ON 

INSERT [dbo].[tbl_treatment] ([id], [diseaseId], [medicineId], [doseId], [before_after], [quantity], [note], [date], [patientId], [centerId]) VALUES (1, 1, 1, 1, 1, 12, N'Fever', CAST(0x6F390B00 AS Date), 1, 1)
INSERT [dbo].[tbl_treatment] ([id], [diseaseId], [medicineId], [doseId], [before_after], [quantity], [note], [date], [patientId], [centerId]) VALUES (2, 2, 2, 2, 0, 12, N'Fever', CAST(0x88390B00 AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[tbl_treatment] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_tbl_Medicine]    Script Date: 2/3/2015 11:54:45 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbl_Medicine] ON [dbo].[tbl_medicine]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_center]  WITH CHECK ADD  CONSTRAINT [FK_tbl_center_tbl_center] FOREIGN KEY([district_id])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_center] CHECK CONSTRAINT [FK_tbl_center_tbl_center]
GO
ALTER TABLE [dbo].[tbl_center]  WITH CHECK ADD  CONSTRAINT [FK_tbl_center_tbl_thana] FOREIGN KEY([thana_id])
REFERENCES [dbo].[tbl_thana] ([id])
GO
ALTER TABLE [dbo].[tbl_center] CHECK CONSTRAINT [FK_tbl_center_tbl_thana]
GO
ALTER TABLE [dbo].[tbl_patient]  WITH CHECK ADD  CONSTRAINT [FK_tbl_patient_tbl_center] FOREIGN KEY([centerId])
REFERENCES [dbo].[tbl_center] ([id])
GO
ALTER TABLE [dbo].[tbl_patient] CHECK CONSTRAINT [FK_tbl_patient_tbl_center]
GO
ALTER TABLE [dbo].[tbl_patient]  WITH CHECK ADD  CONSTRAINT [FK_tbl_patient_tbl_disease] FOREIGN KEY([diseaseId])
REFERENCES [dbo].[tbl_disease] ([id])
GO
ALTER TABLE [dbo].[tbl_patient] CHECK CONSTRAINT [FK_tbl_patient_tbl_disease]
GO
ALTER TABLE [dbo].[tbl_patient]  WITH CHECK ADD  CONSTRAINT [FK_tbl_patient_tbl_district] FOREIGN KEY([districtId])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_patient] CHECK CONSTRAINT [FK_tbl_patient_tbl_district]
GO
ALTER TABLE [dbo].[tbl_patient]  WITH CHECK ADD  CONSTRAINT [FK_tbl_patient_tbl_thana] FOREIGN KEY([thanaId])
REFERENCES [dbo].[tbl_thana] ([id])
GO
ALTER TABLE [dbo].[tbl_patient] CHECK CONSTRAINT [FK_tbl_patient_tbl_thana]
GO
ALTER TABLE [dbo].[tbl_patient]  WITH CHECK ADD  CONSTRAINT [FK_tbl_patient_tbl_treatment] FOREIGN KEY([treatmentId])
REFERENCES [dbo].[tbl_treatment] ([id])
GO
ALTER TABLE [dbo].[tbl_patient] CHECK CONSTRAINT [FK_tbl_patient_tbl_treatment]
GO
ALTER TABLE [dbo].[tbl_stock]  WITH CHECK ADD  CONSTRAINT [FK_tbl_stock_tbl_center] FOREIGN KEY([centerid])
REFERENCES [dbo].[tbl_center] ([id])
GO
ALTER TABLE [dbo].[tbl_stock] CHECK CONSTRAINT [FK_tbl_stock_tbl_center]
GO
ALTER TABLE [dbo].[tbl_stock]  WITH CHECK ADD  CONSTRAINT [FK_tbl_stock_tbl_district] FOREIGN KEY([districtid])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_stock] CHECK CONSTRAINT [FK_tbl_stock_tbl_district]
GO
ALTER TABLE [dbo].[tbl_stock]  WITH CHECK ADD  CONSTRAINT [FK_tbl_stock_tbl_medicine] FOREIGN KEY([medicineid])
REFERENCES [dbo].[tbl_medicine] ([id])
GO
ALTER TABLE [dbo].[tbl_stock] CHECK CONSTRAINT [FK_tbl_stock_tbl_medicine]
GO
ALTER TABLE [dbo].[tbl_stock]  WITH CHECK ADD  CONSTRAINT [FK_tbl_stock_tbl_thana] FOREIGN KEY([thanaid])
REFERENCES [dbo].[tbl_thana] ([id])
GO
ALTER TABLE [dbo].[tbl_stock] CHECK CONSTRAINT [FK_tbl_stock_tbl_thana]
GO
ALTER TABLE [dbo].[tbl_thana]  WITH CHECK ADD  CONSTRAINT [FK_tbl_thana_tbl_district] FOREIGN KEY([district_id])
REFERENCES [dbo].[tbl_district] ([id])
GO
ALTER TABLE [dbo].[tbl_thana] CHECK CONSTRAINT [FK_tbl_thana_tbl_district]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_disease] FOREIGN KEY([diseaseId])
REFERENCES [dbo].[tbl_disease] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_disease]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_dose] FOREIGN KEY([doseId])
REFERENCES [dbo].[tbl_dose] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_dose]
GO
ALTER TABLE [dbo].[tbl_treatment]  WITH CHECK ADD  CONSTRAINT [FK_tbl_treatment_tbl_medicine] FOREIGN KEY([medicineId])
REFERENCES [dbo].[tbl_medicine] ([id])
GO
ALTER TABLE [dbo].[tbl_treatment] CHECK CONSTRAINT [FK_tbl_treatment_tbl_medicine]
GO
USE [master]
GO
ALTER DATABASE [MedicalCommunityDb] SET  READ_WRITE 
GO
