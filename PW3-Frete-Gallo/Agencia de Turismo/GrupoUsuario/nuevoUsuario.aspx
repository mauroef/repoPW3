<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Usuario.master" AutoEventWireup="true" CodeBehind="nuevoUsuario.aspx.cs" Inherits="Agencia_de_Turismo.GrupoUsuario.nuevoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CPHCuerpoUsuario" runat="server">

    <div class="container">
        <div class="page-header">
            <h1>Nuevo Usuario</h1>
        </div>
        <fieldset>
            <legend>Registración</legend>                 
            
            <div class="form-group">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="control-label" ></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvNombre"
                    ControlToValidate="txtNombre"
                    Display="Dynamic"
                    ErrorMessage="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="black" Font-Bold="true" />
                <asp:RegularExpressionValidator 
                    ID="RegularExpressionNombre" 
                    runat="server" 
                    ControlToValidate="txtNombre"
                    Display="Dynamic"
                    ValidationExpression="^[a-zA-Z]*$"
                    ForeColor="black" Font-Bold="true"
                    ErrorMessage="Solo letras" />
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvApellido"
                    ControlToValidate="txtApellido"
                    Display="Dynamic"
                    ErrorMessage="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="black" Font-Bold="true" />
                <asp:RegularExpressionValidator 
                    ID="revApellido" 
                    runat="server" 
                    ControlToValidate="txtApellido"
                    Display="Dynamic"
                    ValidationExpression="^[a-zA-Z]*$"
                    ForeColor="black" Font-Bold="true"
                    ErrorMessage="Solo letras" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    ControlToValidate="txtEmail"
                    Display="Dynamic"
                    ErrorMessage="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="black" Font-Bold="true" />
                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    ControlToValidate="txtEmail"
                    Display="Dynamic"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ForeColor="black" Font-Bold="true"
                    ErrorMessage="Ingrese un formato de email válido">
                </asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="lblContrasenia" runat="server" Text="Contraseña" CssClass="control-label"></asp:Label>
                <asp:TextBox ID="txtContrasenia" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvContrasenia"
                    ControlToValidate="txtContrasenia"
                    Display="Dynamic"
                    ErrorMessage="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="black" Font-Bold="true" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblContrasenia2" runat="server" Text="Repita Contraseña" CssClass="control-label" ></asp:Label>
                <asp:TextBox ID="txtContrasenia2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvContrasenia2"
                    ControlToValidate="txtContrasenia2"
                    Display="Dynamic"
                    ErrorMessage="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="black" Font-Bold="true" />
                <asp:CompareValidator 
                    ID="cvContrasenia2" 
                    runat="server" 
                    ControlToCompare="txtContrasenia" 
                    ControlToValidate="txtContrasenia2" 
                    ForeColor="black" Font-Bold="true"
                    ErrorMessage="Las contraseñas no coinciden" Display="Dynamic" />
            </div>

            <div class="form-group">
                <!--<input type="reset"  value="Cancelar" class="btn btn-primary" />
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary"/>-->
                <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" cssClass="btn btn-primary" OnClick="btnRegistrarse_Click"/>
            </div>
        </fieldset>
    </div>
</asp:Content>
