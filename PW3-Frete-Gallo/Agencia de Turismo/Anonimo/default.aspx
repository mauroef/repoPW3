<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Anonimo.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Agencia_de_Turismo.Anonimo._default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoAnonimo" runat="server">
    
    <div class="container">
        <div class="page-header">
            <h1>Paquetes Destacados</h1>
        </div>
    </div>
    
    <div class="container">
        <asp:GridView ID="gvPaquetes" runat="server" AutoGenerateColumns="False" ShowHeader="false">
            <Columns>
                <asp:TemplateField HeaderText="Foto">
                    <ItemTemplate>
                        <asp:Image ID="imgPaquete" runat="server" ImageUrl='<%# Bind("Foto") %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>