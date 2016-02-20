<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Admin.master" AutoEventWireup="true" CodeBehind="listado.aspx.cs" Inherits="Agencia_de_Turismo.Admin.paquetes.listado" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoAdmin" runat="server">
<div>
    <div>
        <p>Listado de paquetes</p>
    </div>
     <asp:GridView ID="GridView1" runat="server" Width="221px" AutoGenerateColumns="False" Height="99px" ShowHeaderWhenEmpty="True" >
            <Columns>
                <asp:BoundField HeaderText="Nombre" ItemStyle-Width="30" DataField="Nombre" />
                <asp:BoundField HeaderText="Inicio" ItemStyle-Width="30" DataField="Inicio" />
                <asp:BoundField HeaderText="Fin" ItemStyle-Width="30" DataField="Fin" />
                <asp:BoundField HeaderText="Precio" ItemStyle-Width="30" DataField="Precio" />
                <asp:BoundField HeaderText="Destacados" ItemStyle-Width="30" DataField="Destacados" />
                <asp:BoundField HeaderText="Eliminar" ItemStyle-Width="30" />
            </Columns>
        </asp:GridView>
</div>
   
</asp:Content>
