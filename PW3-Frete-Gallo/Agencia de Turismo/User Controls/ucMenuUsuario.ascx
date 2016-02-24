<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenuUsuario.ascx.cs" Inherits="Agencia_de_Turismo.User_Controls.ucMenuUsuario" %>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">ArgenTour</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="../Anonimo/default.aspx">Inicio <span class="sr-only">(current)</span></a></li>
        <li><a href="../GrupoUsuario/historial.aspx">Historial de Paquetes Reservados</a></li>
          <li><a href="../GrupoUsuario/reservar.aspx">Reservar Paquetes</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li>
            <asp:LinkButton ID="lbtnLogout" runat="server" Text="Logout" OnClick="lbtn_Click"></asp:LinkButton>
        </li>
      </ul>
    </div>
  </div>
</nav