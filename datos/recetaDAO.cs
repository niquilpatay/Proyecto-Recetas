using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using actividadParcialQuilpa.dominio;
using actividadParcialQuilpa.datos;

namespace actividadParcialQuilpa.datos
{
    //3er paso: crear recetaDAO, implementar acceso y definir sus métodos
    //(tamb. método singleton para que haya 1 instancia)
    internal class recetaDAO : accesoDB
    {
        private static recetaDAO instancia;
        public static recetaDAO obtenerInstancia()
        {
            if (instancia == null)
            {
                instancia = new recetaDAO();
            }
            return instancia;
        }

        public DataTable listarIngredientes()
        {
            comando.Parameters.Clear();
            conectar();
            DataTable tabla = new DataTable();
            comando.CommandText = "SP_CONSULTAR_INGREDIENTES";
            tabla.Load(comando.ExecuteReader());
            desconectar();
            return tabla;
        }

        public int proximaReceta()
        {
            SqlParameter parametro = new SqlParameter("@prox", SqlDbType.Int);

            int verificacion = 0;

            try
            {
                comando.Parameters.Clear();
                conectar();
                comando.CommandText = "SP_PROXIMA_RECETA";
                parametro.Direction = ParameterDirection.Output;
                comando.Parameters.Add(parametro);
                comando.ExecuteNonQuery();

                try
                {
                    verificacion = (int)parametro.Value;
                }
                catch
                {   
                    return 1;
                }
                return (int)parametro.Value;

            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                if (conexion != null && conexion.State == ConnectionState.Open)
                {
                    desconectar();
                }
            }
        }
       
        public bool ejecutarInsert(Receta r)
        {
            bool ok = true;
            SqlTransaction transaction = null;

            try
            {
                comando.Parameters.Clear();
                conectar();

                transaction = conexion.BeginTransaction();
                comando.Transaction = transaction;
                comando.CommandText = "SP_INSERTAR_RECETA";
                comando.Parameters.AddWithValue("@tipo_receta", r.TipoReceta);
                comando.Parameters.AddWithValue("@nombre", r.Nombre);
                if (r.Chef != null)
                    comando.Parameters.AddWithValue("@cheff", r.Chef);
                else
                    comando.Parameters.AddWithValue("@cheff", DBNull.Value);
                comando.ExecuteNonQuery();
                comando.Parameters.Clear();
                int count = 1;

                foreach (DetalleReceta detalle in r.DetalleRecetas)
                {
                    comando.CommandText = "SP_INSERTAR_DETALLES";
                    comando.Parameters.AddWithValue("@id_receta", r.RecetaNro);
                    comando.Parameters.AddWithValue("@id_ingrediente", detalle.Ingrediente.IngredienteID);
                    comando.Parameters.AddWithValue("@cantidad", detalle.Cantidad);
                    count++;
                    comando.ExecuteNonQuery();
                    comando.Parameters.Clear();
                }

                transaction.Commit();
            }
            catch (Exception)
            {
                transaction.Rollback();
                ok = false;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open)
                {
                    desconectar();
                }
            }
            return ok;
        }
    }
}
