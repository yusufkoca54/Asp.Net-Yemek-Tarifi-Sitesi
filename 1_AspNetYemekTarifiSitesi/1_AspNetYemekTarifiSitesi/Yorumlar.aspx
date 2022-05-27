<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style12 {
            width: 26px;
        }

        .auto-style13 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style11 {
            width: 39px;
        }

        .auto-style10 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }

        .auto-style2 {
            background-color: #CCCCCC;
        }

        .auto-style7 {
            text-align: left;
            width: 234px;
        }

        .auto-style5 {
            font-size: x-large;
        }

        .auto-style8 {
            text-align: right;
        }

        .auto-style6 {
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px"  Text="+" Width="32px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="31px" OnClick="Button2_Click" />
                    </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YorumDetay.aspx?yorumid=<%#Eval("yorumid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/icons8_update_50px.png" Width="30px" /></a>
                            </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/icons8_delete_16px.png" Width="30px" />
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style=" background-color: #CCCCCC; margin-top:5px; margin-bottom:5px;"></div>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px"  Text="+" Width="32px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="31px" OnClick="Button4_Click"  />
                    </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style2">
        <asp:DataList ID="DataList2" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                           <a href="YorumDetay.aspx?yorumid=<%#Eval("yorumid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/icons8_update_50px.png" Width="30px" /></a>
                            </td>
                        <td class="auto-style6">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/icons8_delete_16px.png" Width="30px" />
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
