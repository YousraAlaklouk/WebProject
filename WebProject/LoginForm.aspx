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
            <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="150px" OnClick="ImageButton1_Click" CausesValidation="false"/>
            <div id="menu">
                <ul>
                    <li><a href="AboutUs.aspx">About us</a></li>
                    <li><a href="ContactUss.aspx"> Contact Us</a></li>
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


        <asp:Label ID="Label9" runat="server" Text="Remember Me"></asp:Label> &nbsp; 
        <asp:CheckBox ID="chkRememberMe" runat="server" Text=" " ToolTip="If you checked here your user name and password will be saved for your next login"/>
        <br />
        <asp:LinkButton ID="PassLBtn" runat="server" OnClick="PassLBtn_Click">Forgot Password</asp:LinkButton>
        <br />
        <br />
        <asp:Button ID="LoginBut" runat="server" Text="Login" Font-Size="Medium" OnClick="LoginBut_Click"/>
        <br />
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
<div id="footer">
    <p style="float: left; font-size: large;margin-top:12px; margin-bottom:12px;">
        SECURITYS&Y
        <img src="Rights.png" style="width: 30px; height: 20px; vertical-align:bottom" /> 2022
    </p>
        
    <div id="footerImg">
        <a href="https://maltepe.edu.tr/"> <img id="footerGithub" src="R.png" style="width: 40px; height: 40px; margin-right:10px" /></a>
        <a href="https://github.com/YousraAlaklouk/WebProject"> <img id="footerGithub" src="GitHub_logo.png" style="width: 40px; height: 40px; " /></a>
    </div>

</div>
</html>
