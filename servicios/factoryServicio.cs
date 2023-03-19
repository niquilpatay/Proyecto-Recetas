using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace actividadParcialQuilpa.servicios
{
    //7mo paso: crear fábrica de servicio para evitar usar operador new 
    //modificador abstract para que sea compatible con el método tipo iServicio que crearemos 
    //devuelve un iServicio
    abstract class factoryServicio
    {
        public abstract iServicio crearServicio();
    }
}
