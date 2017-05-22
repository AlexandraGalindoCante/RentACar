using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RentACar
{
    public partial class modificarVehiculo : System.Web.UI.Page
    {

        Datos capaDatos = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarVehiculo();
            }
        }



        public void cargarVehiculo()
        {
            DataTable Tabla = capaDatos.cargarVehiculo();
            drpListar.DataSource = Tabla;
            drpListar.DataTextField = "placa";
            drpListar.DataValueField = "placa";
            drpListar.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            capaDatos.ModificarVehiculo(drpListar.SelectedValue.ToString(),txtMarca.Text, txtLinea.Text, txtModelo.Text,
              float.Parse(txtCilindraje.Text), txtColor.Text, txtServicio.Text, txtClaseVeh.Text,
              txtCarroceria.Text, txtCombustible.Text, txtCapacidad.Text, txtMotor.Text, txtVin.Text,
              txtSerie.Text, txtChasis.Text, txtPropietario.Text, txtDocumento.Text, float.Parse(txtPrecio.Text));


            txtPlaca.Visible = true;
            txtMarca.Visible = true;
            txtLinea.Visible = true;
            txtModelo.Visible = true;
            txtCilindraje.Visible = true;
            txtColor.Visible = true;
            txtServicio.Visible = true;
            txtClaseVeh.Visible = true;
            txtCarroceria.Visible = true;
            txtCombustible.Visible = true;
            txtCapacidad.Visible = true;
            txtMotor.Visible = true;
            txtVin.Visible = true;
            txtSerie.Visible = true;
            txtChasis.Visible = true;
            txtPropietario.Visible = true;
            txtDocumento.Visible = true;

            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label17.Visible = true;
            Label16.Visible = true;
            Label15.Visible = true;
            Label14.Visible = true;
            Label13.Visible = true;
            Label12.Visible = true;
            Label11.Visible = true;
            Label11.Visible = true;
            Label10.Visible = true;
            Label18.Visible = true;


            


        }



        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (capaDatos.ModificarVehiculo(drpListar.SelectedValue.ToString(), txtMarca.Text, txtLinea.Text, txtModelo.Text,
              float.Parse(txtCilindraje.Text), txtColor.Text, txtServicio.Text, txtClaseVeh.Text,
              txtCarroceria.Text, txtCombustible.Text, txtCapacidad.Text, txtMotor.Text, txtVin.Text,
              txtSerie.Text, txtChasis.Text, txtPropietario.Text, txtDocumento.Text, float.Parse(txtPrecio.Text))

)
            {
                lblMsj.Text = "Vehiculo modificado";
            }
            else
            {
                lblMsj.Text = "Algo salio mal";
            }

        }

       
    }
}