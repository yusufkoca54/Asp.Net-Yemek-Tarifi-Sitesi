<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHakkimizda.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.AdminHakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style2 {
            background-color: #CCCCCC;
        }

        
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

        .auto-style14 {
        font-weight: bold;
        font-size: large;
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
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style13" Height="30px"  Text="+" Width="32px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px"  Text="-" Width="31px" OnClick="Button2_Click"  />
                    </strong></td>
                <td><strong>HAKKIMIZDA</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <strong><em>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="438px"></asp:TextBox>
                    </em></strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style14" Text="Güncelle" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
