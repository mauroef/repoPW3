<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Admin.master" AutoEventWireup="true" CodeBehind="nuevo.aspx.cs" Inherits="Agencia_de_Turismo.Admin.paquetes.nuevo" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoAdmin" runat="server">

    <!--Container de Formulario Nuevo Paquete-->
    <div class="container">
        <div class="page-header">
            <h1>Creación de Paquetes</h1>
        </div>
        <fieldset>
            <legend>Complete el siguiente formulario</legend>
            
            <div class="form-group">       
                <asp:Label class="control-label" ID="lblFoto" runat="server" Text="Foto"></asp:Label>
                <asp:FileUpload ID="fuFoto" runat="server" />
                <asp:Button ID="btnUpload" runat="server" Text="Subir Archivo" OnClick="btnUpload_Click" ValidationGroup="ttt" />
                <asp:RequiredFieldValidator ID="rfvFoto" runat="server" ControlToValidate="fuFoto" ErrorMessage="*" ValidationGroup="ttt">Este campo es obligatorio</asp:RequiredFieldValidator>
            </div>
            <asp:Label ID="lblArchivo" runat="server"></asp:Label>
            <br />
             <asp:Label ID="lblEstado" runat="server"></asp:Label>
            <br />  
            <br />  
            
            
             <div class="form-group">
                <asp:Label class="control-label" ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox class="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="*">Este campo es obligatorio</asp:RequiredFieldValidator>
            </div>
      
            <div class="form-group">
                <asp:Label class="control-label" ID="lblDescripcion" runat="server" Text="Descripción"></asp:Label>
                <asp:TextBox class="form-control" ID="txtDescripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="*" ValidationGroup="">Este campo es obligatorio</asp:RequiredFieldValidator>
            </div>

                  
             
            <div class="form-group">   
                <asp:Label class="control-label" ID="lblFechaInicio" runat="server" Text="Fecha inicio (dd/mm/aaaa)"></asp:Label>
                <asp:TextBox class="form-control" ID="txtFechaInicio" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFechaInicio" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="*">Este campo es obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revFechaInicio" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="Formato de fecha no válido (dd/mm/aaaa)" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            
            <div class="form-group"></div>  
            <asp:Label class="control-label" ID="lblFechaFin" runat="server" Text="Fecha fin (dd/mm/aaaa)"></asp:Label>
            <asp:TextBox class="form-control" ID="txtFechaFin" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFechaFin" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="*">Este campo es obligatorio</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revFechaFin" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="Formato de fecha no válido (dd/mm/aaaa)" ValidationExpression="^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[-/.](19|20)\d\d$" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:CompareValidator ID="cvFechaFin" runat="server" ControlToCompare="txtFechaInicio" ControlToValidate="txtFechaFin" ErrorMessage="La fecha de finalización debe ser mayor que la de inicio" Operator="GreaterThan" Display="None" Type="Date"></asp:CompareValidator>
    
            <div class="form-group">      
                <asp:Label class="control-label" ID="lblLugaresDisp" runat="server" Text="Lugares disponibles"></asp:Label>
                <asp:TextBox class="form-control" ID="txtLugaresDisp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLugaresDisp" runat="server" ControlToValidate="txtLugaresDisp" ErrorMessage="*">Este campo es obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revLugaresDisp" runat="server" ControlToValidate="txtLugaresDisp" ErrorMessage="Solo números enteros positivos" ValidationExpression="^\+?(0|[1-9]\d*)$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
         
            <div class="form-group">
                <asp:Label ID="lblPrecio" runat="server" Text="Precio por persona"></asp:Label>
                <asp:TextBox class="form-control" ID="txtPrecio" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPrecio" runat="server" ControlToValidate="txtPrecio" ErrorMessage="*">Este campo es obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPrecio" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Solo números enteros positivos" ValidationExpression="^\+?(0|[1-9]\d*)$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <div class="checkbox">
                    <asp:CheckBox ID="cbxDestacado" runat="server" Text="Destacado" />
                </div>
            </div>
        
            <div class="form-group">
                <asp:Button class="btn btn-primary" ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
                <asp:LinkButton class="btn btn-warning" ID="btnVolverAnterior" runat="server" CausesValidation="False" Text="Volver" OnClick="btnVolverAnterior_Click"></asp:LinkButton>
                <br />
                <br />
                <asp:Label ID="lblResultadoNuevoPaquete" runat="server"></asp:Label>
                
            </div>
        </fieldset>
    </div>
    
</asp:Content>