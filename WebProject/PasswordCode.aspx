<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordCode.aspx.cs" Inherits="WebProject.PasswordCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <title>Password Code</title>

</head>
<center><body>
    <form id="form2" runat="server" style=" font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF; margin-top: 0px;">
        <div>
            <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="150px" CausesValidation="false"/>
            <div id="menu">
                <ul>
                    <li><a href="AboutUs.html">About us</a></li>
                    <li><a href="ContactUss.html"> Contact Us</a></li>
                    <li><a href="Register.aspx">Register</a></li>
                </ul>
            </div>
        </div>
        <center> <asp:Label ID="Label1" runat="server" Text="Reset Password Code" font-size="Large"></asp:Label></center>
        <center> 
        <asp:Table ID="Table1" runat="server" Height="175px" Width="552px"  style="text-align: center; ">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="Verification Code"></asp:Label>
                    <br />
                    <br />
                    <br />
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="codeTxt" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="codeVal" runat="server" ControlToValidate="codeTxt" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />

</asp:TableCell>
           
            </asp:TableRow>
        </asp:Table>
            </center>
        <asp:Button ID="resetPassBtn" runat="server" Text="Check Code" Font-Size="Medium" OnClick="resetPassBtn_Click"/>
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