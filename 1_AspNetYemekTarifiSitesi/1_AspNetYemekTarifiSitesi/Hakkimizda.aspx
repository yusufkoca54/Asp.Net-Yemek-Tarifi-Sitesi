<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="_1_AspNetYemekTarifiSitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        &nbsp;<div class="auto-style5">
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        </div>
        <asp:Image ID="Image1" runat="server" Height="150px" Width="450px" ImageUrl="~/images/images.jfif" />
</asp:Content>

