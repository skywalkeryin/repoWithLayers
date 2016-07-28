<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="CustomerEditProfile.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.CustomerEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 610px;
    }
    .auto-style2 {
        width: 581px;
    }
    .auto-style3 {
        width: 255px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
     <table class="create-member">
        <tr>
            <td class="auto-style3">Edit My Account</td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Member Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPassword"  runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone No</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPhoneNo" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAddress" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDesc" runat="server" Width="200px" height="22px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnCreate" runat="server" Text="Edit" OnClick="btnEdit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
</asp:Content>
