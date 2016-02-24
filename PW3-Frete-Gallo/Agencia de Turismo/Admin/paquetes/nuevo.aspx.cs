using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agencia_de_Turismo.Admin.paquetes
{
    public partial class nuevo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                /*
                 Usuario usuario = new Usuario(); // Lo obtengo de BaseDeDatos.Modelo.Usuario
                usuario = (Usuario)Session["Usuario"];

                if (usuario == null || usuario.Admin != true)
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Session.Abandon();
                    Response.Redirect(@"..\login.aspx", false);
                    return;
                }
                 
                 
                 */

                lblEstado.Text = "";

            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (fuFoto.HasFile)
            {
                try
                {
                    if (fuFoto.PostedFile.ContentType == "image/jpeg")
                    {
                        if (fuFoto.PostedFile.ContentLength < 102400)
                        {
                            string nombreDeArchivo = fuFoto.FileName;
                            lblArchivo.Text = nombreDeArchivo;
                            fuFoto.SaveAs(Server.MapPath("~/imagenes/") + nombreDeArchivo);

                            lblEstado.Text = "El archivo esta cargado!";
                        }
                        else
                            lblEstado.Text = "El archivo debe ser menor a 100 kb!";
                    }
                    else
                        lblEstado.Text = "solo se aceptan archivos JPEG !";
                }
                catch (Exception ex)
                {
                    lblEstado.Text = "el archivo no pudo ser subido. El siguiente error ha ocurrido: " + ex.Message;
                }
            }
        }



        protected void btnCrear_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {


                var paqueteRepo = new PaqueteRepositorio();

                var paquete = new Paquete();

                paquete.Nombre = txtNombre.Text;
                paquete.Descripcion = txtDescripcion.Text;
                paquete.FechaInicio = Convert.ToDateTime(txtFechaInicio.Text);
                paquete.FechaFin = Convert.ToDateTime(txtFechaFin.Text);
                paquete.LugaresDisponibles = Convert.ToInt32(txtLugaresDisp.Text);
                paquete.PrecioPorPersona = Convert.ToInt32(txtPrecio.Text);
                paquete.Destacado = Convert.ToBoolean(cbxDestacado.Checked);
                paquete.Foto = "~/imagenes/" + lblArchivo.Text;


                //   lblResultadoNuevoPaquete.Text = "~/imagenes/" + lblArchivo.Text;

                if (paqueteRepo.CrearPaquete(paquete) > 0)
                {
                    txtNombre.Text = "";
                    txtDescripcion.Text = "";
                    txtFechaInicio.Text = "";
                    txtFechaFin.Text = "";
                    txtLugaresDisp.Text = "";
                    txtPrecio.Text = "";
                    cbxDestacado.Checked = false;
                    lblArchivo.Text = "";
                    lblEstado.Text = "";
                    lblResultadoNuevoPaquete.Text = "El Paquete fue creado exitosamente";
                }
                else
                    lblResultadoNuevoPaquete.Text = "No se pudo crear el Paquete";

            }
        }

       
      

          
    }
}
