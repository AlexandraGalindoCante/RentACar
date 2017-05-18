using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace RentACar
{
    public class Datos
    {
        private SqlConnection Conexion = new SqlConnection();

        string cadenaConexion = string.Empty;


        private bool Conectar()
        {
            try
            {
                cadenaConexion = @"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Rent-A-Car;Data Source=DESKTOP-L0GLE2A
";
                Conexion.ConnectionString = cadenaConexion;
                Conexion.Open();
                return true;
            }
            catch
            {
                return false;
            }
        }

        private void Desconectar()
        {
            Conexion.Close();
        }






















    }



}