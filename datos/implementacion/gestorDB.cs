using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using actividadParcialQuilpa.dominio;

namespace actividadParcialQuilpa.datos
{
    //4to paso: definir gestor y métodos public implementando interfaz iRecetaDAO
    //dentro del código del form se llamará a los métodos de recetaDAO
    //iRecetaDAO contiene los getMetodos y recetaDAO contiene los métodos definidos
    internal class gestorDB : iRecetaDAO
    {
        public DataTable getListarIngredientes()
        {
            return recetaDAO.obtenerInstancia().listarIngredientes();
        }
        public int getProximaReceta()  
        {
            return recetaDAO.obtenerInstancia().proximaReceta();
        }
        public bool getEjecutarInsert(Receta r)
        {
            return recetaDAO.obtenerInstancia().ejecutarInsert(r);
        }
    }
}
