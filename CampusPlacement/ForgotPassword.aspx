<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="CampusPlacement.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 320px;
        }
        .auto-style2 {
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="lblStudLogin" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Forgot Password"></asp:Label>
            <br />
            <br />
        </div>
        <div class="auto-style2" style="font-size: large; font-weight: bolder">
            <asp:Label ID="lblEmailID" runat="server" Text="Email ID:"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmailID" runat="server" TextMode="Email" ToolTip="Enter Email ID"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmailID" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="FGroup"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Enter valid email!" ControlToValidate="txtEmailID" ForeColor="Red" ValidationGroup="FGroup" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="lblBdate" runat="server" Text="Birth Date:"></asp:Label>
            <br />
            <asp:TextBox ID="txtBdate" runat="server" TextMode="Date" ToolTip="Enter Birth Date"></asp:TextBox>
            <script>
        $(function() {
            $( "#txtBdate" ).datepicker({dateFormat: "dd-mm-yyyy"});
        });
            </script>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorBirthdate" runat="server" ControlToValidate="txtBdate" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="FGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblNewPwd" runat="server" Text="New Password:"></asp:Label>
            <br />
            <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password" ToolTip="Enter New Password"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtNewPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="FGroup"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lblConfPwd" runat="server" Text="Confirm Password:"></asp:Label>
            <br />
            <asp:TextBox ID="txtConfPwd" runat="server" TextMode="Password" ToolTip="Confirm Password"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="txtConfPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="FGroup"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfPwd" ControlToValidate="txtNewPwd" ErrorMessage="Passwords don't Match!" ForeColor="Red" ValidationGroup="FGroup"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="btnChangePwd" runat="server" Font-Bold="True" Font-Size="Large" Text="Change Password" ValidationGroup="FGroup" OnClick="btnChangePwd_Click" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnGoback" runat="server" Font-Bold="True" Font-Size="Large" OnClientClick="JavaScript:window.history.back(1); return false;" Text="Go Back" />
        </div>
    </form>
</body>
</html>
