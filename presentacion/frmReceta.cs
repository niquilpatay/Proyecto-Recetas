using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using actividadParcialQuilpa.datos;
using actividadParcialQuilpa.dominio;
using actividadParcialQuilpa.servicios;
using actividadParcialQuilpa.servicios.implementación;

namespace actividadParcialQuilpa
{
    public partial class frmReceta : Form
    {
        Receta nueva;
        iServicio servicio;

        public frmReceta()
        {
            InitializeComponent();
            nueva = new Receta();
            servicio = new implementacionFactoryServicio().crearServicio();
            ultimaReceta();
            totalIngredientes();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            cargarCombo();
            limpiar();
        }

        private void ultimaReceta()
        {
            lblReceta.Text = "Receta #: " + servicio.proximaReceta();
        }
        private void totalIngredientes()
        {
            lblTotal.Text = "Cant. ingredientes: " + dgvIngredientes.Rows.Count;
        }
        private void cargarCombo()
        {
            DataTable tabla = servicio.listarIngredientes();
            cboIngredientes.DataSource = tabla;
            cboIngredientes.ValueMember = tabla.Columns[0].ColumnName;
            cboIngredientes.DisplayMember = tabla.Columns[1].ColumnName;
            cboIngredientes.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void limpiar()
        {   
            txtNombre.Text = "";
            txtChef.Text = "";
            cboTipoReceta.SelectedIndex = -1;
            dgvIngredientes.Rows.Clear();
            lblTotal.Text = "Cant. ingredientes:";
            ultimaReceta();
            totalIngredientes();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            if (cboIngredientes.Text.Equals(string.Empty))
            {
                MessageBox.Show("Insertar ingrediente", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            foreach(DataGridViewRow fila in dgvIngredientes.Rows)
            {
                if (fila.Cells["Ingrediente"].Value.ToString().Equals(cboIngredientes.Text))
                {
                    MessageBox.Show("Ingrediente ya insertado", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }
            }

            DataRowView item = (DataRowView)cboIngredientes.SelectedItem;
            int id_ingrediente = Convert.ToInt32(item.Row.ItemArray[0]);
            string nombre = item.Row.ItemArray[1].ToString();

            Ingrediente i = new Ingrediente(id_ingrediente, nombre);
            int cantidad = Convert.ToInt32(nudCantidad.Value);
            DetalleReceta d = new DetalleReceta(i, cantidad);

            nueva.AgregarReceta(d);
            dgvIngredientes.Rows.Add(new object[] {id_ingrediente,nombre,cantidad });
            totalIngredientes();
        }

        private void dgvIngredientes_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if(dgvIngredientes.CurrentCell.ColumnIndex == 3)
            {
                nueva.Eliminar(dgvIngredientes.CurrentRow.Index);
                dgvIngredientes.Rows.Remove(dgvIngredientes.CurrentRow);
                totalIngredientes();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("¿Segur@ de cancelar?","CANCELANDO",MessageBoxButtons.YesNo,
                MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Dispose();
            }
            else
            {
                return;
            }
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            if (txtNombre.Text == string.Empty)
            {
                MessageBox.Show("Ingresar nombre de receta", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                txtNombre.Focus();
                return;
            }
            if (cboTipoReceta.Text == string.Empty)
            {
                MessageBox.Show("Ingresar tipo de receta", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cboTipoReceta.Focus();
                return;
            }
            if(dgvIngredientes.Rows.Count < 3)
            {
                MessageBox.Show("Ingresar 3 ingredientes","AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cboIngredientes.Focus();
                return;
            }

            nueva.RecetaNro = servicio.proximaReceta();
            nueva.Nombre = txtNombre.Text;
            nueva.Chef = txtChef.Text;
            nueva.TipoReceta = cboTipoReceta.SelectedIndex;

            if (servicio.ejecutarInsert(nueva))
            {
                MessageBox.Show("Receta guardada");
                limpiar();
            }
            else
            {
                MessageBox.Show("Receta NO guardada");
            }

        }   
    }
}
