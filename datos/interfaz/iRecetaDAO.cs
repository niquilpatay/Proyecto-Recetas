using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using actividadParcialQuilpa.dominio;

namespace actividadParcialQuilpa.datos
{
    //1er paso: crear interfaz internal con métodos a definir get
    internal interface iRecetaDAO
    {
        DataTable getListarIngredientes();
        int getProximaReceta();
        bool getEjecutarInsert(Receta r);
    }
}
