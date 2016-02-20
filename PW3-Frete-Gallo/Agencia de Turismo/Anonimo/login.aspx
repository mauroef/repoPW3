<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Anonimo.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Agencia_de_Turismo.Anonimo.login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="CPHCuerpoAnonimo" runat="server">

    <!--Container de Formulario Login-->
    <div class="container">
        <div class="page-header">
            <h1>Iniciar Sesión</h1>
        </div>
        <fieldset>
            <legend>Complete el siguiente formulario</legend>
            
            <div class="form-group">
                <label for="inputEmail" ID="lblEmail" runat="server">E-mail</label>
                <asp:TextBox class="form-control" placeholder="Introduce tu mail" id="txtEmail" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="rfvEmail"
                    ControlToValidate="txtEmail"
                    Display="Dynamic"
                    ErrorMessage="*"
                    Text="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="Black" /> 
                <asp:RegularExpressionValidator 
                    ID="revEmail" 
                    runat="server" 
                    ErrorMessage="RegularExpressionValidator"
                    ControlToValidate="txtEmail" 
                    Display="Dynamic" 
                    Text="Ingrese un formato de e-mail válido" ForeColor="Black" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" >
                </asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="inputPassword" ID="lblPassword" runat="server">Contraseña</label>
                <asp:TextBox class="form-control" placeholder="Contraseña" id="txtPassword" TextMode="password" runat="server"   />
                <asp:RequiredFieldValidator
                    ID="rfvPassword"
                    ControlToValidate="txtPassword"
                    Display="Static"
                    ErrorMessage="*"
                    Text="Este campo es obligatorio!"
                    runat="server"
                    ForeColor="Black" /> 
            </div>
            <div>
                <asp:Button class="btn btn-primary" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
                <asp:Button class="btn btn-success" ID="btnNuevo" runat="server" Text="Nuevo Usuario" OnClick="btnNuevo_Click" CausesValidation="False" />
            </div>
        </fieldset>
    </div>
</asp:Content>