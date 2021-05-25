<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="CampusPlacement.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 360px;
        }
        .auto-style2 {
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="lblStudLogin" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Student Login"></asp:Label>
            <br />
            <br />
        </div>
        <div class="auto-style2" style="font-size: large; font-weight: bolder">
            Email ID:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email" ToolTip="Enter Email ID"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmailID" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Enter valid email!" ControlToValidate="txtEmailID" ForeColor="Red" ValidationGroup="LoginGroup" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
            <br />
            <br />
            Password:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="btnForgotPwd" runat="server" OnClick="btnForgotPwd_Click">Forgot Password?</asp:LinkButton>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Size="Large" Text="Login" ToolTip="Click to Login" ValidationGroup="LoginGroup" OnClick="btnLogin_Click" />
            <br />
            <br />
&nbsp;<asp:LinkButton ID="btnReg" runat="server" OnClick="btnReg_Click">Not Registered yet? Click to Register</asp:LinkButton>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnGoback" runat="server" Font-Bold="True" Font-Size="Large" OnClientClick="JavaScript:window.history.back(1); return false;" Text="Go Back" />
        </div>
    </form>
</body>
</html>
