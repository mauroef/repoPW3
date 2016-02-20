<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucMenuAdmin.ascx.cs" Inherits="Agencia_de_Turismo.User_Controls.ucMenuAdmin" %>

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
        <li><a href="../../Anonimo/default.aspx">Inicio <span class="sr-only">(current)</span></a></li>
        <li><a href="../paquetes/listado.aspx">Listado de Paquetes</a></li>
        <li><a href="../paquetes/nuevo.aspx">Creacion de Paquetes</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>