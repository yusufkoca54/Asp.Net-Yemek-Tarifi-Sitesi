<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: left;
            height: 23px;
        }
        .auto-style7 {
            text-align: right;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="448px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style5" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label9" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong><asp:Label ID="Label10" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image2" runat="server" Height="172px" ImageUrl='<%# Eval("yemekResim") %>' Width="366px" />
                    </td>
                </tr>
                <tr>
                    <td><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style6"><strong>Puan:</strong><asp:Label ID="Label11" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                                    <em>&nbsp;&nbsp;&nbsp;&nbsp; </em></td>
                                <td class="auto-style7">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label12" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
