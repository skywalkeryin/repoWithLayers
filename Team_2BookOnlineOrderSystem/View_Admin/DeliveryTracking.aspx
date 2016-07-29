<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="DeliveryTracking.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.DeliveryTracking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <asp:Label ID="Label1" runat="server" ><h2>Delivery List</h2></asp:Label>    
      <div class="contentDeliverList">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="deliveryId"
 OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
OnRowUpdating="OnRowUpdating"  onrowdatabound="DeliveryGridView_RowDataBound" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="161px" style="margin-bottom: 0px" Width="1593px">
            <Columns>
                <asp:TemplateField HeaderText="DeliveryId" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblDeliveryId" runat="server" Text='<%# Bind("DeliveryId") %>'></asp:Label>
                    </ItemTemplate>                  

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="OrderId" ItemStyle-Width="150" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblOrderId" runat="server" Text='<%# Bind("OrderId") %>'></asp:Label>
                    </ItemTemplate>                   

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserId" ItemStyle-Width="150" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblUserId" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                    </ItemTemplate>                  

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="UserName" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblUserName" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                    </ItemTemplate>                   

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="DeliveryAddress" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblDeliveryAddress" runat="server" Text='<%# Bind("DeliveryAddress") %>'></asp:Label>
                    </ItemTemplate>                   

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="DeliveryDate" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblDeliveryDate" runat="server" Text='<%# Bind("DeliveryDate", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>                   

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="DeliveryStatus" ItemStyle-Width="150">
                    <ItemTemplate>
                        <asp:Label ID="lblDeliveryStatus" runat="server" Text='<%# Eval("DeliveryStatus") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDeliveryStatus" runat="server" Text='<%# Eval("DeliveryStatus") %>'></asp:TextBox>
                    </EditItemTemplate>

<ItemStyle Width="150px"></ItemStyle>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="false" ItemStyle-Width="150">
<ItemStyle Width="150px"></ItemStyle>
                </asp:CommandField>
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
    </div>

</asp:Content>

