<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateMember.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.Member.CreateMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 286px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="auto-style1">
        <tr>
            <td class="auto-style2"> <h3><b>Create New Account</b></h3></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Member Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPassword" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Phone No:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPhoneNo" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address:</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="165px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description</td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" Width="165px"></asp:TextBox>
            </td>
           
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCreate" runat="server" Text="Create" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
</asp:Content>
