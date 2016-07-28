<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            margin-top: 0px;
        }
        .newStyle1 {
            position: absolute;
        }
        .auto-style5 {
            position: absolute;

            left: 662px;
            top: 1216px;

            width: 82px;
            height: 24px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            height: 596px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     f<table class="auto-style1">
        <tr>
            <td class="auto-style3"><div id="Div1" runat="server" class="ContentHead">
                <p>
                    Home>Shopping Cart</p>
                <hr class="auto-style4"/>
                </div></td>
        </tr>
        <tr>
            <td><div id="ShoppingCartTitle" runat="server" class="ContentHead"><h1 class="auto-style2">Shopping Cart</h1></div></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <div>
    
                </div>
    
    <div>

    </div>
                <strong>
               <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False" ShowFooter="True" GridLines="Vertical" CellPadding="4"
        ItemType="WebDL.shoppingCart" SelectMethod="GetShoppingCartItems" 
        CssClass="table table-striped table-bordered" >   
        <Columns>
        <asp:BoundField DataField="productID" HeaderText="ProductID" SortExpression="ProductID" />    
            <asp:TemplateField HeaderText="Cover">            
                <ItemTemplate>
                     <asp:Image ID="imgCover" runat="server" Height="92px" Width="60px" ImageUrl="<%#: Item.product.productImage %>"/>
                </ItemTemplate>        
        </asp:TemplateField>      
        <asp:BoundField DataField="Product.productName" HeaderText="ProductName" />        
        <asp:BoundField DataField="product.productDiscountedPrice" HeaderText="Price " DataFormatString="{0:c}"/> 
                
        <asp:TemplateField   HeaderText="Quantity">            
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.quantity %>"></asp:TextBox> 
                </ItemTemplate>        
        </asp:TemplateField>    
        <asp:TemplateField HeaderText="Item Total">            
                <ItemTemplate>
                    <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.quantity )) *  Convert.ToDouble(Item.product.productDiscountedPrice)))%>
                </ItemTemplate>        
        </asp:TemplateField> 
        <asp:TemplateField HeaderText="Remove Item">            
                <ItemTemplate>
                    <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
                </ItemTemplate>        
        </asp:TemplateField>    
        </Columns>    
    </asp:GridView>
    

        <asp:Button ID="btnRemove" runat="server" CssClass="auto-style5" Text="Update" OnClick="btnRemove_Click" />
            <asp:Label ID="LabelTotalText0" runat="server" Text="Order Total: "></asp:Label>
            <asp:Label ID="lblTotal1" runat="server" EnableViewState="false"></asp:Label>
    

        </strong>
        <br />
             
               
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnConfirm" runat="server" Text="Check Out" Width="92px" OnClick="btnConfirm_Click" />
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
