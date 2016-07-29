<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.Payment" Theme="Theme1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
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
        .auto-style6 {
            width: 233px;
            height: 23px;
        }
        .auto-style7 {
            width: 419px;
            height: 23px;
        }
        .auto-style8 {
            width: 282px;
            height: 23px;
        }
        .nav-justified {
            margin-right: 207px;
            width: 1051px;
        }
        .auto-style12 {
            width: 178px;
            height: 154px;
        }
        .auto-style13 {
            width: 442px;
            height: 154px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style6">Congignee</td>
            <td class="auto-style7">Delivery Address</td>
            <td class="auto-style8">Contact Number</td>
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
        </tr>       
    </table>
    <table class="auto-style1">
        <tr>
            <td  >Delivery Date:</td>            
            <td class="auto-style4">
                <asp:TextBox ID="txtDeliveryDate" runat="server" TextMode="Date" style="margin-left: 0px" ></asp:TextBox>
            </td>          
        </tr>
    </table>
    <br />
    <br />
    <table class="nav-justified">
        <tr>
            <td class="auto-style12">Payment Method</td>
            <td class="auto-style13">
                <asp:RadioButtonList ID="rblPaymentMode" runat="server">
                    <asp:ListItem Selected="True">Cash</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                </asp:RadioButtonList>
            </td>           
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
                <asp:Label ID="lbSubTotal" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 689px">
                <asp:Label ID="lable1" runat="server" Text="Delivery Cost:"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:Label ID="lbDeliverCost" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 689px; height: 22px">
                <asp:Label ID="Label2" runat="server" Text="Total:"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:Label ID="lbTotal" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 689px">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnConfirmPayment" runat="server" Text="Confirm Payment" OnClick="btnConfirmPayment_Click" Height="46px" Width="145px" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
