<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="WebProject.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Style.css">
    <title>LogIn</title>

</head>
<center><body>
    <form id="form1" runat="server" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF; margin-top: 0px;">
        <div>
                        <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="166px" OnClick="ImageButton1_Click" />

            <br />
            <br />
            
            <br />
            <br />
             <center> <asp:Label ID="Label1" runat="server" Text="Log In" font-size="Large"></asp:Label></center>
        </div>
        <center> 
        <asp:Table ID="Table1" runat="server" Height="175px" Width="500px"  style="text-align: center; ">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtConfPass" runat="server"></asp:TextBox>
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </center> 
        <br />
        <asp:Button ID="LoginBut" runat="server" Text="Login" Font-Size="Medium" OnClick="LoginBut_Click"/>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Not Registered?" ></asp:Label>
        <asp:Button ID="registerBtn" runat="server" Text="Register" Font-Size="Medium" OnClick="registerBtn_Click"/>
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body></center>
</html>
