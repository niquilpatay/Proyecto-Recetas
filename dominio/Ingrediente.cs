using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace actividadParcialQuilpa.dominio
{
    internal class Ingrediente
    {
        public int IngredienteID { get; set; }
        public string Nombre { get; set; }
        public Ingrediente(int ingredienteID, string nombre)
        {
            IngredienteID = ingredienteID;
            this.Nombre = nombre;
        }

        public override string ToString()
        {
            return Nombre;
        }
    }
}
