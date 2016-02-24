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
            if (!Page.IsPostBack) { 
            
            
            
            
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

                            lblEstado.Text = "El archivo " + lblArchivo.Text + " esta cargado!";
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


                 TurismoEntities ctx = new TurismoEntities();
                 Paquete p = new Paquete();
                 p.Nombre = txtNombre.Text;
                 p.Descripcion = txtDescripcion.Text;
                 p.FechaInicio = Convert.ToDateTime(txtFechaInicio.Text);
                 p.FechaFin = Convert.ToDateTime(txtFechaFin.Text);
                 p.LugaresDisponibles = Convert.ToInt32(txtLugaresDisp.Text);
                 p.PrecioPorPersona = Convert.ToInt32(txtPrecio.Text);
                 p.Destacado = Convert.ToBoolean(cbxDestacado.Checked);
                 p.Foto = "~/imagenes/" + lblArchivo.Text;
                 ctx.Paquetes.Add(p);
                 ctx.SaveChanges();

                 lblResultadoNuevoPaquete.Text =  "El archivo" + lblArchivo.Text + " se cargó correctamente";

             }
        }

        protected void btnVolverAnterior_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.UrlReferrer.AbsolutePath);//si se entra directo no apuntará a nada, por lo que se debe hacer un comprobación previa.
        }

      

          
    }
}
