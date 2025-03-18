<%@ Page Title="OrderPage" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="HYSSCafe_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <link href="Order.css" rel="stylesheet" />

    <script runat="server">
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void rbPanel2_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        Panel1.Visible = false;
    }
    </script>

    <h1> Our <span>menu</span> </h1>
    <table class="nav-justified">
        <tr>
            <td colspan="3">
    <span style="font-size: large; color: #FF0000"><strong>Important!</strong></span><br>
        <strong>Please enter you details before ordering.</strong></td>
        </tr>
        <tr>
            <td style="width: 147px">
                <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
            </td>
            <td style="width: 173px">
                <asp:TextBox ID="txtName" runat="server" AutoPostBack="True" OnTextChanged="txtName_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="vldName" runat="server" ControlToValidate="txtName" EnableClientScript="False" ErrorMessage="You must enter your name."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 147px">
                <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone number:"></asp:Label>
            </td>
            <td style="width: 173px">
                <asp:TextBox ID="txtPhoneNumber" runat="server" AutoPostBack="True" OnTextChanged="txtPhoneNumber_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="vldPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" EnableClientScript="False" ErrorMessage="Please enter a valid Singapore phone number" ValidationExpression="[6|8|9]\d{7}|\+65[6|8|9]\d{7}|\+65\s[6|8|9]\d{7}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="vldEmail3" runat="server" ControlToValidate="txtPhoneNumber" EnableClientScript="False" ErrorMessage="You must enter your phone number."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 147px; height: 20px">
                <asp:Label ID="lblEmailAddress" runat="server" Text="Email address:"></asp:Label>
            </td>
            <td style="height: 20px; width: 173px">
                <asp:TextBox ID="txtEmail" runat="server" AutoPostBack="True" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 20px">
                <asp:RegularExpressionValidator ID="vldEmail" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="Please enter a valid email" ValidationExpression=".+@.+"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="vldEmail1" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="You must enter your email."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 147px; height: 22px;">
                <asp:Label ID="lblRetype" runat="server" Text="Retype email address:"></asp:Label>
            </td>
            <td style="width: 173px; height: 22px;">
                <asp:TextBox ID="txtRetype" runat="server" AutoPostBack="True" OnTextChanged="txtRetype_TextChanged"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:CompareValidator ID="vldRetype" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtRetype" EnableClientScript="False" ErrorMessage="Your email does not match"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="vldEmail2" runat="server" ControlToValidate="txtRetype" EnableClientScript="False" ErrorMessage="You must enter your email."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 147px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td style="width: 173px">
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
            <td>
                <asp:Label ID="lblValid" runat="server"></asp:Label>
            &nbsp;<strong>&nbsp; </strong>
            </td>
        </tr>
    </table>
    <asp:Panel ID="panelMain" runat="server">
        <br />
        <table class="nav-justified" style="height: 75px; width: 100%;">
            <tr>
                <td style="height: 37px; text-decoration: underline; font-size: xx-large;" colspan="2"><strong>Cart:</strong></td>
            </tr>
            <tr>
                <td style="height: 38px" colspan="2">
                    <asp:Label ID="lblTotal0" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="lblTotal1" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="lblTotal2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 38px; width: 298px;">&nbsp;Grand Total:<asp:Label ID="lblMONEY0" runat="server" Text="$"></asp:Label>
                    <asp:Label ID="lblTotal" runat="server">0</asp:Label>
                </td>
                <td style="height: 38px">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Clear" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCheckout" runat="server" OnClick="btnCheckout_Click" style="margin-left: 24; height: 26px;" Text="Checkout" />
                </td>
            </tr>
        </table>
        <br />
        <table class="nav-justified">
            <tr>
                <td style="border: thick outset #C0C0C0; background-color: #996633;">
                    <asp:Label ID="Label10" runat="server" style="font-size: large" Text="Filter by:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlPanel" runat="server">
                        <asp:ListItem Selected="True">Coffee</asp:ListItem>
                        <asp:ListItem>Tea</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;
                &nbsp;&nbsp;
                    <asp:Button ID="btnFilter" runat="server" OnClick="Button4_Click" Text="Search" />
                </td>
            </tr>
        </table>
        <h1 class="text-center" style="font-size: xx-large">Freshly made before delivery!</h1>
        &nbsp;<asp:Panel ID="Panel1" runat="server">
            <br />
            <table align="center" border="1" class="nav-justified" style="border: thick solid #000000; height: 334px; width: 1309px">
                <tr>
                    <td colspan="2" style="height: 242px; width: 263px">
                        <img alt="" src="../MenuImages/Espresso.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblEsspresso" runat="server" Text="Espresso($2.00)" style="font-size: large"></asp:Label>
                        <br />
                        Signature Espresso Roast with rich flavor and caramelly sweetness.<br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnEsspresso" runat="server" Text="Add to cart" OnClick="btnAddToCart8_Click" />
                    </td>
                    <td colspan="2" style="height: 242px; width: 377px">
                        <img alt="" src="../MenuImages/Caffe%20Latte.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblCaffeLatte" runat="server" Text="Caffe Latte($3.00)" style="font-size: large"></asp:Label>
                        <br />
                        Dark espresso balanced with steamed milk.<br />&nbsp;
                        <br />
                        &nbsp;<br /><br /><asp:Button ID="btnCaffeLatte" runat="server" Text="Add to cart" OnClick="btnCaffeLatte_Click" />
                    </td>
                    <td colspan="2" style="height: 242px; width: 461px">
                        <img alt="" src="../MenuImages/Caffe%20Mocha.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblCaffeMocha" runat="server" Text="Caffe Mocha($3.50)" style="font-size: large"></asp:Label>
                        <br />
                        Chocolate-flavoured combined with the extra richness of dark espresso.<br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnCaffeMocha" runat="server" OnClick="btnCaffeMocha_Click" Text="Add to cart" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 217px; height: 39px">
                        <asp:Label ID="lblQuantity" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlEspresso" runat="server">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity0" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">&nbsp;&nbsp;<asp:DropDownList ID="ddlCaffeLatte" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity1" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlCaffeMocha" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 217px">
                        <asp:Label ID="lblPreferred" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblEspresso" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred0" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblCaffeLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred1" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblCaffeMocha" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 40px; width: 217px">
                        <asp:Label ID="lblTopping" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblEspresso" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping8" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblCaffeLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping9" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblCaffeMocha" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 217px">
                        <asp:Label ID="lblSize" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbEspresso" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize0" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbCaffeLatte" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize1" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbCaffeMocha" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table align="center" border="1" class="nav-justified" style="border: thick solid #000000; height: 334px; width: 1309px">
                <tr>
                    <td colspan="2" style="height: 248px; width: -32">
                        <img alt="" src="../MenuImages/Caramel%20Macchiato.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblCaffeMacchiato" runat="server" style="font-size: large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif" Text="Caffe Macchiato($3.50)"></asp:Label>
                        <br />
                        Steamed milk with vanilla-flavoured syrup is marked with espresso.<br />
                        <br />
                        <br />
                        <asp:Button ID="btnCaffeMacchiato" runat="server" Text="Add to cart" OnClick="btnAddToCart2_Click" />
                    </td>
                    <td colspan="2" style="height: 248px; width: -36">
                        <img alt="" src="../MenuImages/Caffe%20Americano.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblCaffeAmericano" runat="server" style="font-size: large; color: #000000; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif" Text="Caffe Americano($2.00)"></asp:Label>
                        <br />
                        Espresso shots topped with hot water.<br />
                        <br />
                        <br />
                        <asp:Button ID="btnCaffeAmericano" runat="server" Text="Add to cart" OnClick="btnCaffeAmericano_Click" />
                    </td>
                    <td colspan="2" style="background-size:cover; ">
                        <img alt="" src="../MenuImages/Flat%20White.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="Label1" runat="server" style="font-size: large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: #000000" Text="Flat White($3.00)"></asp:Label>
                        <br />
                        Bold shots of espresso steamed with whole milk to create a balance flavour.<br />
                        <br />
                        <asp:Button ID="btnFlatWhite" runat="server" Text="Add to cart" OnClick="btnFlatWhite_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 217px; height: 39px">
                        <asp:Label ID="lblQuantity2" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlCaffeMacchiato" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity3" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">&nbsp;&nbsp;<asp:DropDownList ID="ddlCaffeAmericano" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity4" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlFlatWhite" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 217px">
                        <asp:Label ID="lblPreferred2" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblCaffeMacchiato" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred3" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblCaffeAmericano" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred4" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblFlatWhite" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 40px; width: 217px">
                        <asp:Label ID="lblTopping12" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblCaffeMacchiato" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping11" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblCaffeAmericano" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping10" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblFlatWhite" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 217px">
                        <asp:Label ID="lblSize2" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbCaffeMacchiato" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize3" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbCaffeAmericano" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize4" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbFlatWhite" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table align="center" border="1" class="nav-justified" style="border: thick solid #000000; height: 334px; width: 1309px">
                <tr>
                    <td colspan="2" style="height: 248px; width: -32">
                        <img src="../MenuImages/Cappuccino.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="Label7" runat="server" style="font-size: large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif" Text="Cappuccino($2.50)"></asp:Label>
                        <br />
                        Signature Espresso Roast with rich flavor and caramel.<br />
                        <br />
                        <br />
                        <asp:Button ID="btnCappuccino" runat="server" Text="Add to cart" OnClick="btnCappuccino_Click" />
                    </td>
                    <td colspan="2" style="height: 248px; width: -36">
                        <img alt="" src="../MenuImages/White%20Chocolate%20Mocha.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="Label8" runat="server" style="font-size: large; color: #000000; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif" Text="White Chocolate Mocha($4.50)"></asp:Label>
                        <br />
                        Signature espresso mixed white chocolate sauce and steamed milk.<br />
                        <br />
                        <br />
                        <asp:Button ID="btnWhiteChocolateMocha" runat="server" Text="Add to cart" OnClick="btnWhiteChocolateMocha_Click" />
                    </td>
                    <td colspan="2" style="background-size:cover; ">
                        <img alt="" src="../MenuImages/Vanilla%20Latte.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="Label9" runat="server" style="font-size: large; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: #000000" Text="Vanilla Latte($3.50)"></asp:Label>
                        <br />
                        Full-bodied espresso blended with creamy steamed milk and vanilla syrup.<br />
                        <br />
                        <br />
                        <asp:Button ID="btnVanillaLatte" runat="server" Text="Add to cart" OnClick="btnVanillaLatte_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 118px; height: 39px">
                        <asp:Label ID="lblQuantity5" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlCappuccino" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity6" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">&nbsp;&nbsp;<asp:DropDownList ID="ddlWhiteChocolateMocha" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity7" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlVanillaLatte" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 118px">
                        <asp:Label ID="lblPreferred5" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblCappuccino" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred6" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblWhiteChocolateMocha" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred7" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblVanillaLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 40px; width: 118px">
                        <asp:Label ID="lblTopping13" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblCappuccino" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping14" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblWhiteChocolateMocha" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping15" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblVanillaLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 118px">
                        <asp:Label ID="lblSize5" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbCappuccino" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize6" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbWhiteChocolateMocha" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize7" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbVanillaLatte" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <br />
            <table align="center" border="1" class="nav-justified" style="border: thick solid #000000; height: 334px; width: 1309px">
                <tr>
                    <td colspan="2" style="height: 242px; width: 204px">
                        <img alt="" src="../MenuImages/Earl%20Grey%20Tea.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblEarlGreyTea" runat="server" style="font-size: large" Text="Earl Grey Tea($2.00)"></asp:Label>
                        <br />
                        Strong black tea base with the essence of bergamot, citrus fruit with subtle lemon and floral lavender notes.<br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnEarlGreyTea" runat="server" OnClick="btnEarlGreyTea_Click" Text="Add to cart" />
                    </td>
                    <td colspan="2" style="height: 242px; width: 318px">
                        <img alt="" src="../MenuImages/Hojicha%20Tea%20Latte.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblHojichaTeaLatte" runat="server" style="font-size: large" Text="Hojicha Tea Latte($2.50)"></asp:Label>
                        <br />
                        Roasted over charcoal to evoke a warm roastiness to create the Hojicha Tea Latte<br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="btnHojichaTeaLatte" runat="server" Text="Add to cart" OnClick="btnHojichaTeaLatte_Click" />
                    </td>
                    <td colspan="2" style="height: 242px; width: 403px">
                        <img alt="" src="../MenuImages/English%20Breakfast%20Tea%20Latte.PNG" style="width: 250px; height: 250px" />
                        <br />
                        <asp:Label ID="lblEnglishBreakfastTeaLatte" runat="server" style="font-size: large" Text="English Breakfast Tea Latte($3.50)"></asp:Label>
                        <br />
                        This smooth and lightly sweetened tea embodies your finest moments within.<br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="EnglishBreakfastTeaLatte" runat="server" Text="Add to cart" OnClick="EnglishBreakfastTeaLatte_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 217px; height: 39px">
                        <asp:Label ID="lblQuantity8" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlEarlGreyTea" runat="server">
                            <asp:ListItem Selected="True">1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem Value="4"></asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity9" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">&nbsp;&nbsp;<asp:DropDownList ID="ddlHojichaTeaLatte" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="text-left" style="width: 218px; height: 39px">
                        <asp:Label ID="lblQuantity10" runat="server" Text="Quantity:"></asp:Label>
                    </td>
                    <td class="text-center" style="width: 218px; height: 39px">
                        <asp:DropDownList ID="ddlEnglishBreakfastTeaLatte" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 217px">
                        <asp:Label ID="lblPreferred8" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblEarlGreyTea" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred9" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblHojichaTeaLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblPreferred10" runat="server" Text="Preferred serve:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:RadioButtonList ID="rblEnglishBreakfastTeaLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True">Iced</asp:ListItem>
                            <asp:ListItem>Hot</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 40px; width: 217px">
                        <asp:Label ID="lblTopping16" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblEarlGreyTea" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping17" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblHojichaTeaLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                    <td style="height: 40px; width: 218px">
                        <asp:Label ID="lblTopping18" runat="server" Text="Topping($1.00):"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:CheckBoxList ID="cblEnglishBreakfastTeaLatte" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Mocha Foam</asp:ListItem>
                            <asp:ListItem>Caramel Foam</asp:ListItem>
                            <asp:ListItem>Vanilla Foam</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="height: 40px; width: 217px">
                        <asp:Label ID="lblSize8" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbEarlGreyTea" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize9" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbHojichaTeaLatte" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="text-left" style="height: 40px; width: 218px">
                        <asp:Label ID="lblSize10" runat="server" Text="Size:"></asp:Label>
                    </td>
                    <td class="text-center" style="height: 40px; width: 218px">
                        <asp:ListBox ID="lbEnglishBreakfastTeaLatte" runat="server">
                            <asp:ListItem Selected="True">S</asp:ListItem>
                            <asp:ListItem>M($1.00)</asp:ListItem>
                            <asp:ListItem>L($1.50)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    </asp:Panel>
    <br />
    <br />
    <table align="center" class="nav-justified" style="width: 1345px">
        <tr>
            <td class="modal-sm" style="width: 448px; height: 26px"></td>
            <td class="text-center" style="width: 448px; height: 26px">
                &nbsp;</td>
            <td style="width: 449px; height: 26px"></td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

