using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace RentACar
{
    public partial class eliminarSucursal : System.Web.UI.Page
    {
        Datos capaDatos = new Datos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDdSucursal();
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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (capaDatos.eliminarSucursal(int.Parse(ddSucursal.SelectedValue.ToString())))
            {
                lblMensaje.Text = "Sucursal eliminada";
            }
            else
            {
                lblMensaje.Text = "Algo salio mal";
            }
        }
    }
}