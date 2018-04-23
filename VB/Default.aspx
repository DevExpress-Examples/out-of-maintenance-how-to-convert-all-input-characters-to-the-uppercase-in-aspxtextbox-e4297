<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to convert all input characters to the uppercase in ASPxTextBox</title>
    <style>
        .allUpper input
        {
            text-transform: uppercase;
        }
    </style>
    <script type="text/javascript">
        function tb1_OnKeyUp(s, e) {
            var code = e.htmlEvent.keyCode;
            var caretPosition = s.GetCaretPosition();
            if (code > 40 || code < 37)
                s.SetText(s.GetText().toUpperCase());
            s.SetCaretPosition(caretPosition);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td>
                <dx:ASPxLabel ID="lbl1" runat="server" Text="A solution based on the client-side event:">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxTextBox ID="tb1" runat="server" Width="170px" CssClass="allUpper">
                    <ClientSideEvents KeyUp="tb1_OnKeyUp" />
                </dx:ASPxTextBox>
            </td>
        </tr>
        <tr>
            <td>
                <dx:ASPxLabel ID="lbl2" runat="server" Text="A solution based on MaskSettings:">
                </dx:ASPxLabel>
            </td>
            <td>
                <dx:ASPxTextBox ID="tb2" runat="server" Width="170px">
                    <MaskSettings Mask=">CCCCCCCCCCCCCCCCCCCC" />
                </dx:ASPxTextBox>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>