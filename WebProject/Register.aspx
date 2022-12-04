<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <title>Register</title>

</head>

<center><body>
    <form id="form1" runat="server" style=" font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF;">
        <div>
            <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="166px" OnClick="ImageButton1_Click" CausesValidation="false"/>
            <div id="menu">
                <ul>
                    <li><a href="AboutUs.html">About us</a></li>
                    <li><a href="ContactUss.html"> Contact Us</a></li>
                    <li><a href="LoginForm.aspx">Login</a></li>
                </ul>
            </div>
             <center> <asp:Label ID="Label1" runat="server" Text="Register" font-size="Large" ></asp:Label></center>
        </div>
        <center> 
        <asp:Table ID="Table1" runat="server" Height="787px" Width="976px" style="margin-left:25%; margin-bottom: 0px;">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="UserName" runat="server" ControlToValidate="txtUserName" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="Email" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label4" runat="server" Text="Full Name"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label5" runat="server" Text="Birth Date"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtBirthDate" runat="server" TextMode="Date"></asp:TextBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RadioButton ID="Male" runat="server" Text="Male" GroupName="Gender" />
<asp:RadioButton ID="Female" runat="server" Text="Female" GroupName="Gender" />
<asp:RadioButton ID="NotToSay" runat="server" Text="Rather Not To Say" GroupName="Gender" />
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="Password" runat="server" ControlToValidate="txtPass" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>

</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text="Password Confirmation"></asp:Label>
                    <br />
                    <br />
                    <br />
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtConfPass" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="passConfVal" runat="server" ControlToValidate="txtConfPass" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <asp:CompareValidator ID="passConfCom" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfPass" ErrorMessage="Please write the same password" ForeColor="Red"></asp:CompareValidator>

</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Button ID="RegisterBut" runat="server" Text="Register" OnClick="RegisterBut_Click"/>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="CancelBut" runat="server" Text="Cancel" OnClick="CancelBut_Click" CausesValidation="false"/>
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </center> 
        <br />
        <br />
        <br />
        <br />
        Have an Account?<asp:Button ID="LoginBut" runat="server" Text="Login" OnClick="LoginBut_Click" CausesValidation="false" />
        <br />
        <br />
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body></center>
</html>
