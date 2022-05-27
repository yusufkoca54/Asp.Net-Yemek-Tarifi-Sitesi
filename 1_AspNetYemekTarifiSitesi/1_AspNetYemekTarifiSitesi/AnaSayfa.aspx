<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            font-size: x-large;
            color: #FF6699;
            background-color: #333333;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style4">
                <tr>
                    <td><strong>
                        
                    <a href="YemekDetay.aspx?yemekid=<%#Eval("yemekid") %>"><asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("yemekAd") %>'></asp:Label>
                      </a></strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:<asp:Label ID="Label4" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi:<asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style6"><em>Eklenme Tarihi:</em></span><em><asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                        </em><span class="auto-style6"><em>&nbsp;- Puan:</em></span><em><asp:Label ID="Label7" runat="server" CssClass="auto-style6" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                        </em></strong></td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong><em>Resim:</em><asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("yemekResim") %>' Width="300px" />
                        </strong></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>

