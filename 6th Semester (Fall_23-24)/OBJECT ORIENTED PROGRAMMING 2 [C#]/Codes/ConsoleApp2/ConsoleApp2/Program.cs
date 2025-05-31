using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ConsoleApp2
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            InitializeGridView();
        }

        private void InitializeGridView()
        {
            DataGridView gridView = new DataGridView();
            gridView.Dock = DockStyle.Fill;

            // Set up columns (you might have more columns for different information)
            gridView.Columns.Add("Title", "Title");
            gridView.Columns.Add("Genre", "Genre");
            gridView.Columns.Add("ReleaseYear", "Release Year");

            // Sample data (replace this with your actual data)
            gridView.Rows.Add("Movie 1", "Action", 2020);
            gridView.Rows.Add("Movie 2", "Drama", 2019);
            gridView.Rows.Add("Movie 3", "Comedy", 2021);

            gridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            gridView.CellDoubleClick += (sender, args) =>
            {
                // Handle double-click on a grid item
                DataGridViewCell selectedCell = gridView.SelectedCells[0];
                MessageBox.Show($"You clicked on {selectedCell.Value}");
            };

            Controls.Add(gridView);
        }

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}
