using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentACar
{
    public partial class registrarVehiculo : System.Web.UI.Page
    {

        Datos capaDatos = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            capaDatos.RegistrarVehiculo(txtPlaca.Text, txtMarca.Text, txtLinea.Text, txtModelo.Text,
              float.Parse(txtCilindraje.Text), txtColor.Text, txtServicio.Text, txtClaseVeh.Text, 
              txtCarroceria.Text, txtCombustible.Text,txtCapacidad.Text, txtMotor.Text,txtVin.Text,
              txtSerie.Text, txtChasis.Text, txtPropietario.Text, txtDocumento.Text, float.Parse(txtPrecio.Text));
        }
    }
}