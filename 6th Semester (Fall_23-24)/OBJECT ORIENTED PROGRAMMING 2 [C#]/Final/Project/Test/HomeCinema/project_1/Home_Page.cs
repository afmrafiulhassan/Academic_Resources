using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace project_1
{
    public partial class Home_Page : Form
    {
        public Form1 login_page;
       
        public Home_Page()
        {
           //login_page = new Form1();
            InitializeComponent();
            Action_flowLayoutPane.FlowDirection = FlowDirection.LeftToRight;
            Action_flowLayoutPane.WrapContents = false;

        }
        public Home_Page(Form1 f)
        {

            this.login_page = f;
            InitializeComponent();
            Action_flowLayoutPane.FlowDirection = FlowDirection.RightToLeft;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            //this.Close();
            //f1.Close();
        }

        private void Log_out_btn_Click(object sender, EventArgs e)
        {

            // this.login_page.Show();
            //this.Hide();
            iteams();
            

        }
        private void home_page_load(object sender,EventArgs e)
        {
            iteams();
        }

        private void iteams()
        {
            Media_Box[] media_Boxes = new Media_Box[20];
            for(int i =0;i<media_Boxes.Length;i++)
            {
                media_Boxes[i] = new Media_Box();
                media_Boxes[i].title = "video " +Convert.ToString(i);
                media_Boxes[i].poster_path = @"C:\Users\Swajan\Desktop\server\Poster\bg_image.jpg";
                
                Action_flowLayoutPane.Controls.Add(media_Boxes[i]);
            }
        }
    }
}
