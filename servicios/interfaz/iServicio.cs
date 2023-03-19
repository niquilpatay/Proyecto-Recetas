using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using actividadParcialQuilpa.dominio;

namespace actividadParcialQuilpa.servicios
{
    //5to paso: iservicio contiene métodos reales sin definir
    internal interface iServicio
    {
        DataTable listarIngredientes();
        int proximaReceta();
        bool ejecutarInsert(Receta r);
    }
}
