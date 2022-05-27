<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style4 {
        height: 23px;
    }
    .auto-style5 {
        text-align: right;
    }
    .auto-style6 {
        height: 23px;
        text-align: right;
    }
    .auto-style7 {
        text-align: right;
        height: 26px;
    }
    .auto-style8 {
        height: 26px;
    }
    .auto-style9 {
        font-weight: bold;
        font-style: italic;
        margin-left: 49px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Tarif Ad:</strong></td>
        <td class="auto-style8">
            <asp:TextBox ID="txttarifAd" runat="server" Width="250px" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="txtmalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="txtyapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Resim:</strong></td>
        <td class="auto-style4">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="rcorners2" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Tarif Öneren:</strong></td>
        <td>
            <asp:TextBox ID="txttarifoner" runat="server" Width="250px" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong>Mail Adres:</strong></td>
        <td>
            <asp:TextBox ID="txtmailadres" runat="server" TextMode="Email" Width="250px" CssClass="rcorners2"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong><em>
            <asp:Button ID="btntarifoner" runat="server" BackColor="#666699" CssClass="auto-style9" Height="40px" Text="Tarif Öner" Width="150px" OnClick="btntarifoner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>
