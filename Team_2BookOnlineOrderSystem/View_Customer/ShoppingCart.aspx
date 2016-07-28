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
            left: 471px;
            top: 350px;
            width: 82px;
            height: 24px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
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
            <td>
               
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

                </asp:GridView>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Width="72px" OnClick="btnConfirm_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
