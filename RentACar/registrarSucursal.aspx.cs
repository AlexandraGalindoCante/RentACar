using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace RentACar
{
    public partial class registrarSucursal : System.Web.UI.Page
    {
        Datos capaDatos = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDdGerente();
        }

        public void CargarDdGerente()
        {
            DataTable Tabla = capaDatos.CargarListaGerente();
            ddGerente.DataSource = Tabla;
            ddGerente.DataTextField = "nombre";
            ddGerente.DataValueField = "idGerente";
            ddGerente.DataBind();
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (capaDatos.RegistrarSucursal(txtCiudad.Text, txtDireccion.Text, txtTelefono.Text, txtCorreo.Text,
                txtPagina.Text, int.Parse(ddGerente.SelectedValue.ToString())))
            {
                lblMensaje.Text = "Registro exitoso";
            }
            else
            {
                lblMensaje.Text = "Algo salio mal";
            }
        }
    }
}