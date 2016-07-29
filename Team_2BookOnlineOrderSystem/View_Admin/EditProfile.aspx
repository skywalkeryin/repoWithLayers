<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.AdminEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
        .auto-style3 {
            width: 300px;
        }
           .auto-style17 {
               width: 314px;
           }
           .auto-style18 {
               width: 196px;
           }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <h2> <asp:Label ID="Label6" runat="server" Text="Edit Member Information"></asp:Label></h2>
     <table class="create-member">
        <tr>
            <td class="auto-style18"  >
                <asp:Label ID="Label1" runat="server" Text="Member Name"></asp:Label>
            </td>
            <td class="auto-style17" >
                <asp:TextBox ID="txtUserName" runat="server" Width="200px" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td  >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter Member Name" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>       
        <tr>
            <td class="auto-style18"  >
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="auto-style17" >
                <asp:TextBox ID="txtEmail" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td >
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style18"  >Phone No</td>
            <td class="auto-style17" >
                <asp:TextBox ID="txtPhoneNo" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Phone No" ForeColor="Red" ControlToValidate="txtPhoneNo"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td class="auto-style18"  >
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style17" >
                <asp:TextBox ID="txtAddress" runat="server" Width="200px" height="22px"></asp:TextBox>
            </td>
            <td >
                </td>
        </tr>
        <tr>
            <td class="auto-style18"  >
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="auto-style17" >
                <asp:TextBox ID="txtDesc" runat="server" Width="200px" height="22px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td >
               </td>
        </tr>
       <%-- <tr>
            <td class="auto-style11" >
                <asp:Label ID="Label7" runat="server" Text="Change Password"></asp:Label>
            </td>
            <td class="auto-style16" >
                &nbsp;</td>
            <td >
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" >Old Password</td>
            <td class="auto-style18" >
                <asp:TextBox ID="TextBox1"  runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style19" >
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtOldPassword" ErrorMessage="Old Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style17" >New Password</td>
            <td class="auto-style18" >
                <asp:TextBox ID="txtPassword"  runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style19" >
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password and Confirm Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style11" >
                <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td class="auto-style16" >
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="200px" height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td >
                &nbsp;</td>
        </tr>--%>
    </table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCreate" runat="server" Text="Edit" OnClick="btnEdit_Click" Width="66px" Height="46px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" Width="66px" OnClientClick="Page_ValidationActive = false;" height="46px"/>
</asp:Content>
