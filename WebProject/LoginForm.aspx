<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="WebProject.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <title>LogIn</title>

</head>
<center><body>
    <form id="form1" runat="server" style=" font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF; margin-top: 0px;">
        <div>
            <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="166px" OnClick="ImageButton1_Click" CausesValidation="false"/>
            <div id="menu">
                <ul>
                    <li><a href="AboutUs.html">About us</a></li>
                    <li><a href="ContactUss.html"> Contact Us</a></li>
                    <li><a href="Register.aspx">Register</a></li>
                </ul>
            </div>
        </div>
        <center> <asp:Label ID="Label1" runat="server" Text="Log In" font-size="Large"></asp:Label></center>
        <center> 
        <asp:Table ID="Table1" runat="server" Height="175px" Width="500px"  style="text-align: center; ">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="UserName Or Email"></asp:Label>
                    <br />
                    <br />
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="userNameVal" runat="server" ControlToValidate="txtUserName" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                    <br />
                    <br />
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="passVal" runat="server" ControlToValidate="txtPass" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </center> 
        <br />
        <asp:Button ID="LoginBut" runat="server" Text="Login" Font-Size="Medium" OnClick="LoginBut_Click"/>
        
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Not Registered?" ></asp:Label>
        <asp:Button ID="registerBtn" runat="server" Text="Register" CausesValidation="false" Font-Size="Medium" OnClick="registerBtn_Click" />
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body></center>
</html>
