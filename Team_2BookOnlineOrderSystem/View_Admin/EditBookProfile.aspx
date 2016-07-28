<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditBookProfile.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.AdminEditBookProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <h1>Edit Product</h1>
    <div class="form-control">
        <div class="form-left">
            <span>Book Code No</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtBookCode" runat="server"></asp:TextBox>
            <asp:Button ID="Find" runat="server" Text="Find" OnClick="btnFind" />
        </div>
    </div>

    <div class="form-control">
        <div class="form-left">
            <span>Category Type</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtCategory" runat="server" Enabled="False"></asp:TextBox>
           <%--<asp:DropDownList ID="dropListCategoryType" runat="server" Width="202px" DataSourceID="sqlDataSource" DataTextField="categoryName" DataValueField="categoryID" >
                </asp:DropDownList>               
                <asp:SqlDataSource ID="sqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT [categoryID], [categoryName] FROM [category]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="sqlData" runat="server"></asp:SqlDataSource>    --%>
        </div>
    </div>

    <div class="form-control">
        <div class="form-left">
            <span>Book Name</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>         
        </div>
    </div>

    <div class="form-control">
        <div class="form-left">
            <span>Quantity</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>         
        </div>
    </div>

    <div class="form-control">
        <div class="form-left">
            <span>Price</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>         
        </div>
    </div>
  
    <%--<div class="form-control">
        <div class="form-left">
            <span>Image</span>
            </div>
        <div class="form-right">
         <asp:FileUpload ID="fileUImage" runat="server" Width="205px" />
        </div>
    </div>--%>

    <div class="form-control">
        <div class="form-left">
            <span>Discount</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtDiscount" runat="server"></asp:TextBox>         
        </div>
    </div>

    <div class="form-control">
        <div class="form-left">
            <span>Discounted Price</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtDiscountedPrice" runat="server"></asp:TextBox>         
        </div>
    </div>

    <div class="form-control">
        <div class="form-left">
            <span>Description</span>
            </div>
        <div class="form-right">
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>         
        </div>
    </div>
    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" />
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblSuccess" runat="server"></asp:Label>
</asp:Content>
