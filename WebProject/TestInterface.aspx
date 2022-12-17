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
                </td>
                <td>
            <asp:Button ID="TestBut2" runat="server" Text="T1115\Clipboard Data" Font-Bold="True" OnClick="TestBut2_Click" />
                    </td>

</table>

        </div>

        <div>


        <asp:DataList ID="DataList1" runat="server" DataKeyField="TestID" DataSourceID="SqlDataSource1" Width="742px" Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center">
            <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Names="Times New Roman" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            <ItemTemplate>
                TestName:
                <asp:Label ID="TestNameLabel" runat="server" Text='<%# Eval("TestName") %>' />
                <br />
                TestID:
                <asp:Label ID="TestIDLabel" runat="server" Text='<%# Eval("TestID") %>' />
                <br />
                Descreption:
                <asp:Label ID="DescreptionLabel" runat="server" Text='<%# Eval("Descreption") %>' />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SecurityS&YConnectionString %>" SelectCommand="SELECT [TestName], [TestID], [Descreption] FROM [Tests]"></asp:SqlDataSource>
         </div>
            </form>

</body>
</html>
