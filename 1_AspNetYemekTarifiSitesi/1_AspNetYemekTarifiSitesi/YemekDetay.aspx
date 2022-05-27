<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #FFFFFF;
            font-size: 30pt;
            background-color: #ce7171;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: xx-small;
        }
        .auto-style7 {
            font-size: xx-large;
        }
        .auto-style8 {
            background-color: #FFFFCC;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <strong><em>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
        </em></strong>
        <br />
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("yorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: inset; border-bottom-width: thin">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                            &nbsp;-
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("yorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    <br />
    <div class="auto-style8">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Ad Soyad;</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>
