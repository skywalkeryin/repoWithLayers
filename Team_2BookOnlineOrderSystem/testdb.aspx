<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="testdb.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.testdb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
    <p>
    </p>
</asp:Content>
