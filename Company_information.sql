USE [CampusPlacement]
GO

/****** Object:  Table [dbo].[Company_information]    Script Date: 18/05/2021 10:26:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Company_information](
	[Comp_id] [int] NOT NULL,
	[Comp_name] [nvarchar](50) NOT NULL,
	[Comp_address] [nvarchar](max) NOT NULL,
	[Comp_city] [nvarchar](50) NOT NULL,
	[Comp_state] [nvarchar](50) NOT NULL,
	[Comp_pincode] [int] NOT NULL,
	[Comp_contactno] [varchar](10) NOT NULL,
	[Comp_email] [nvarchar](max) NOT NULL,
	[Comp_website] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Comp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

