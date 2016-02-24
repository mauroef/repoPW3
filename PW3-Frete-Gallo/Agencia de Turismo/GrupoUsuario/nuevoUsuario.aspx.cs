using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Agencia_de_Turismo.clases;

namespace Agencia_de_Turismo.GrupoUsuario
{
    public partial class nuevoUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {


            }
        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                /*
                TurismoEntities ctx = new TurismoEntities();
                Usuario u = new Usuario();
                u.Nombre = txtNombre.Text;
                u.Apellido = txtApellido.Text;
                u.Email = txtEmail.Text;
                u.Contrasenia = txtContrasenia.Text;
                u.Admin = false;
                ctx.Usuarios.Add(u);
                ctx.SaveChanges();
                */
                var usuarioRepo = new UsuarioRepositorio();
                var u = new Usuario();
                
                u.Nombre = txtNombre.Text;
                u.Apellido = txtApellido.Text;
                u.Email = txtEmail.Text;
                u.Contrasenia = txtContrasenia.Text;
                u.Admin = false;

                if (usuarioRepo.CrearUsuario(u) > 0)
                {
                    lblResultadoNuevoUsuario.Text = "El Usuario " + u.Nombre + " " + u.Apellido + " se creo exitosamente.";
                }
                else lblResultadoNuevoUsuario.Text = "No se puedo crear el Usuario.";
                


            }
        }
    }
}