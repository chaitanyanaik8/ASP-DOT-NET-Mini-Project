<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="CampusPlacement.StudentProfile" %>

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

        .auto-style2 {
            border-top-style: solid; border-top-width: thin; 
			border-top-color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div style="font-size: larger; border-bottom-style: solid; border-bottom-width: thin; 
			border-bottom-color: black; font-weight: bold">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblHome" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Online Campus Placement System"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Size="Larger">Welcome</asp:Label>
&nbsp;<asp:Label ID="lblStudentName" runat="server" Font-Bold="True" Font-Size="Larger"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnLogout" runat="server" Font-Bold="True" Font-Size="Small" Text="Logout" OnClick="btnLogout_Click" />
        </div>
        </div>
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"  CssClass="menu" Font-Bold="True" Font-Size="Large">
                <Items>
                    <asp:MenuItem Text="Home" NavigateUrl="~/StudentHomepage.aspx" />
                    <asp:MenuItem Text="View Profile" NavigateUrl="~/StudentProfile.aspx" />
                    <asp:MenuItem Text="My Applications" NavigateUrl="~/StudentApplication.aspx" />
                </Items>
            </asp:Menu>
    <div class="auto-style2" style="font-size: large; border-bottom-style: solid; border-bottom-width: thin; 
			border-bottom-color: black; font-weight: bolder">
        Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ToolTip="Enter Email ID" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="Enter valid email!" ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Name:<br />
        <asp:TextBox ID="txtName" runat="server" ToolTip="Enter Name" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>        
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You can only enter alphabets for name!" ControlToValidate="txtName" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Address:<br />
        <asp:TextBox ID="txtAddr" runat="server" TextMode="MultiLine" ToolTip="Enter Address" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorAddr" runat="server" ControlToValidate="txtAddr" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        City:<br />
        <asp:TextBox ID="txtCity" runat="server" ToolTip="Enter City" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorCity" runat="server" ControlToValidate="txtCity" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="You can only enter alphabets for city!" ControlToValidate="txtCity" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        State:<br />
        <asp:TextBox ID="txtState" runat="server" ToolTip="Enter State" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorState" runat="server" ControlToValidate="txtState" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="You can only enter alphabets for state!" ControlToValidate="txtState" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Pincode:<br />
        <asp:TextBox ID="txtPincode" runat="server" TextMode="Number" ToolTip="Enter Pincode" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPincode" runat="server" ControlToValidate="txtPincode" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="You can only enter numbers for pincode!" ControlToValidate="txtPincode" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Birthdate:<br />
        <asp:TextBox ID="txtBdate" ClientIDMode="Static" runat="server" ToolTip="Enter Birthdate" Width="217px" ReadOnly="True"></asp:TextBox>
        <script>
        $(function() {
            $( "#txtBdate" ).datepicker({dateFormat: "dd-mm-yyyy"});
        });
        </script>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorBirthdate" runat="server" ControlToValidate="txtBdate" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Gender:<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Enabled="False"><asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem><asp:ListItem>Other</asp:ListItem></asp:RadioButtonList>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorGender" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Contact No:<br />
        <asp:TextBox ID="txtContactno" runat="server" TextMode="Phone" ToolTip="Enter Contact No" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorContactNo" runat="server" ControlToValidate="txtContactno" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter 10 digit valid mobile number starting from 6, 7, 8 or 9!" ControlToValidate="txtContactno" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        College Name:<br />
        <asp:TextBox ID="txtCollegename" runat="server" ToolTip="Enter College Name" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorCollegeName" runat="server" ControlToValidate="txtCollegename" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="You can only enter alphabets for college name!" ControlToValidate="txtCollegename" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        College Roll No:<br />
        <asp:TextBox ID="txtRollno" runat="server" TextMode="Number" ToolTip="Enter College Roll No" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorRollNo" runat="server" ControlToValidate="txtRollno" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="You can only enter numbers for roll number!" ControlToValidate="txtRollno" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Education:<br />
        <asp:TextBox ID="txtEducation" runat="server" ToolTip="Enter Education(Bsc,Msc,etc.)" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorEducation" runat="server" ControlToValidate="txtEducation" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="You can only enter alphabets for education!" ControlToValidate="txtEducation" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z\.]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Branch:<br />
        <asp:TextBox ID="txtBranch" runat="server" ToolTip="Enter Branch (CS,CA,etc)" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorBranch" runat="server" ControlToValidate="txtBranch" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="You can only enter alphabets for branch!" ControlToValidate="txtBranch" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z\.]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Passing Year:<br />
        <asp:TextBox ID="txtPassingyear" runat="server" TextMode="Number" ToolTip="Enter Passing Year" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPassingYear" runat="server" ControlToValidate="txtPassingyear" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="You can only enter 4 numbers for year!" ControlToValidate="txtPassingyear" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Percentage:<br />
        <asp:TextBox ID="txtPercentage" runat="server" ToolTip="Enter Percentage" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPercentage" runat="server" ControlToValidate="txtPercentage" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Enter valid percentage!" ControlToValidate="txtPercentage" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="[0-9]?[0-9]?(\.[0-9][0-9]?)?"></asp:RegularExpressionValidator>
        <br />
        <br />
        Skill:<br />
        <asp:TextBox ID="txtSkill" runat="server" ToolTip="Enter Skill" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorSkill" runat="server" ControlToValidate="txtSkill" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="You can only enter alphabets for skill!" ControlToValidate="txtSkill" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Extra Skill:<br />
        <asp:TextBox ID="txtExtraskill" runat="server" ToolTip="Enter Extra Skill" Width="217px" ReadOnly="True"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="You can only enter alphabets for extra skill!" ControlToValidate="txtExtraskill" ForeColor="Red" ValidationGroup="EditGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Resume (pdf only):<br />
        <asp:Button ID="btnViewPdf" runat="server" Font-Bold="True" Font-Size="Large" Text="View Resume" OnClick="btnViewPdf_Click" />
        <br />
        <asp:FileUpload ID="fileResume" runat="server" ToolTip="Upload Resume" Visible="False" Font-Bold="False" />
        <asp:RequiredFieldValidator id="RequiredFieldValidatorResume" runat="server" ControlToValidate="fileResume" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Password:<br />
        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" ToolTip="Enter Password" Width="217px" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Confirm Password:<br />
        <asp:TextBox ID="txtConfPwd" runat="server" Width="217px" TextMode="Password" ReadOnly="True"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="txtConfPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="EditGroup"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfPwd" ControlToValidate="txtPwd" ErrorMessage="Passwords don't Match!" ForeColor="Red" ValidationGroup="EditGroup"></asp:CompareValidator>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEdit" runat="server" Font-Bold="True" Font-Size="Large" Text="Edit Profile" ToolTip="Click to Edit" Causesvalidation="true" OnClick="btnEdit_Click" />
        <br />
        <br />
&nbsp;
        <asp:Button ID="btnSave" runat="server" Font-Bold="True" Font-Size="Large" OnClick="btnSave_Click" Text="Save Changes" ValidationGroup="EditGroup" Visible="False" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnGoback" runat="server" Font-Bold="True" Font-Size="Large" OnClientClick="JavaScript:window.history.back(1); return false;" Text="Go Back" />
    </div>
    </form>
</body>
</html>
