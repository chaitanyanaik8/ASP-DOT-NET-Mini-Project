<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHomepage.aspx.cs" EnableEventValidation="false" Inherits="CampusPlacement.StudentHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .menu ul li
    {
        border: 1px solid black;
        text-decoration: none;
        padding: 3px;
        margin: 3px;
    }

    .menu ul li a
    {
        color: Black;
    }

    .menu ul li a:hover
    {
        font-weight:bold;
    }
	
	.tbl
	{
		border: thin solid black; width: 100%;
		
		border-bottom-left-radius:6px;
		border-bottom-right-radius:6px;
        height: 179px;
}
		
		.tblhead
		{
			background-color: white; border-bottom-style: solid; border-bottom-width: thin; 
			border-bottom-color: black; font-size: medium; font-weight: bold; 
			text-align: center;
			color: black;
			}
			
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: larger; font-weight: bold">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblHome" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Campus Placement System"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Size="Larger">Welcome</asp:Label>
&nbsp;<asp:Label ID="lblStudentName" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogout" runat="server" Font-Bold="True" Font-Size="Small" Text="Logout" OnClick="btnLogout_Click" />
            <br />
        </div>
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"  CssClass="menu" Font-Bold="True" Font-Size="Large">
                <Items>
                    <asp:MenuItem Text="Home" NavigateUrl="~/StudentHomepage.aspx" />
                    <asp:MenuItem Text="View Profile" NavigateUrl="~/StudentProfile.aspx" />
                    <asp:MenuItem Text="My Applications" NavigateUrl="~/StudentApplication.aspx" />
                </Items>
            </asp:Menu>
        <table class="tbl">
            <tr>
                <td class="tblhead">-::&nbsp; Job Matches as per Profile&nbsp; ::-</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList3" runat="server" CssClass="tbl" DataKeyField="Jreq_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large">
                        <ItemTemplate>
                            <asp:Label ID="Jreq_idLabel" runat="server" Text='<%# Eval("Jreq_id") %>' Visible="False" />
                            <asp:Label ID="Comp_idLabel" runat="server" Text='<%# Eval("Comp_id") %>' Visible="False" />
                            <br />
                            Company Name:
                            <asp:Label ID="Comp_nameLabel" runat="server" Text='<%# Eval("Comp_name") %>' />
                            <br />
                            Job Role:
                            <asp:Label ID="Jreq_roleLabel" runat="server" Text='<%# Eval("Jreq_role") %>' />
                            <br />
                            Min Qualification:
                            <asp:Label ID="Jreq_min_qualificationLabel" runat="server" Text='<%# Eval("Jreq_min_qualification") %>' />
                            <br />
                            Job Location:
                            <asp:Label ID="Jreq_job_locationLabel" runat="server" Text='<%# Eval("Jreq_job_location") %>' />
                            <br />
                            Job Salary:
                            <asp:Label ID="Jreq_salaryLabel" runat="server" Text='<%# Eval("Jreq_salary") %>' />
                            <br />
                            Working Hours:
                            <asp:Label ID="Jreq_working_hoursLabel" runat="server" Text='<%# Eval("Jreq_working_hours") %>' />
                            <br />
                            Job Posted Date:
                            <asp:Label ID="Jreq_posted_dateLabel" runat="server" Text='<%# Eval("Jreq_posted_date") %>' />
                            <br />
                            Required Skill:
                            <asp:Label ID="Jreq_skillLabel" runat="server" Text='<%# Eval("Jreq_skill") %>' />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnApply" runat="server" Font-Bold="True" Font-Size="Large" Text="Apply" OnClick="btnApply_Click" />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusPlacementConnectionString %>" SelectCommand="select Jreq_id,[Company_information].Comp_id,Comp_name,Jreq_role,Jreq_min_qualification,Jreq_job_location,Jreq_salary,Jreq_working_hours,Jreq_posted_date,Jreq_skill from [Job_requirement],[Company_information] where Job_requirement.Comp_id= Company_information.Comp_id;"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
