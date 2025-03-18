<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="HYSSOnline_Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <link href="Cart.css" rel="stylesheet" />



    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Name:
        <asp:Label ID="lblCheckout1" runat="server"></asp:Label>
    </p>
    <p>
        Phone Number:
        <asp:Label ID="lblCheckout2" runat="server"></asp:Label>
    </p>
    <p>
        Email:
        <asp:Label ID="lblCheckout3" runat="server"></asp:Label>
    </p>
    <p>
        Total:$
        <asp:Label ID="lblCheckout4" runat="server"></asp:Label>
    </p>
    <p>
        <strong>
        <asp:Label ID="Label1" runat="server" style="font-size: medium" Text="Payment method:"></asp:Label>
        </strong>
    </p>
    <p class="text-center">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="btn-group-lg" RepeatDirection="Horizontal" Height="28px" Width="704px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">Amex</asp:ListItem>
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>Mastercard</asp:ListItem>
        </asp:RadioButtonList>
    </p>
    <table class="nav-justified">
        <tr>
            <td style="width: 190px">
                <img alt="" src="1200px-American_Express_logo_(2018).svg.png" style="width: 120px; height: 77px" /></td>
            <td class="modal-sm" style="width: 213px">
                <img alt="" src="visa.jpg" style="width: 151px; height: 74px" /></td>
            <td>
                <img alt="" src="Mastercard-Symbol.jpg" style="width: 175px; height: 73px" /></td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 148px; text-decoration: underline">
                    <h4><strong>Card Details</strong></h4>
                </td>
                <td class="modal-lg" style="width: 366px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px; width: 148px">Card Number:</td>
                <td style="height: 20px; width: 366px">
                    <asp:TextBox ID="txtCardNumber" runat="server" AutoPostBack="True" OnTextChanged="txtCardNumber_TextChanged" Width="336px"></asp:TextBox>
                </td>
                <td style="height: 20px">
                    <asp:RequiredFieldValidator ID="vldCardNumber" runat="server" ControlToValidate="txtCardNumber" EnableClientScript="False" ErrorMessage="Please enter your card number!"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="vldCardNumber1" runat="server" ControlToValidate="txtCardNumber" EnableClientScript="False" ErrorMessage="Please enter a valid Card Number!" ValidationExpression="^[\d]{16,16}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="height: 20px; width: 148px">Expiry Date(MM/YY):</td>
                <td class="modal-lg" style="width: 366px; height: 20px">
                    <asp:TextBox ID="txtExpiry" runat="server" AutoPostBack="True" OnTextChanged="txtExpiry_TextChanged" Width="93px"></asp:TextBox>
                </td>
                <td style="height: 20px">
                    <asp:RequiredFieldValidator ID="vldExpiry" runat="server" ControlToValidate="txtExpiry" EnableClientScript="False" ErrorMessage="Please enter your card expiry date!"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="vldExpiryDate1" runat="server" ControlToValidate="txtExpiry" EnableClientScript="False" ErrorMessage="Please enter a valid expiry date!" ValidationExpression="^(0[1-9]|1[0-2])\/?([0-9]{2})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 148px">CVV: </td>
                <td class="modal-lg" style="width: 366px">
                    <asp:TextBox ID="txtCVV" runat="server" AutoPostBack="True" OnTextChanged="txtCVV_TextChanged" Width="92px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="vldCVV" runat="server" ControlToValidate="txtCVV" EnableClientScript="False" ErrorMessage="Please enter your card CVV!(3 digits from the back of your card)"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="vldExpiryDate2" runat="server" ControlToValidate="txtCVV" EnableClientScript="False" ErrorMessage="Please enter a valid CVV!" ValidationExpression="^[\d]{3,3}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 148px; height: 22px;">Name On Card:</td>
                <td class="modal-lg" style="width: 366px; height: 22px;">
                    <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" OnTextChanged="txtName_TextChanged" Width="336px"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:RequiredFieldValidator ID="vldName" runat="server" ControlToValidate="txtName" EnableClientScript="False" ErrorMessage="Please enter your name!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 148px; text-decoration: underline;"><strong>Bliing address</strong></td>
                <td class="modal-lg" style="width: 366px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 148px">Address:</td>
                <td class="modal-lg" style="width: 366px">
                    <asp:TextBox ID="txtAddress" runat="server" AutoPostBack="True" OnTextChanged="txtAddress_TextChanged" Width="337px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="vldAddress" runat="server" ControlToValidate="txtAddress" EnableClientScript="False" ErrorMessage="Please enter your address!"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 148px; height: 22px;">Postal Code:</td>
                <td class="modal-lg" style="width: 366px; height: 22px;">
                    <asp:TextBox ID="txtPostalCode" runat="server" AutoPostBack="True" OnTextChanged="txtPostalCode_TextChanged" Width="116px"></asp:TextBox>
                </td>
                <td style="height: 22px">
                    <asp:RequiredFieldValidator ID="vldPostalCode" runat="server" ControlToValidate="txtPostalCode" EnableClientScript="False" ErrorMessage="Please enter your postal code!"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Button ID="btnPay" runat="server" OnClick="btnPay_Click" Text="Pay" Width="71px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblCheckout5" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblCheckout6" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblCheckout7" runat="server" Visible="False"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblTQ" runat="server" style="font-size: xx-large"></asp:Label>

   



    <br />
    <table class="nav-justified">
        <tr>
            <td class="text-center">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="90px" ImageUrl="~/HYSSOnline/gobacktohomepage.PNG" PostBackUrl="~/HYSSOnline/Home.aspx" Width="285px" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <table class="nav-justified" style="height: 119px">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>

   



</asp:Content>

