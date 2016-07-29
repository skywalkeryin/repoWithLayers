<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.ConfirmBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 133px;
        }
        .auto-style5 {
            width: 158px;
        }
        .auto-style6 {
            width: 131px;
        }
        .auto-style7 {
            width: 139px;
        }
        .auto-style8 {
            width: 146px;
        }
        .auto-style9 {
            width: 133px;
            height: 23px;
        }
        .auto-style10 {
            width: 139px;
            height: 23px;
        }
        .auto-style11 {
            width: 146px;
            height: 23px;
        }
        .auto-style12 {
            width: 158px;
            height: 23px;
        }
        .auto-style13 {
            width: 131px;
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            width: 153px;
        }
        .auto-style16 {
            height: 23px;
            width: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label2" runat="server" Text="Delivery Address"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Contact Number"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Payment Mode"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Delivery Date"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:Label ID="Label7" runat="server" Text="Delivery Desciption"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Total Amount"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="lbName" runat="server" ></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:Label ID="lbAddress" runat="server" ></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="lbContactNumber" runat="server" ></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="lbPaymentMode" runat="server" ></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="lbDate" runat="server" ></asp:Label>
            </td>
            <td class="auto-style16">
                <asp:Label ID="lbDescription" runat="server" ></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="lbTotalAmount" runat="server" ></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
