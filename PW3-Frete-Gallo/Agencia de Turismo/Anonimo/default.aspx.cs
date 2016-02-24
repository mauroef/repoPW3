using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Agencia_de_Turismo.clases;

namespace Agencia_de_Turismo.Anonimo
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var paqueteRepo = new PaqueteRepositorio();

            gvPaquetes.DataSource = paqueteRepo.MostrarPaquetesDestacados();
            gvPaquetes.DataBind();
        }
    }
}