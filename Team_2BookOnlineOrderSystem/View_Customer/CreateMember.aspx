<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="CreateMember.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.Member.CreateMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">       
  
    <style type="text/css">
        .auto-style4 {
            width: 355px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><asp:Label ID="Label6" runat="server" Text="Create New Member"></asp:Label></h2>
    <p>
        <asp:Label ID="lblEmail" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <table class="create-member">
        <tr>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Member Name"></asp:Label>
            </td>
            <td class="auto-style4" >
                <asp:TextBox ID="txtUserName" runat="server" Width="200px" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter Member Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td >Password</td>
            <td class="auto-style4" >
                <asp:TextBox ID="txtPassword"  runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td >
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password and Confirm Password Mismatch" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style4" >
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style4" >
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td >Phone No</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPhoneNo" runat="server" Width="200px" height="22px" ></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationExpression="^[0-9]$" SetFocusOnError="True"
Type="Integer" runat="server" ControlToValidate="txtPhoneNo" ErrorMessage="Enter Phone No" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAddress" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="auto-style4" >
                <asp:TextBox ID="txtDesc" runat="server" Width="200px" height="22px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" Height="45px" Width="72px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"  OnClientClick="Page_ValidationActive = false;" height="45px" width="72px"/>
</asp:Content>
