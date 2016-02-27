<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Anonimo.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Agencia_de_Turismo.Anonimo._default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoAnonimo" runat="server">
    
    <div class="container">
        <div class="page-header">
            <h1>Paquetes Destacados</h1>
        </div>
    </div>

    <div class="container">

    </div>

    <div class ="container">
        <asp:DataList ID="dlFotos" runat="server" RepeatColumns="3" CssClass="table">
        <ItemTemplate>
            <asp:Image ID="imgPaquete" class="img-responsive" runat="server" ImageUrl='<%# Bind("Foto") %>' Width="250" Height="250" />
        </ItemTemplate>
        <ItemStyle HorizontalAlign="Center" VerticalAlign="Bottom" BorderStyle="None" />
    </asp:DataList>
    </div>

</asp:Content>