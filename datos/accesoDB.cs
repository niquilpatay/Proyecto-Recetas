using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace actividadParcialQuilpa.datos
{
    //2do paso: crear clase acceso para conectar a la base
    internal class accesoDB
    {
        protected SqlConnection conexion = new SqlConnection(Properties.Resources.cnnString);
        protected SqlCommand comando = new SqlCommand();
        protected SqlParameter parametro = new SqlParameter();

        protected void conectar()
        {
            conexion.Open();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
        }

        protected void desconectar()
        {
            conexion.Close();
        }
    }
}
