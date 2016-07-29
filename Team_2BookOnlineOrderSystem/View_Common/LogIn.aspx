<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.View_Common.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .btn1 {
            margin-left: 80px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <div class="login-main">
         <h3><b>Log In | <a href="/View_Customer/CreateMember.aspx" class="LoginBox-tab"> Create New Account</a></b></h3> 
       
        <div class="form-main">
            <div class="logIn-form-left">
                <span>Email:</span>
            </div>

            <div class="form-right">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-main">
            <div class="logIn-form-left">
                <span>Password:</span>
            </div>

            <div class="form-right">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                   <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter password" ForeColor="Red" ></asp:RegularExpressionValidator>--%>
            </div>
        </div>
        <div class="form-main">            
            <div class="form-right">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
         <div class="form-main">            
            <div class="form-right">
                <asp:Label ID="lblForget" runat="server" ><a href="/View_Customer/forgetPassword.aspx">Forget Password</a></asp:Label>
            </div>
        </div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <div class="btn1"><asp:Button ID="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click" Height="39px" Width="69px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" OnClientClick="Page_ValidationActive = false;" height="39px" width="69px" />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>

    </div>
</asp:Content>