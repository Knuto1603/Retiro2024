using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Retiro.Vista
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviarSolicitud(object sender, EventArgs e)
        {

            string script = "alert('Registrado con exito');";
            ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);

            Response.Redirect("PagInicioAlumno.aspx");
        }
    }
}