using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project_1
{
    public partial class Media_Box : UserControl
    {
        private string _title;
        private string _poster_path;
        public Media_Box()
        {
            InitializeComponent();
        }
        #region
        public string title
        {
            get { return _title; }
            set { _title = value; Title_lable.Text = value; } 
        }
        public string poster_path
    {
            set {  _poster_path = value;  Image image = Image.FromFile(value); poster.Image = image; }
            get { return _poster_path; }

           }
        #endregion
    }
}
