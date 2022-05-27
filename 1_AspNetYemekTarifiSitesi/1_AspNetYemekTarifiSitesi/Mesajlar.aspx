<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.Mesajlar" %>
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

        .auto-style14 {
        text-align: right;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px"  Text="+" Width="32px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="31px" OnClick="Button2_Click" />
                    </strong></td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style2">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style7">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("mesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                          <a href="MesajDetay.aspx?mesajid=<%#Eval("mesajid") %>">  <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/images/icons8_view_32px.png" Width="30px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    
    
    
</asp:Content>
