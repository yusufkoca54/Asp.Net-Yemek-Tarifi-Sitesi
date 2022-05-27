<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.Yemekler" %>

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
        .auto-style15 {
            text-align: center;
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
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDuzenle.aspx?yemekid=<%#Eval("yemekid") %>">
                                <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/images/icons8_update_50px.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="Yemekler.aspx?yemekid=<%#Eval("yemekid")%>&islem=sil">
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style13" Height="30px" Text="+" Width="32px" OnClick="Button3_Click"  />
                </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="31px" OnClick="Button4_Click"  />
                </strong></td>
                <td>YEMEK EKLEME</td>
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
                <td>YEMEK AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK MALZEMELER:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style14" Text="Ekle" OnClick="Button5_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

