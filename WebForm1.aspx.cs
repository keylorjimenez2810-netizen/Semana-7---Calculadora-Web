using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        float n1 = 0, n2 = 0, resultado = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void asignarValores()
        {  
            float.TryParse(tnum1.Text, out n1);
            float.TryParse(tnum2.Text, out n2);
        }

        private float menudesplegable()
        {
            if (doperaciones.SelectedIndex == 0)
            {
                asignarValores();
                resultado = n1 + n2;
            }
            else if (doperaciones.SelectedIndex == 1)
            {
                asignarValores();
                resultado = n1 - n2;
            }
            else if (doperaciones.SelectedIndex == 2)
            {
                asignarValores();
                resultado = n1 * n2;
            }
            else if (doperaciones.SelectedIndex == 3)
            {
                asignarValores();
                if (n2 != 0)
                    resultado = n1 / n2;
            }
            else if (doperaciones.SelectedIndex == 4)
            {
                resultado = (float)Math.Pow(n1, 2);
            }
            else if (doperaciones.SelectedIndex == 5)
            {
                resultado = (float)Math.Exp(n1);
            }
            else if (doperaciones.SelectedIndex == 6)
            {
                resultado = (float)Math.Pow(10, n1);
            }
            return resultado;
        }
        protected void BAceptar_Click(object sender, EventArgs e)
        {
            asignarValores();
            LResultado.Text = menudesplegable().ToString();
        }



    }
}