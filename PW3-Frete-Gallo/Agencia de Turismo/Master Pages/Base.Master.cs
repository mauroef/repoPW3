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
            //variable de ucMenu
            int tipoMenu = 0;
            switch (tipoMenu)
            {
                case 1: ucMenuAdmin.Visible = true;
                        break;
                case 2: ucMenuUsuario.Visible = true;
                        break;
                default: ucMenuAnonimo.Visible = true;
                        break;
            }
        }

        
    }
}