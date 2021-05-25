USE [CampusPlacement]
GO

/****** Object:  Table [dbo].[Job_applications]    Script Date: 18/05/2021 10:27:08 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Job_applications](
	[Japp_id] [int] NOT NULL,
	[Stud_id] [int] NOT NULL,
	[Jreq_id] [int] NOT NULL,
	[Japp_date] [date] NOT NULL,
	[Japp_status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Japp_id] ASC,
	[Stud_id] ASC,
	[Jreq_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Job_applications] ADD  CONSTRAINT [DF_Job_applications_Japp_status]  DEFAULT ('Not Approved') FOR [Japp_status]
GO

ALTER TABLE [dbo].[Job_applications]  WITH CHECK ADD  CONSTRAINT [FK__Job_appli__Jreq___52593CB8] FOREIGN KEY([Jreq_id])
REFERENCES [dbo].[Job_requirement] ([Jreq_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Job_applications] CHECK CONSTRAINT [FK__Job_appli__Jreq___52593CB8]
GO

ALTER TABLE [dbo].[Job_applications]  WITH CHECK ADD  CONSTRAINT [FK__Job_appli__Stud___5165187F] FOREIGN KEY([Stud_id])
REFERENCES [dbo].[Student_info] ([Stud_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Job_applications] CHECK CONSTRAINT [FK__Job_appli__Stud___5165187F]
GO

