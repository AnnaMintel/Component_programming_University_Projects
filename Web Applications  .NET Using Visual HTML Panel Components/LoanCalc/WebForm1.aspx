<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LoanCalc.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            width: 162px;
            text-align: right;
        }
    </style>
</head>
<body>
          <h1>Mortgage Payment Calculator</h1>
          <hr />
    <form id="form1" runat="server">
        <div>
            <table cellpadding="8" class="auto-style1">
                <tr>
                    <td class="auto-style3">Principal</td>
                    <td>
                        <asp:TextBox ID="Principal" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Rate (percent)</td>
                    <td>
                        <asp:TextBox ID="Rate" runat="server" Width="165px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Term (months)</td>
                    <td>
                        <asp:TextBox ID="Term" runat="server" Width="165px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="PaymentButton" runat="server" Height="30px" Text="Compute Payment" Width="175px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
          <br />
          <hr />
          <br />
                <h3>

        <asp:Label ID="Output" runat="server"></asp:Label>
              </h3>
    </form>
</body>
</html>
