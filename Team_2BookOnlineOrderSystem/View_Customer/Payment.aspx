<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 118px;
        }
        .auto-style3 {
            width: 176px;
        }
        .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 326px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 233px">Congignee</td>
            <td style="width: 419px">Delivery Address</td>
            <td style="width: 282px">Contact Number</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 233px; height: 22px">
                <asp:Label ID="lbCustomerName" runat="server" Text="CustomerName"></asp:Label>
            </td>
            <td style="width: 419px; height: 22px">
                <asp:Label ID="lbDeliveryAddress" runat="server" Text="DeliveryAddress"></asp:Label>
            </td>
            <td style="width: 282px; height: 22px">
                <asp:Label ID="lbContactNumber" runat="server" Text="ContactNumber"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Edit</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Delivery Date:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtDeliveryDate" runat="server" TextMode="Date" Width="155px"></asp:TextBox>
            </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 234px">Payment Method</td>
            <td style="width: 442px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 234px">&nbsp;</td>
            <td style="width: 442px">
                <asp:RadioButtonList ID="rblPaymentMode" runat="server">
                    <asp:ListItem Selected="True">Cash</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">

    </asp:PlaceHolder>
    <br />
    <br />
    <%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT product.productName, product.productDescription, product.productPrice, shoppingCart.quantity FROM product INNER JOIN shoppingCart ON product.productID = shoppingCart.productID"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
            <asp:BoundField DataField="productDescription" HeaderText="productDescription" SortExpression="productDescription" />
            <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        </Columns>
    </asp:GridView>--%>
    <br />
    <br />
    Add Delivery Note :
    <asp:TextBox ID="txtDeliveryDescrip" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="width: 689px; height: 22px;">
                <asp:Label ID="lbSubTotalSelect" runat="server" Text="Books selected, Subtotal Price:"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:Label ID="lbSubTotal" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 689px">
                <asp:Label ID="lable1" runat="server" Text="Delivery Cost:"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:Label ID="lbDeliverCost" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 689px; height: 22px">
                <asp:Label ID="Label2" runat="server" Text="Total:"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:Label ID="lbTotal" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 689px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnConfirmPayment" runat="server" Text="Confirm Payment" OnClick="btnConfirmPayment_Click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
