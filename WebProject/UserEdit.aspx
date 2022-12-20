<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserEdit.aspx.cs" Inherits="WebProject.UserEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                <link rel="stylesheet" type="text/css" href="Style.css">

    <title>Update Your Account</title>
</head>

<center><body>

    <form id="form1" runat="server" style=" font-size: medium; font-style: normal; font-weight: bold; color: #FFFFFF;" >
        <div>
            <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="150px" OnClick="ImageButton1_Click" CausesValidation="false"/>
                             <br />
            <br />
            <br />
            <br />
                <div id="menu">
        <center>
            <ul>
                <li><a href="TestInterface.aspx">Testing</a></li>
                <li><a href="AboutUss.aspx">About us</a></li>
                <li><a href="ContactUss.aspx"> Contact Us</a></li>
                <li><a href="LoginForm.aspx">Logout</a></li>

            </ul>
        </center>
    </div>
            <br />


                             <center> <asp:Label ID="Label1" runat="server" Text="Update Your Account Info" font-size="Large" ></asp:Label></center>

                             <br />
                             <br />
            <asp:Button ID="LoadDataBut" runat="server" Text="Load Your data" OnClick="LoadDataBut_Click" />
            <asp:Table ID="Table1" runat="server" Height="735px" Width="1147px" style="margin-left:35%; margin-right:25%; margin-bottom: 0px;">

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label2" runat="server" Text="UserName" ></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtUserName" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox><br />
                    
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Enabled="False" ReadOnly="True"></asp:TextBox><br />

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
                    <asp:TextBox ID="txtPass" runat="server" Enabled="False" ReadOnly="True"></asp:TextBox><br />


</asp:TableCell>
            </asp:TableRow>

            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <asp:Button ID="UpdateBut" runat="server" Text="Update" Font-Size="Medium" OnClick="UpdateBut_Click"/>
</asp:TableCell>
                <asp:TableCell runat="server">
                    <asp:Button ID="CancelBut" runat="server" Text="Cancel" Font-Size="Medium"  CausesValidation="false"/>
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        </div>
    </form>
</body>
    </center>
</html>
