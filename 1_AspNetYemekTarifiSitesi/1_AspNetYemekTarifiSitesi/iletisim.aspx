﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        font-size: large;
    }
    .auto-style6 {
        text-align: right;
    }
    .auto-style7 {
        font-size: x-large;
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
    <tr>
        <td class="auto-style7" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="txtGonderen" runat="server" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail Adresiniz</strong></td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="txtBaslik" runat="server" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="txtMesaj" runat="server" CssClass="rcorners2" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Gönder" Width="230px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
