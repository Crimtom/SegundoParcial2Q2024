using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SegundoParcial2Q2024.Capa_Datos
{
    public class BDConexion
    {
        public static SqlConnection obtener_conexion()
        {
            string rutaconexion = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(rutaconexion);
            conexion.Open();
            return conexion;
        }
    }
}