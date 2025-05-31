using System;
using System.Drawing;
using System.Windows.Forms;


namespace WinFormsApp1
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
            gridView.Columns.Add(CreateImageColumn("Thumbnail", "Thumbnail"));
            gridView.Columns.Add("Title", "Title");
            gridView.Columns.Add("Genre", "Genre");
            gridView.Columns.Add("ReleaseYear", "Release Year");

            // Sample data (replace this with your actual data)
            gridView.Rows.Add(Properties.Resources.movie1, "Movie 1", "Action", 2020);
            gridView.Rows.Add(Properties.Resources.movie2, "Movie 2", "Drama", 2019);
            gridView.Rows.Add(Properties.Resources.movie3, "Movie 3", "Comedy", 2021);

            gridView.RowTemplate.Height = 120; // Set the row height to accommodate the thumbnail

            gridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            gridView.CellDoubleClick += (sender, args) =>
            {
                // Handle double-click on a grid item
                DataGridViewCell selectedCell = gridView.SelectedCells[0];
                MessageBox.Show($"You clicked on {selectedCell.Value}");
            };

            Controls.Add(gridView);
        }

        private DataGridViewImageColumn CreateImageColumn(string name, string headerText)
        {
            DataGridViewImageColumn imageColumn = new DataGridViewImageColumn();
            imageColumn.Name = name;
            imageColumn.HeaderText = headerText;
            imageColumn.ImageLayout = DataGridViewImageCellLayout.Zoom; // Display image with zoom
            return imageColumn;
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