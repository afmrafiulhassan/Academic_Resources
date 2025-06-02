using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace project_1
{
    public partial class Form3 : Form
    {

        public Form3()
        {
            InitializeComponent();
        }

        private void upload_btn_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Video Files|*.mp4;*.avi;*.wmv;*.mov|All Files|*.*";
            openFileDialog.Title = "Select a Video File";
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                // Get the selected file path
                string selectedFilePath = openFileDialog.FileName;

                // Check if the file exists before attempting to play it
                if (System.IO.File.Exists(selectedFilePath))
                {
                   File_path.Text = selectedFilePath;
                }
                else
                {
                    MessageBox.Show("The selected video file does not exist.", "File Not Found", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void poster_upload_btn_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image Files|*.jpg;*.jpeg;*.png;*.gif;*.bmp|All Files|*.*";
            openFileDialog.Title = "Select a Image File";
            if(openFileDialog.ShowDialog()==DialogResult.OK)
            {
                string selectedFilePath = openFileDialog.FileName;

                // Check if the file exists before attempting to play it
                if (System.IO.File.Exists(selectedFilePath))
                {
                    poster_path.Text = selectedFilePath;
                    poster_view_panel.BackgroundImage = Image.FromFile(selectedFilePath);
                }
                else
                {
                    MessageBox.Show("The selected video file does not exist.", "File Not Found", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string destinationFilePath = Path.Combine("C:\\Users\\Swajan\\Desktop\\server\\Media", Path.GetFileName(File_path.Text));
            string destinationPosterPath = Path.Combine("C:\\Users\\Swajan\\Desktop\\server\\Poster", Path.GetFileName(poster_path.Text));
            if (File_path.Text.Length>0 && poster_path.Text.Length > 0)
            {
                File.Copy(File_path.Text,destinationFilePath,true);
                File.Copy(poster_path.Text,destinationPosterPath,true);
                MessageBox.Show("File Uploaded");
            }
            else
            {
                MessageBox.Show("Select File");
            }
        }
    }
}
