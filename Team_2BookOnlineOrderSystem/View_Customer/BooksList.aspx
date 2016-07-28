<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="BooksList.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.View_Customer.BooksList"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1 class="title">Book List</h1>
<p class="title" style="margin-left: 80px">
     <asp:Label ID="lbMsg" runat="server" ForeColor="Red"></asp:Label>
</p>
     <table class="auto-style3">
         <tr>
             <td class="auto-style4">
                 <h2><asp:Label ID="Label1" runat="server" Text="Search By Category"></asp:Label></h2>
             </td>
             <td class="auto-style5">
                 <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoryName" DataValueField="categoryName">
                 </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT [categoryName] FROM [category]"></asp:SqlDataSource>
             </td>
             <td class="auto-style6">
                 <asp:TextBox ID="txtSearch" runat="server" Width="153px"></asp:TextBox>
                
             </td>
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Search" Width="93px" Height="26px" OnClick="Button1_Click" />
             </td>
         </tr>
     </table>


       <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />


       <p class="title">

           <%--OnItemCommand="DataListCake_ItemCommand"--%>
           <asp:DataList ID="DataList1" runat="server" RepeatColumns="3"  Width="1318px">

               <ItemTemplate>
                   <table class="auto-style1">
                       <tr>
                           <td rowspan="4">                            
                             
                               <%--<asp:Image ID="Image1" ImageUrl='<%#Bind("image","/Images/{0}") %>' runat="server" /> --%>   
                               <asp:Image ID="Image2" ImageUrl='<%# Eval("productImage") %>' runat="server" Height="181px" Width="141px" /> 
                                 <%--<asp:Image ID="Images"  runat="server" />--%>                            
                           </td>
                           <td>&nbsp;</td>
                           <td>
                               <asp:Label ID="lblProductName" runat="server" Text='<%# Eval("productName") %>'></asp:Label>
                               
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style1">&nbsp;</td>
                           <td class="auto-style1">
                               <asp:Label ID="lblProductCode" runat="server" Text='<%# Eval("productCode") %>'></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td>&nbsp;</td>
                           <td>
                               <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("productPrice") %>'></asp:Label>                           
                           </td>
                       </tr>
                       <tr>
                           <td colspan="2"> 
                               <asp:Button ID="Button2" Text="Detail" runat="server" Width="93px" Height="26px" OnClick="Button2_Click" CssClass='<%# Eval("productName") %>' />                             
                                <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" CssClass='<%# Eval("productName") %>' OnClick="btnAddToCart_Click"  />

                           </td>
                       </tr>
                   </table>
               </ItemTemplate>
           </asp:DataList>
       </p>
</asp:Content>
