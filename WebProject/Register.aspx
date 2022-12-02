<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebProject.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>

</head>
<center><body>
    <form id="form1" runat="server" style="background-position: center center; background-image: url('photo-1531297484001-80022131f5a1.jpeg'); background-repeat: repeat; background-attachment: inherit; font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF; background-color: #000000;">
        <div>
                        <img src="logo.png" style="align-content:center; width: 150px; height :135px;" onclick="logo_Click" />

            <br />
            <br />
            
            <br />
            <br />
             <center> <asp:Label ID="Label1" runat="server" Text="Register" ></asp:Label></center>
        </div>
        <center> 
        <asp:Table ID="Table1" runat="server" Height="787px" Width="859px"  style="text-align: center; ">

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
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
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
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar> 

</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:RadioButton ID="Male" runat="server" Text="Male" />
<asp:RadioButton ID="Female" runat="server" Text="Female" />
<asp:RadioButton ID="NotToSay" runat="server" Text="Rather Not To Say" />
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label8" runat="server" Text="Password Confirmation"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtConfPass" runat="server"></asp:TextBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Button ID="RegisterBut" runat="server" Text="Register" OnClick="RegButt_Click"/>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="CancelBut" runat="server" Text="Cancel" OnClick="CancButt_Click" />
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            </center> 
        <br />
        <br />
        <br />
        <br />
        Have an Account?<asp:Button ID="LoginBut" runat="server" Text="Login" OnClick="LoginBut_Click" />
        <br />
        <br />
        <br />
        <br />
    </form>
    <p>
        &nbsp;</p>
</body></center>
</html>
