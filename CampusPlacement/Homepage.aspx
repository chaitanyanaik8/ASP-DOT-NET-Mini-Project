<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CampusPlacement.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 200px;
        }
        .auto-style2 {
            margin-left: 360px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="lblHome" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Campus Placement System"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Button ID="btnStudent" runat="server" Font-Bold="True" Font-Size="Large" OnClick="btnStudent_Click" Text="Student" Width="121px" />
        </p>
        <p class="auto-style2">
            <asp:Button ID="btnRecruiter" runat="server" Font-Bold="True" Font-Size="Large" OnClick="btnRecruiter_Click" Text="Recruiter" Width="121px" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
