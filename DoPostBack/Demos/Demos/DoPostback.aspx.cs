using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Demos
{
    public partial class DoPostback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                string idControl = Request.Params.Get("__EVENTTARGET");
                string argumento = Request.Params.Get("__EVENTARGUMENT");

                string script = "";

                if (idControl.Equals("divCliente"))
                {
                    if (argumento.Equals("Evento1"))
                    {
                        script = string.Format("<script type=\"text/javascript\">alert('Llamando función de {0} con argumento {1}');</script>", txtEventArgument.Text, argumento);
                        mostrarMensaje(script);
                    }
                    else
                    {
                        script = string.Format("<script type=\"text/javascript\">alert('Llamando función de servidor nnn, con argumento {0}');</script>", argumento);
                        mostrarMensaje(script);
                    }
                }
            }
        }

        private void mostrarMensaje(string script){
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "postback", script);
        }
    }
}