<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DeliveryTracking.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.DeliveryTracking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="deliveryID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-right: 56px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="deliveryID" HeaderText="Delivery ID" InsertVisible="False" ReadOnly="True" SortExpression="deliveryID" />
            <asp:BoundField DataField="userID" HeaderText="User Name" SortExpression="userID" />
            <asp:BoundField DataField="ordersID" HeaderText="Order ID" SortExpression="ordersID" />
            <asp:BoundField DataField="deliveryDate" HeaderText="Delivery Date" SortExpression="deliveryDate" />
            <asp:BoundField DataField="deliveryStatus" HeaderText="Delivery Status" SortExpression="deliveryStatus" />
            <asp:BoundField DataField="deliveryAddress" HeaderText="Delivery Address" SortExpression="deliveryAddress" />
            <asp:BoundField DataField="deliveryDescription" HeaderText="Delivery Description" SortExpression="deliveryDescription" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT * FROM [delivery]"></asp:SqlDataSource>
</asp:Content>
