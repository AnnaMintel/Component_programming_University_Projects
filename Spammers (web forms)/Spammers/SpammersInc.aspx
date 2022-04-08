<html>
  <head>
      <meta charset="utf-8">
    <style>
    <!--
      body { font: 10pt verdana };
      table { font: 10pt verdana };
      input { font: 10pt verdana };
    -->
        .auto-style1 {
            height: 32px;
        }
    </style>
  </head>
  <body>
    <table cellpadding="4" border="1">
      <tr bgcolor="yellow">
        <td>
Çäðàâñòâóéòå! Ìû ïðåäñòàâëÿåì ôèðìó "ÐÎÃÀ È ÊÎÏÛÒÀ".
 Åñëè Âàì èíòåðåñíû íàøè íîâèíêè è Âû ãîòîâû èõ ðåêëàìèðîâàòü, ñîîáùèòå ñâåäåíèÿ î Âàñ è 
 ìû áóäåì ïîñòîÿííî äåðæàòü Âàñ â êóðñå ñîáûòèé. Îêàçàííûå Âàìè äëÿ íàñ óñëóãè 
 áóäóò îïëà÷åíû, ïîýòîìó ñîîáùèòå íîìåð Âàøåé êðåäèòíîé êàðòû è ìû 
 çà÷èñëèì Âàì äåíåæíîå âîçíàãðàæäåíèå çà ðàñïðîñòðàíåíèå 
 èíôîðìàöèè î íàñ.
        </td>
      </tr>
    </table>
    <h3>Åñëè Âû ãîòîâû ðåêëàìèðîâàòü íàøó ôèðìó, ïîæàëóéñòà ââåäèòå Âàøè ðåêâèçèòû:</h3>
    <form runat="server">
      <table cellpadding="4">
        <tr>
          <td align="right">
              Имя
          </td>
          <td>
            <asp:TextBox ID="Name" RunAt="server" />
          </td>
          <td>
            <asp:RequiredFieldValidator
              ControlToValidate="Name"
              ErrorMessage="Ïîæàëóéñòà, ââåäèòå Âàøå èìÿ"
              Display="dynamic"
              RunAt="server"
            />
          </td>
        </tr>
        <tr>
          <td align="right">
           Âàøà E-Mail 
          </td>
          <td>
            <asp:TextBox ID="EMail" RunAt="server" />
          </td>
          <td>
            <asp:RequiredFieldValidator
              ControlToValidate="EMail"
              ErrorMessage="Ïîæàëóéñòà, ââåäèòå àäðåñ Âàøåé e-mail "
              Display="dynamic"
              RunAt="server"
            />
            <asp:RegularExpressionValidator
              ControlToValidate="EMail"
              ValidationExpression="^[\w\.-]+@[\w-]+\.[\w\.-]+$"
              ErrorMessage="Íåâåðíûé ôîðìàò e-mail àäðåñà"
              Display="dynamic"
              RunAt="server"
            />
          </td>
        </tr>
        <tr>
          <td align="right" class="auto-style1">
            Àäðåñ æèòåëüñòâà
          </td>
          <td class="auto-style1">
            <asp:TextBox ID="Address" RunAt="server" />
          </td>
          <td class="auto-style1">
          </td>
        </tr>
        <tr>
          <td align="right">
            Ãîðîä
          </td>
          <td>
            <asp:TextBox ID="City" RunAt="server" />
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td align="right">
            Îáëàñòü
          </td>
          <td>
            <asp:DropDownList ID="StateList" RunAt="server">
              <asp:ListItem Text="Áðåñòñêàÿ" RunAt="server" />
              <asp:ListItem Text="Âèòåáñêàÿ" RunAt="server" />
              <asp:ListItem Text="Ãîìåëüñêàÿ" RunAt="server" />
              <asp:ListItem Text="Ãðîäíåíñêàÿ" RunAt="server" />
              <asp:ListItem Text="Ìèíñêàÿ" RunAt="server" />
             <asp:ListItem Text="Ìîãèëåâñêàÿ" RunAt="server" />

            </asp:DropDownList>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td align="right">
            Ïî÷òîâûé èíäåêñ
          </td>
          <td>
            <asp:TextBox ID="ZipCode" RunAt="server" />
          </td>
          <td>
            <asp:RegularExpressionValidator
              ControlToValidate="ZipCode"
              ValidationExpression="^(\d{6})$"
              ErrorMessage="Íåâåðíûé èíäåêñ"
              Display="dynamic"
              RunAt="server"
            />
          </td>
        </tr>
        <tr>
          <td align="right">
              Номер банковской карты
          </td>
          <td>
            <asp:TextBox ID="CreditCardNumber" RunAt="server" />
          </td>
          <td>
            <asp:RegularExpressionValidator
              ControlToValidate="CreditCardNumber"
              ValidationExpression="^(\d{16})$"
              ErrorMessage="Íåâåðíûé íîìåð êàðòû"
              Display="dynamic"
              RunAt="server"
            />
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
            <asp:Button Text="Îòïðàâèòü çàÿâêó" OnClick="OnSignMeUp"
              RunAt="server" />
          </td>
          <td>
              
          </td>
        </tr>
      </table>
    </form>
  </body>
</html>

<script language="C#" runat="server">
  void OnSignMeUp (Object sender, EventArgs e)
  {
      if (IsValid) {
          StringBuilder sb = new StringBuilder ("Thanks.aspx?Name=", 256);
          sb.Append (Name.Text);
          sb.Append ("&EMail=");
          sb.Append (EMail.Text);

          string address = Address.Text;
          string city = City.Text;
          string state = StateList.SelectedItem.Text;
          string zip = ZipCode.Text;

          if (address.Length > 0 && city.Length > 0 && zip.Length > 0) {
              sb.Append ("&Address=");
              sb.Append (address);
              sb.Append ("&City=");
              sb.Append (city);
              sb.Append ("&State=");
              sb.Append (state);
              sb.Append ("&ZipCode=");
              sb.Append (zip);
          }

          string number = CreditCardNumber.Text;

          if (number.Length > 0) {
              sb.Append ("&CreditCardNumber=");
              sb.Append (number);
          }

          Response.Redirect (sb.ToString ());
      }
  }
</script>