<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.OrderHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT ordersID, userID, ordersDate, ordersDescription FROM orders WHERE (userID = @userID)">
        <SelectParameters>
            <asp:Parameter DefaultValue="4" Name="userID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ordersID" DataSourceID="SqlDataSource1" style="margin-right: 4px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="179px" Width="1094px">
        <Columns>
            <asp:BoundField DataField="userID" HeaderText="User ID" SortExpression="userID" />
            <asp:BoundField DataField="ordersID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="ordersID" />
            <asp:BoundField DataField="ordersDate" HeaderText="Date" SortExpression="ordersDate" />
            <asp:BoundField DataField="ordersDescription" HeaderText="Description" SortExpression="ordersDescription" />
            <asp:CommandField HeaderText="Detail" SelectText="View" ShowHeader="True" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Team2_BookDBConnectionString %>" SelectCommand="SELECT ordersDetail.ordersDetailID, ordersDetail.ordersID, ordersDetail.quantity, ordersDetail.ordersDetailDescription, product.productName FROM ordersDetail INNER JOIN product ON ordersDetail.productID = product.productID WHERE (ordersDetail.ordersID = @ordersID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ordersID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ordersDetailID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="158px" Width="1103px">
        <Columns>
            <asp:BoundField DataField="ordersID" HeaderText="Orders ID" SortExpression="ordersID" />
            <asp:BoundField DataField="ordersDetailID" HeaderText="OrdersDetail ID" InsertVisible="False" ReadOnly="True" SortExpression="ordersDetailID" />
            <asp:BoundField DataField="productName" HeaderText="Book Name" SortExpression="productName" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:BoundField DataField="ordersDetailDescription" HeaderText="Description" SortExpression="ordersDetailDescription" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <br />
</asp:Content>
