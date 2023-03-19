using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using actividadParcialQuilpa.datos;
using actividadParcialQuilpa.dominio;

namespace actividadParcialQuilpa.servicios.implementación
{
    //6to paso: definir servicio de receta, implementar interfaz de servicio
    //dentro de los métodos de recetaServicio,llamar a métodos de gestordb (carpeta datos)
    //crear variable privada iRecetaDAO (carpeta datos)
    internal class recetaServicio : iServicio
    {
        private iRecetaDAO dao;
        public recetaServicio()
        {
            dao = new gestorDB();
        }

        public DataTable listarIngredientes()
        {
            return dao.getListarIngredientes();
        }
        public int proximaReceta()
        {
            return dao.getProximaReceta();
        }
        public bool ejecutarInsert(Receta r)
        {
            return dao.getEjecutarInsert(r);
        }
    }
}
