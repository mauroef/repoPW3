<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Usuario.master" AutoEventWireup="true" CodeBehind="historial.aspx.cs" Inherits="Agencia_de_Turismo.Usuario.historial" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoUsuario" runat="server">

    <div>
        <div>
         <p>Historial de paquetes reservados</p>
        </div>

      <asp:GridView ID="GridView2" runat="server" Width="221px" AutoGenerateColumns="False" Height="99px" ShowHeaderWhenEmpty="True" >
            <Columns>
                <asp:BoundField HeaderText="Nombre" ItemStyle-Width="30" DataField="Nombre" />
                <asp:BoundField HeaderText="Fecha Inicio" ItemStyle-Width="30" DataField="Fecha Inicio" />
                <asp:BoundField HeaderText="Fecha Fin" ItemStyle-Width="30" DataField="Fecha Fin" />
                <asp:BoundField HeaderText="Cantidad" ItemStyle-Width="30" DataField="Cantidad" />
                <asp:BoundField HeaderText="Precio Total" ItemStyle-Width="30" DataField="Precio Total" />
                <asp:BoundField HeaderText="Cancelar Reserva" ItemStyle-Width="30" />
            </Columns>
        </asp:GridView>

    </div>

</asp:Content>