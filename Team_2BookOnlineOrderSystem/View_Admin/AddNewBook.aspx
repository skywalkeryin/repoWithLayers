<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.AdminAddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="create-book">
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Create New Book"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" Width="200px" runat="server" Text="Category Type"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropListCategoryType" runat="server" Width="202px" DataSourceID="sqlDataSource" DataTextField="categoryName" DataValueField="categoryID" >
                </asp:DropDownList>               
                <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT [categoryID], [categoryName] FROM [category]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlData" runat="server"></asp:SqlDataSource>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Book Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtBookName" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Code No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCodeNo" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtQty" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label7" runat="server" Text="Image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="fileUImage" runat="server" Width="205px" />
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label8" runat="server" Text="Discount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDiscount" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                .</td>
        </tr>
        <tr>
            <td class="auto-style4">Discounted Price</td>
            <td>
                <asp:TextBox ID="txtDisPrice" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                .</td>
        </tr>
        <tr>
            <td class="auto-style4">Description</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server"  TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
    </table>

    <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    <asp:Label ID="lblSuccessful" runat="server" Text="test"></asp:Label>
</asp:Content>
