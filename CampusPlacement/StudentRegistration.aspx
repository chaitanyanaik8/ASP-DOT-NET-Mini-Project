<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs"   
Inherits="WebFormsControlls.WebControls" %>  
<!DOCTYPE html>  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
<title></title>  
    <style type="text/css">
        .auto-style1 {
            margin-left: 280px;
        }
        .auto-style2 {
            margin-left: 280px;
        }
    </style>
</head>  
<body>  
<form id="form1" runat="server">  
<div class="auto-style1">           
    <asp:Label ID="lblStudReg" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Student Registration"></asp:Label>
    <br />
    <br />
    </div>
    <div class="auto-style2" style="font-size: large; font-weight: bolder">
        Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ToolTip="Enter Email ID" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="Enter valid email!" ControlToValidate="txtEmail" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Name:<br />
        <asp:TextBox ID="txtName" runat="server" ToolTip="Enter Name" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>        
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You can only enter alphabets for name!" ControlToValidate="txtName" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Address:<br />
        <asp:TextBox ID="txtAddr" runat="server" TextMode="MultiLine" ToolTip="Enter Address" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorAddr" runat="server" ControlToValidate="txtAddr" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        City:<br />
        <asp:TextBox ID="txtCity" runat="server" ToolTip="Enter City" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorCity" runat="server" ControlToValidate="txtCity" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="You can only enter alphabets for city!" ControlToValidate="txtCity" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        State:<br />
        <asp:TextBox ID="txtState" runat="server" ToolTip="Enter State" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorState" runat="server" ControlToValidate="txtState" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="You can only enter alphabets for state!" ControlToValidate="txtState" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Pincode:<br />
        <asp:TextBox ID="txtPincode" runat="server" TextMode="Number" ToolTip="Enter Pincode" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPincode" runat="server" ControlToValidate="txtPincode" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="You can only enter numbers for pincode!" ControlToValidate="txtPincode" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Birthdate:<br />
        <asp:TextBox ID="txtBdate" ClientIDMode="Static" runat="server" TextMode="Date" ToolTip="Enter Birthdate" Width="217px"></asp:TextBox>
        <script>
        $(function() {
            $( "#txtBdate" ).datepicker({dateFormat: "dd-mm-yyyy"});
        });
        </script>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorBirthdate" runat="server" ControlToValidate="txtBdate" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Gender:<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server"><asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem><asp:ListItem>Other</asp:ListItem></asp:RadioButtonList>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorGender" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Contact No:<br />
        <asp:TextBox ID="txtContactno" runat="server" TextMode="Phone" ToolTip="Enter Contact No" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorContactNo" runat="server" ControlToValidate="txtContactno" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter 10 digit valid mobile number starting from 6, 7, 8 or 9!" ControlToValidate="txtContactno" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        College Name:<br />
        <asp:TextBox ID="txtCollegename" runat="server" ToolTip="Enter College Name" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorCollegeName" runat="server" ControlToValidate="txtCollegename" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="You can only enter alphabets for college name!" ControlToValidate="txtCollegename" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        College Roll No:<br />
        <asp:TextBox ID="txtRollno" runat="server" TextMode="Number" ToolTip="Enter College Roll No" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorRollNo" runat="server" ControlToValidate="txtRollno" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="You can only enter numbers for roll number!" ControlToValidate="txtRollno" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Education:<br />
        <asp:TextBox ID="txtEducation" runat="server" ToolTip="Enter Education(Bsc,Msc,etc.)" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorEducation" runat="server" ControlToValidate="txtEducation" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="You can only enter alphabets for education!" ControlToValidate="txtEducation" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z\.]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Branch:<br />
        <asp:TextBox ID="txtBranch" runat="server" ToolTip="Enter Branch (CS,CA,etc)" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorBranch" runat="server" ControlToValidate="txtBranch" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="You can only enter alphabets for branch!" ControlToValidate="txtBranch" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z\.]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Passing Year:<br />
        <asp:TextBox ID="txtPassingyear" runat="server" TextMode="Number" ToolTip="Enter Passing Year" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPassingYear" runat="server" ControlToValidate="txtPassingyear" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="You can only enter 4 numbers for year!" ControlToValidate="txtPassingyear" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^\d{4}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Percentage:<br />
        <asp:TextBox ID="txtPercentage" runat="server" ToolTip="Enter Percentage" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPercentage" runat="server" ControlToValidate="txtPercentage" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Enter valid percentage!" ControlToValidate="txtPercentage" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="[0-9]?[0-9]?(\.[0-9][0-9]?)?"></asp:RegularExpressionValidator>
        <br />
        <br />
        Skill:<br />
        <asp:TextBox ID="txtSkill" runat="server" ToolTip="Enter Skill" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorSkill" runat="server" ControlToValidate="txtSkill" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="You can only enter alphabets for skill!" ControlToValidate="txtSkill" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Extra Skill:<br />
        <asp:TextBox ID="txtExtraskill" runat="server" ToolTip="Enter Extra Skill" Width="217px"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server" ErrorMessage="You can only enter alphabets for extra skill!" ControlToValidate="txtExtraskill" ForeColor="Red" ValidationGroup="RegistrationGroup" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Resume (pdf only):<br />
        <asp:FileUpload ID="fileResume1" runat="server" ToolTip="Upload Resume" />
        <asp:RequiredFieldValidator id="RequiredFieldValidatorResume" runat="server" ControlToValidate="fileResume1" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Password:<br />
        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" ToolTip="Enter Password" Width="217px"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorPassword" runat="server" ControlToValidate="txtPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        <br />
        Confirm Password:<br />
        <asp:TextBox ID="txtConfPwd" runat="server" Width="217px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="txtConfPwd" ErrorMessage="This is a Required Field." ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:RequiredFieldValidator>
        <br />
        &nbsp;&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfPwd" ControlToValidate="txtPwd" ErrorMessage="Passwords don't Match!" ForeColor="Red" ValidationGroup="RegistrationGroup"></asp:CompareValidator>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnRegister" runat="server" Font-Bold="True" Font-Size="Large" OnClick="btnRegister_Click" Text="Register" ToolTip="Click to Register" Causesvalidation="true" ValidationGroup="RegistrationGroup" />
        <br />
        <br />
        <asp:LinkButton ID="btnLogin" runat="server" OnClick="btnLogin_Click">Already Registered? Click to Login</asp:LinkButton>
        <br />
    </div>
    </form>
    <p>
&nbsp;&nbsp;
    </p>
</body>  
</html>
