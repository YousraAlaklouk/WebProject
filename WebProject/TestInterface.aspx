<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestInterface.aspx.cs" Inherits="WebProject.TestInterface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="Style.css">

    <title>Test</title>

    <style type="text/css">
        .auto-style1 {
            width: 1120px;
            height: 130px;
            text-align:center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div><center>
                        <asp:ImageButton ID="homeBtn" runat="server" ImageUrl="logo.png" width="200px" height="150px" OnClick="ImageButton1_Click" CausesValidation="false"/>
                        <br />
                        <br />
                        <br />
            <br />

              <asp:Label ID="Label1" runat="server" Text="Tests" font-size="30px" ForeColor="White" Font-Bold="True"  ></asp:Label>
                                 <br />
                                 </center>


        </div>
        <div>
            <table class="auto-style1"  >

            <td>
            <asp:Button ID="TestBut1" runat="server" Text="T1136.001\Create Account: Local Account" Font-Bold="True" OnClick="TestBut1_Click"/>
                <br />
                <asp:Button ID="delBtn" runat="server" Text="T1136.001\Delete Account: Local Account" Font-Bold="True" OnClick="delBtn_Click"/>
                <br />
                </td>
                <td>
            <asp:Button ID="TestBut2" runat="server" Text="T1115\Clipboard Data" Font-Bold="True" OnClick="TestBut2_Click" />
                    </td>

</table>

        </div>

        <div>


            <br />
            <br />


        <asp:DataList ID="DataList1" runat="server" DataKeyField="TestID" DataSourceID="SqlDataSource1" Width="869px" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" BorderColor="Blue" BorderWidth="1px" RepeatColumns="1" CellSpacing="1" GridLines="Horizontal">
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemTemplate>
                 TestID:

                <asp:Label ID="TestIDLabel" runat="server" Text='<%# Eval("TestID") %>' />
                                <br />
                                <br />


                TestName:
                <asp:Label ID="TestNameLabel" runat="server" Text='<%# Eval("TestName") %>' />
                                <br />

                <br />
                Descreption:
                <asp:Label ID="DescreptionLabel" runat="server" Text='<%# Eval("Descreption") %>' />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SecurityS&YConnectionString3 %>" SelectCommand="SELECT * FROM [Tests]"></asp:SqlDataSource>
         </div>

    <p>
        &nbsp;</p>
   <center><asp:Label ID="Label2" runat="server" Text="Testing History" font-size="30px" ForeColor="White" Font-Bold="True" ></asp:Label>
       <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" Width="742px" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" >
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
           <ItemTemplate>
               UserName:
               <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
               <br />
               Email:
               <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
               <br />
               TestID:
               <asp:Label ID="TestIDLabel" runat="server" Text='<%# Eval("TestID") %>' />
               <br />
               TestName:
               <asp:Label ID="TestNameLabel" runat="server" Text='<%# Eval("TestName") %>' />
               <br />
               Result:
               <asp:Label ID="ResultLabel" runat="server" Text='<%# Eval("Result") %>' />
               <br />
<br />
           </ItemTemplate>
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SecurityS&YConnectionString2 %>" SelectCommand="SELECT C.UserName, C.Email, R.TestID,T.TestName, R.Result FROM Result R INNER JOIN Customer C ON C.CustomerID =R.CustomerID INNER JOIN Tests T ON T.TestID = R.TestID where C.Username = @email)">
    <SelectParameters>
        <asp:SessionParameter Name="email" SessionField="email" Type="String" />
    </SelectParameters></asp:SqlDataSource>
       </center> 


            </form>

    
</body>
<div id="footer">
    <p style="float: left; font-size: large; margin-top: 12px; margin-bottom: 12px;">
        SECURITYS&Y
        <img src="Rights.png" style="width: 30px; height: 20px; vertical-align:bottom" /> 2022
    </p>
        
    <div id="footerImg">
        <a href="https://maltepe.edu.tr/"> <img id="footerGithub" src="R.png" style="width: 40px; height: 40px; margin-right:10px" /></a>
        <a href="https://github.com/YousraAlaklouk/WebProject"> <img id="footerGithub" src="GitHub_logo.png" style="width: 40px; height: 40px; " /></a>
    </div>

</div>

</html>
