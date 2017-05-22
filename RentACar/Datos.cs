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
                cadenaConexion = @"Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Rent a car;Data Source=USUARIO-PC\SQLEXPRESS";             
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

        public bool RegistrarVehiculo(string placa,string marca,string linea, string modelo, 
            float cilindraje,string color,string servicio,string clase,string tipoCarroceria,
            string combustible, string capacidad, string numMotor, string vin,string numSerie, 
            string numChasis,string propietario, string docPropietario,float precio)
        {
            if (Conectar())
            {
                SqlCommand comando = new SqlCommand();
                comando.Connection = Conexion;
                comando.CommandType =CommandType.StoredProcedure;
                comando.CommandText = "registrarVehiculo";
                comando.Parameters.AddWithValue("@placa", placa);
                comando.Parameters.AddWithValue("@marca", marca);
                comando.Parameters.AddWithValue("@linea", linea);
                comando.Parameters.AddWithValue("@modelo", modelo);
                comando.Parameters.AddWithValue("@cilindraje_cc", cilindraje);
                comando.Parameters.AddWithValue("@color", color);
                comando.Parameters.AddWithValue("@servicio", servicio);
                comando.Parameters.AddWithValue("@clase_vehiculo", clase);
                comando.Parameters.AddWithValue("@tipo_carroceria", tipoCarroceria);
                comando.Parameters.AddWithValue("@combustible", combustible);
                comando.Parameters.AddWithValue("@capacidad", capacidad);
                comando.Parameters.AddWithValue("@num_motor", numMotor);
                comando.Parameters.AddWithValue("@vin", vin);
                comando.Parameters.AddWithValue("@num_serie", numSerie);
                comando.Parameters.AddWithValue("@num_chasis", numChasis);
                comando.Parameters.AddWithValue("@propietario", propietario);
                comando.Parameters.AddWithValue("@doc_propietario", docPropietario);
                comando.Parameters.AddWithValue("@precio_compra", precio);


                try
                {
                    if (comando.ExecuteNonQuery() > 0)
                    {
                        Desconectar();
                        return true;
                    }
                    else
                    {
                        Desconectar();
                        return false;
                    }
                }
                catch
                {
                    Desconectar();
                    return false;
                }

            }
            else
            {
                return false;
            }

       }

        public bool ModificarVehiculo(string placa, string marca, string linea, string modelo,
            float cilindraje, string color, string servicio, string clase, string tipoCarroceria,
            string combustible, string capacidad, string numMotor, string vin, string numSerie,
            string numChasis, string propietario, string docPropietario, float precio){
            if (Conectar())
            {
                SqlCommand comando = new SqlCommand();
                comando.Connection = Conexion;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "modificarVehiculo";
                comando.Parameters.AddWithValue("@placa", placa);
                comando.Parameters.AddWithValue("@marca", marca);
                comando.Parameters.AddWithValue("@linea", linea);
                comando.Parameters.AddWithValue("@modelo", modelo);
                comando.Parameters.AddWithValue("@cilindraje_cc", cilindraje);
                comando.Parameters.AddWithValue("@color", color);
                comando.Parameters.AddWithValue("@servicio", servicio);
                comando.Parameters.AddWithValue("@clase_vehiculo", clase);
                comando.Parameters.AddWithValue("@tipo_carroceria", tipoCarroceria);
                comando.Parameters.AddWithValue("@combustible", combustible);
                comando.Parameters.AddWithValue("@capacidad", capacidad);
                comando.Parameters.AddWithValue("@num_motor", numMotor);
                comando.Parameters.AddWithValue("@vin", vin);
                comando.Parameters.AddWithValue("@num_serie", numSerie);
                comando.Parameters.AddWithValue("@num_chasis", numChasis);
                comando.Parameters.AddWithValue("@propietario", propietario);
                comando.Parameters.AddWithValue("@doc_propietario", docPropietario);
                comando.Parameters.AddWithValue("@precio_compra", precio);


                try
                {
                if (comando.ExecuteNonQuery() > 0)
                {
                    Desconectar();
                    return true;
                }
                else
                {
                    Desconectar();
                    return false;
                }
            }
            catch
            {
                Desconectar();
                return false;
            }

        }
            else
            {
                return false;
            }

        }

        public bool eliminarVehiculo(string placa)
        {

            if (Conectar())
            {
                SqlCommand comando = new SqlCommand();
                comando.Connection = Conexion;
                comando.CommandType = CommandType.StoredProcedure;
                comando.CommandText = "eliminarVehiculo";
                comando.Parameters.AddWithValue("@placa",placa);

                try
                {
                    if (comando.ExecuteNonQuery() > 0)
                    {
                        Desconectar();
                        return true;
                    }
                    else
                    {
                        Desconectar();
                        return false;
                    }
                }
                catch
                {
                    Desconectar();
                    return false;
                }

            }
            else
            {
                return false;
            }
        }
        public DataTable cargarVehiculo()
        {

            if (Conectar())
            {
                SqlCommand comando = new SqlCommand();
                comando.Connection = Conexion;
                comando.CommandText = "SELECT * FROM Vehiculo";
                SqlDataAdapter adaptador = new SqlDataAdapter(comando);
                DataTable tabla = new DataTable();
                adaptador.Fill(tabla);
                Desconectar();
                return tabla;
            }
            else
            {
                return null;
            }

        }





















    }



}