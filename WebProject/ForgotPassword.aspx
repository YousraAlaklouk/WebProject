<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebProject.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <title>Forgot Password</title>

</head>
<center><body>
    <form id="form1" runat="server" style=" font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF; margin-top: 0px;">
        <div>
            <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="150px" CausesValidation="false" OnClick="homeBtn_Click"/>
            <div id="menu">
                <ul>
                    <li><a href="AboutUs.aspx">About us</a></li>
                    <li><a href="ContactUss.aspx"> Contact Us</a></li>
                    <li><a href="Register.aspx">Register</a></li>
                </ul>
            </div>
        </div>
        <center> <asp:Label ID="Label1" runat="server" Text="Reset Password" font-size="Large"></asp:Label></center>
        <center> 
        <asp:Table ID="Table1" runat="server" Height="175px" Width="552px"  style="text-align: center; ">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                    <br />
                    <br />
                    <br />
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="passTxt" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="passVal" runat="server" ControlToValidate="passTxt" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />

</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text="Confirm Password"></asp:Label>
                    <br />
                    <br />
                    <br />
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="conPassTxt" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="conPassVal" runat="server" ControlToValidate="conPassTxt" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="passConfCom" runat="server" ControlToCompare="passTxt" ControlToValidate="conPassTxt" ErrorMessage="Please write the same password" ForeColor="Red"></asp:CompareValidator>
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </center>
        <br />
        <asp:Button ID="resetPassBtn" runat="server" Text="ResetPassword" Font-Size="Medium" OnClick="resetPassBtn_Click"/>
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