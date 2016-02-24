using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Agencia_de_Turismo.clases;

namespace Agencia_de_Turismo.Anonimo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var usuarioRepo = new UsuarioRepositorio();
                var usuario = usuarioRepo.ObtenerUsuario(txtEmail.Text, txtPassword.Text);
                //UsuarioRepositorio usuarioRepo = new UsuarioRepositorio();
                //Usuario usuario = usuarioRepo.ObtenerUsuario(txtEmail.Text, txtPassword.Text);
                if (usuario != null)
                {
                    HttpContext.Current.Session.Add("Usuario", usuario);
                    if (usuario.Admin)
                    {
                        Session["tipoDeUsuario"] = "1";
                        Response.Redirect("~/Admin/paquetes/listado.aspx");
                    }
                    else
                    {
                        Session["tipoDeUsuario"] = "0";
                        Response.Redirect("~/GrupoUsuario/historial.aspx");
                    }
                }
                else lblMensaje.Text = "Error! Usuario y/o contraseña incorrectos.";
            }
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GrupoUsuario/nuevoUsuario.aspx");           
        }

    }
}