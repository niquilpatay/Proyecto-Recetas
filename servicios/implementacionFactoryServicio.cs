using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using actividadParcialQuilpa.servicios.implementación;

namespace actividadParcialQuilpa.servicios
{
    //8vo paso: crear implementación de servicio
    //definir método crearServicio, devuelve una nueva recetaServicio
    //para usar métodos en form debemos crear un servicio que nos brinde los métodos necesarios
    internal class implementacionFactoryServicio : factoryServicio
    {
        public override iServicio crearServicio()
        {
            return new recetaServicio();
        }
    }
}
