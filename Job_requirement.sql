USE [CampusPlacement]
GO

/****** Object:  Table [dbo].[Job_requirement]    Script Date: 18/05/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Job_requirement](
	[Jreq_id] [int] NOT NULL,
	[Comp_id] [int] NOT NULL,
	[Jreq_role] [nvarchar](50) NOT NULL,
	[Jreq_min_qualification] [nvarchar](50) NOT NULL,
	[Jreq_job_location] [nvarchar](50) NOT NULL,
	[Jreq_salary] [float] NOT NULL,
	[Jreq_working_hours] [int] NOT NULL,
	[Jreq_posted_date] [date] NOT NULL,
	[Jreq_skill] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Jreq_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Job_requirement]  WITH CHECK ADD  CONSTRAINT [FK__Job_requi__Comp___4E88ABD4] FOREIGN KEY([Comp_id])
REFERENCES [dbo].[Company_information] ([Comp_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Job_requirement] CHECK CONSTRAINT [FK__Job_requi__Comp___4E88ABD4]
GO

