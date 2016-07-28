<%@ Page Title="" Language="C#" MasterPageFile="~/View_Master/CustomerMasterPage.Master" AutoEventWireup="true" CodeBehind="BookDetail.aspx.cs" Inherits="Team_2BookOnlineOrderSystem.BookDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1031px;
        }
        .auto-style3 {
            width: 341px;
            text-align: right;
        }
        .auto-style4 {
            height: 20px;
        }
        .auto-style5 {
            font-family: "Book Antiqua";
            font-size: xx-large;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            height: 61px;
        }
        .auto-style8 {
            text-align: left;
            height: 24px;
        }
        .auto-style9 {
            height: 18px;
        }
        .auto-style10 {
            width: 100%;
            margin-top: 0px;
        }
        .auto-style11 {
            width: 100%;
            margin-right: 5px;
        }
        .auto-style12 {
            width: 745px;
        }
        .auto-style13 {
            width: 100%;
            margin-right: 0px;
            margin-top: 0px;
            height: 0px;
        }
        .auto-style14 {
            width: 921px;
        }
        .auto-style15 {
            height: 69px;
        }
        .newStyle1 {
            position: absolute;
        }
        .auto-style18 {
            margin-left: 140px;
        }
        .auto-style19 {
            position: absolute;
            left: 160px;
            top: 404px;
        }
        .auto-style21 {
            position: absolute;
            left: 161px;
            top: 380px;
            width: 594px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>Home&gt;Book Details <br/></td>
            
        </tr>
       
    </table>
    <table class="auto-style2">
        <tr>
            <td class="auto-style12">
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style14">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Image ID="imgCover" runat="server" Height="292px" Width="201px" />
                                    </td>
                                    <td>
                                        <table class="auto-style10" margin-top="-20px">
                                            <tr>
                                                <td>
                                                    <table class="auto-style1">
                                                        <tr>
                                                            <td class="auto-style7">
                                                                <h1 class="auto-style8">
                                                                    <asp:Label ID="lbBooktitle" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                                                                </h1>
                                                                <p class="auto-style6">
                                                                    <asp:Label ID="Label1" runat="server" Text="PAPERBACK - ENGLISH"></asp:Label>
                                                                </p>
                                                                
                                                             </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="auto-style9">
                                                                <asp:Label ID="lbBookcode" runat="server" Text="ISBN:"></asp:Label>
                                                                <asp:Label ID="lbBookcode1" runat="server" Text="Label"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbPublicationdate" runat="server" Text="Publication Date: 21/06/2016"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">                           
                                                    <table class="auto-style1">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbPages" runat="server" Text="Pages: 256"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lbCategory" runat="server" Text="Category:"></asp:Label>
                                                                <asp:Label ID="lbCategory1" runat="server" Text="Label"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">
                            <hr class="auto-style21"/>
                            <asp:Label ID="lbDescription" runat="server" Text="Description" CssClass="auto-style19" ></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="tbDescription" runat="server" TextMode="MultiLine" CssClass="auto-style18" Width="578px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                <table class="auto-style13" >
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="lbPrice" runat="server" Text="price:"></asp:Label>
                            <asp:Label ID="lbDiscountedPrice1" runat="server" Text="Label"></asp:Label>
                            <br />
                            S$:<asp:Label ID="lbPrice1" runat="server" Text="Label"></asp:Label>
                            (save
                            <asp:Label ID="lbbookDiscount" runat="server"></asp:Label>
                            )<br />
                            <span style="color: rgb(38, 46, 63); font-family: Proximanova; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 11px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">Additionally, get<span class="Apple-converted-space">&nbsp;</span></span><strong style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: inherit; line-height: 11px; font-family: Proximanova; font-size: 11px; vertical-align: baseline; color: rgb(38, 46, 63); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">free delivery</strong><span style="color: rgb(38, 46, 63); font-family: Proximanova; font-size: 11px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 11px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><span class="Apple-converted-space">&nbsp;</span>with 
                            minimum purchase of $60<br />
                            </span>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <hr/>
                            <asp:Label ID="lbInstock" runat="server" Text="IN STOCK"></asp:Label>
                            <br />
                            <asp:Label ID="lbBookqty" runat="server" Text="Label"></asp:Label>
                            <span id="ctl00_ContentPlaceHolder1_lblstock" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: inherit; line-height: 18px; font-family: Proximanova; font-size: 14px; vertical-align: baseline; color: rgb(38, 46, 63); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span class="Apple-converted-space">&nbsp;</span>copies available</span><span style="color: rgb(38, 46, 63); font-family: Proximanova; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;"><span class="Apple-converted-space">&nbsp;</span></span><br style="color: rgb(38, 46, 63); font-family: Proximanova; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;" />
                            <span id="ctl00_ContentPlaceHolder1_lblStoackStatusContent" style="margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: inherit; line-height: 18px; font-family: Proximanova; font-size: 14px; vertical-align: baseline; color: rgb(38, 46, 63); letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Usually delivered within 4-7 working days.<br />
                            <asp:TextBox ID="tbQuantity" runat="server" Height="25px" Width="51px"></asp:TextBox>
                            <asp:Button ID="btnAddtocart" runat="server" Height="30px" Text="Add To Cart" Width="104px" OnClick="btnAddtocart_Click" />
                            </span></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
