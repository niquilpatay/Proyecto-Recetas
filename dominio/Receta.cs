using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace actividadParcialQuilpa.dominio
{
    internal class Receta
    {
        public int RecetaNro { get; set; }
        public string Nombre { get; set; }
        public int TipoReceta { get; set; }
        public string Chef { get; set; }
        public List<DetalleReceta> DetalleRecetas { get; set; }

        public Receta()
        {
            DetalleRecetas = new List<DetalleReceta>();
        }

        public void AgregarReceta(DetalleReceta detalle)
        {
            DetalleRecetas.Add(detalle);
        }

        public void Eliminar(int indice)
        {
            DetalleRecetas.RemoveAt(indice);
        }
    }
}
