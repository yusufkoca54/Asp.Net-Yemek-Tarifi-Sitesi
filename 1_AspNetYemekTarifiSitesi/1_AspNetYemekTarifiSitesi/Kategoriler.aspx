<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            background-color: #CCCCCC;
        }

        .auto-style5 {
            font-size: x-large;
        }

        .auto-style6 {
            text-align: right;
        }

        .auto-style7 {
            text-align: left;
            width: 234px;
        }

        .auto-style8 {
            text-align: right;
        }

        .auto-style10 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }

        .auto-style11 {
            width: 39px;
        }

        .auto-style12 {
            width: 26px;
        }

        .auto-style13 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style14 {
            font-weight: bold;
        }

        .margintop {
            margin-top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px" OnClick="Button1_Click" Text="+" Width="32px" />
                </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" OnClick="Button2_Click" Text="-" Width="31px" />
                </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("kategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="KategoriDuzenle.aspx?kategoriid=<%#Eval("kategoriid") %>">
                                <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/icons8_update_50px.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?kategoriid=<%#Eval("kategoriid")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/icons8_delete_16px.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style2 margintop">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="32px" OnClick="Button3_Click1" />
                </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="31px" OnClick="Button4_Click1" />
                </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İCON</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style14" Text="Ekle" OnClick="Button5_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
