using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Agencia_de_Turismo.User_Controls;

namespace Agencia_de_Turismo.Master_Pages
{
    public partial class Base : System.Web.UI.MasterPage
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            MostrarUserControl();
        }
        
        private void MostrarUserControl()
        {
            //Selector de User Control Menu
            int tipoDeUsuario = Convert.ToInt32(Session["tipoDeUsuario"]);
            switch (tipoDeUsuario)
            {
                case 0: ucMenuUsuario.Visible = true;
                        break;
                case 1: ucMenuAdmin.Visible = true;
                        break;
                default: ucMenuAnonimo.Visible = true;
                        break;
            }
        }

        
    }
}