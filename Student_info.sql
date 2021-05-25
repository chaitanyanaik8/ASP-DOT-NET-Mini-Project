USE [CampusPlacement]
GO

/****** Object:  Table [dbo].[Student_info]    Script Date: 18/05/2021 10:23:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Student_info](
	[Stud_id] [int] NOT NULL,
	[Stud_name] [nvarchar](50) NOT NULL,
	[Stud_address] [nvarchar](max) NOT NULL,
	[Stud_city] [nvarchar](50) NOT NULL,
	[Stud_state] [nvarchar](50) NOT NULL,
	[Stud_pincode] [int] NOT NULL,
	[Stud_birthdate] [date] NOT NULL,
	[Stud_gender] [char](10) NOT NULL,
	[Stud_contactno] [varchar](10) NOT NULL,
	[Stud_email] [nvarchar](max) NOT NULL,
	[Stud_college_name] [nvarchar](50) NOT NULL,
	[Stud_rollno] [int] NOT NULL,
	[Stud_education] [nvarchar](50) NOT NULL,
	[Stud_branch] [nvarchar](50) NOT NULL,
	[Stud_passing_year] [int] NOT NULL,
	[Stud_percentage] [float] NOT NULL,
	[Stud_skill] [nvarchar](50) NOT NULL,
	[Stud_extra_skill] [nvarchar](50) NULL,
	[Stud_resume] [varbinary](max) NOT NULL,
	[Stud_password] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Stud_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

