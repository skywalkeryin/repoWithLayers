<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.AdminAddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            width: 574px;
        }
        .auto-style8 {
            width: 574px;
        }
        .auto-style9 {
            height: 23px;
            width: 296px;
        }
        .auto-style10 {
            width: 296px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><asp:Label ID="Label1" runat="server" >Create New Book</asp:Label></h2>
    <table class="create-book">
        <tr>
            <td class="auto-style6" >
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style9"  ></td>
            <td class="auto-style7" ></td>
        </tr>
        <tr>
            <td class="auto-style21" >
                <asp:Label ID="Label2" Width="200px" runat="server" Text="Category Type"></asp:Label>
            </td>
            <td class="auto-style10"   >
                <asp:DropDownList ID="dropListCategoryType" runat="server" Width="202px" DataSourceID="sqlDataSource" DataTextField="categoryName" DataValueField="categoryID" >
                </asp:DropDownList>               
                <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT [categoryID], [categoryName] FROM [category]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlData" runat="server"></asp:SqlDataSource>
            </td>
            <td class="auto-style8" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"  >
                <asp:Label ID="Label3" runat="server" Text="Book Name"></asp:Label>
            </td>
            <td class="auto-style10"  >
                <asp:TextBox ID="txtBookName" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBookName" ErrorMessage="Enter Book Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" >
                <asp:Label ID="Label4" runat="server" Text="Code No"></asp:Label>
            </td>
            <td class="auto-style10"  >
                <asp:TextBox ID="txtCodeNo" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCodeNo" ErrorMessage="Enter Code No" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" >
                <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td class="auto-style10" >
                <asp:TextBox ID="txtQty" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtQty" ErrorMessage="Enter Quantity" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" >
                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style10" >
                <asp:TextBox ID="txtPrice" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td ">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPrice" ErrorMessage="Enter Price" ForeColor="Red" class="auto-style8"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" >
                <asp:Label ID="Label7" runat="server" Text="Image"></asp:Label>
            </td>
            <td class="auto-style10" >
                <asp:FileUpload ID="fileUImage" runat="server" Width="205px" />
            </td>
            <td class="auto-style8" >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21" >
                <asp:Label ID="Label8" runat="server" Text="Discount"></asp:Label>
            </td>
            <td class="auto-style10" >
                <asp:TextBox ID="txtDiscount" runat="server"  Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDiscount" ErrorMessage="Enter Discount" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"  >Discounted Price</td>
            <td class="auto-style10" >
                <asp:TextBox ID="txtDisPrice" runat="server" class="auto-style20" Width="199px"></asp:TextBox>
            </td>
            <td class="auto-style8" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDisPrice" ErrorMessage="Enter Discounted Price" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21" >Description</td>
            <td class="auto-style10" >
                <asp:TextBox ID="txtDesc" runat="server"  TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8" >
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" width="93px" Height="38px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" Width="93px" OnClientClick="Page_ValidationActive = false;" height="38px"/>
    </asp:Content>

