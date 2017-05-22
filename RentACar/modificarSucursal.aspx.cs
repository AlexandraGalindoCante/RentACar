using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RentACar
{
    public partial class modificarSucursal : System.Web.UI.Page
    {
        Datos capaDatos = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDdSucursal();
            }
            else
            {
                CargarDdGerente();
            }
        }

        public void CargarDdSucursal()
        {
            DataTable Tabla = capaDatos.CargarListaSucursal();
            ddSucursal.DataSource = Tabla;
            ddSucursal.DataTextField = "nombre";
            ddSucursal.DataValueField = "idSucursal";
            ddSucursal.DataBind();
        }
        public void CargarDdGerente()
        {
            DataTable Tabla = capaDatos.CargarListaGerente();
            ddGerente.DataSource = Tabla;
            ddGerente.DataTextField = "nombre";
            ddGerente.DataValueField = "idGerente";
            ddGerente.DataBind();
        }

        protected void ddSucursal_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable tabla = capaDatos.CargarSucursal(int.Parse(ddSucursal.SelectedValue.ToString()));
            txtCiudad.Text = tabla.Rows[0][1].ToString();
            txtDireccion.Text = tabla.Rows[0][2].ToString();
            txtTelefono.Text = tabla.Rows[0][3].ToString();
            txtCorreo.Text = tabla.Rows[0][4].ToString();
            txtPagina.Text = tabla.Rows[0][5].ToString();
            ddGerente.SelectedIndex = int.Parse(tabla.Rows[0][6].ToString());
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            if (capaDatos.ModificarSucursal(txtCiudad.Text, txtDireccion.Text, txtTelefono.Text, txtCorreo.Text,
                txtPagina.Text, int.Parse(ddGerente.SelectedValue.ToString()), int.Parse(ddSucursal.SelectedValue.ToString()) ))
            {
                lblMensaje.Text = "Modificación exitosa";
            }
            else
            {
                lblMensaje.Text = "Algo salio mal";
            }
        }
    }
}