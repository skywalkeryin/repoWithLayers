<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.AdminEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 752px;
        }
        .auto-style4 {
            width: 717px;
        }
        .auto-style5 {
            width: 755px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="create-member">
        <tr>
            <td class="auto-style4">Edit My Account</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Member Name"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Member Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPassword"  runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Phone No</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPhoneNo" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Phone No"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAddress" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDesc" runat="server" Width="200px" height="22px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
    </table>
    <asp:Button ID="btnCreate" runat="server" Text="Edit" OnClick="btnEdit_Click" />
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Content>
