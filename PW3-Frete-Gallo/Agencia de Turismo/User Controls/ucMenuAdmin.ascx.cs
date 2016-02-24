using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agencia_de_Turismo.User_Controls
{
    public partial class ucMenuAdmin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Anonimo/default.aspx");
        }
    }
}