<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Admin.master" AutoEventWireup="true" CodeBehind="listado.aspx.cs" Inherits="Agencia_de_Turismo.Admin.paquetes.listado" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoAdmin" runat="server">
<div>
    <div>
        <p>Listado de paquetes
            <asp:GridView ID="gvListaPaquetes" runat="server" OnRowCommand="gvListaPaquetes_RowCommand" AutoGenerateColumns="False" >

                 <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" >
                    <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FechaInicio" HeaderText="Inicio" >
                    <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FechaFin" HeaderText="Fin" >
                    <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PrecioPorPersona" HeaderText="Precio por persona" >
                    <FooterStyle HorizontalAlign="Right" />
                    <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="LugaresDisponibles" HeaderText="Lugares disponibles" >
                    <HeaderStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="Destacado" HeaderText="Destacado" />
                    <asp:ButtonField Text="Eliminar Paquete" ButtonType="Button" CommandName="Eliminar" />
                </Columns>




            </asp:GridView>
        </p>
    </div>
</div>
   
</asp:Content>
