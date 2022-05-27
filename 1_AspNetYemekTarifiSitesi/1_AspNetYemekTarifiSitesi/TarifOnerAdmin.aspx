<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerAdmin.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.TarifOnerAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            width: 124px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
            height: 29px;
        }
        .auto-style14 {
            height: 29px;
        }
        .auto-style15 {
            text-align: right;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <table class="auto-style5">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12"><strong>Tarif Ad;</strong></td>
                <td>
                    <asp:TextBox ID="txttarifad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="txtmalzeme" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>İçerik:</strong></td>
                <td>
                    <asp:TextBox ID="txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>Tarif Resim:</strong></td>
                <td class="auto-style14">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
                <td>
                    <asp:TextBox ID="txtoneren" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Öneren Mail:</strong></td>
                <td>
                    <asp:TextBox ID="txtmail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Kategori:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" OnClick="Button2_Click" Text="Onayla" Width="200px" />
                    </strong></td>
            </tr>
        </table>
        </asp:Panel>
</asp:Content>

