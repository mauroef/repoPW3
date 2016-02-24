using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agencia_de_Turismo.Admin.paquetes
{
    public partial class listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                /*
                 Usuario usuario = new Usuario();
                usuario = (Usuario)Session["Usuario"];

                if (usuario == null)
                {
                    HttpContext.Current.Session.Clear();
                    HttpContext.Current.Session.Abandon();
                    Response.Redirect(@"..\Login.aspx", false);
                    return;
                }

                           
                 
                 */
                var paqueteRepo = new PaqueteRepositorio();

                gvListaPaquetes.DataSource = paqueteRepo.ObtenerListaDePaquetes();
                gvListaPaquetes.DataBind();
            }
        }





        /*  
        
         protected void gvListaPaquetes_RowCommand(object sender, GridViewCommandEventArgs e)
         {
             if (e.CommandName == "Eliminar")
             {
                 var paqueteRepo = new PaqueteRepositorio();
    /*
             
                
                 //OBTENGO Paquete SELECCIONADO
                 int rowIndex = Convert.ToInt32(e.CommandArgument);
                 int paquete = Convert.ToInt32(gvListaPaquetes.Rows[rowIndex].Cells[0].Text);

                 paqueteRepo.EliminarPaquete(paquete);
                 Response.Redirect(@"\Admin\paquetes\eliminar.aspx", false);

             }
         }
         
          */



    }
}