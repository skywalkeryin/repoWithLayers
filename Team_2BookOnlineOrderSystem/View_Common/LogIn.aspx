<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.View_Common.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 85%;
            height: 160px;
        }
        .auto-style2 {
            width: 192px;
        }
        .btn1 {
            margin-left: 80px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="main">
    <h1><b>Log In | </b><a href="/Member/CreateMember.aspx" class="LoginBox-tab"> Create New Account</a></h1>   
        <div class="form-main">
            <div class="form-left">
                <span>Email:</span>
            </div>

            <div class="form-right">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="form-main">
            <div class="form-left">
                <span>Password:</span>
            </div>

            <div class="form-right">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </div>
        </div>
        <div class="form-main">            
            <div class="form-right">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
         <div class="form-main">            
            <div class="form-right">
                <asp:Label ID="lblForget" runat="server" ><a href="#">Forget Password</a></asp:Label>
            </div>
        </div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <div class="btn1"><asp:Button ID="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>
