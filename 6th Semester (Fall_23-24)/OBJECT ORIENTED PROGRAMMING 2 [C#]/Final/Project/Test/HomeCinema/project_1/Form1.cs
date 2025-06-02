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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void user_email_TextChanged(object sender, EventArgs e)
        {

        }

        private void Password_TextChanged(object sender, EventArgs e)
        {

        }

        private void user_email_Enter(object sender, EventArgs e)
        {
            if (user_email.Text == "Email")
            {
                user_email.Text = "";

            }
        }

        private void user_email_Leave(object sender, EventArgs e)

        {
            if (user_email.Text == "")
            {
                user_email.Text = "Email";
            }

        }

        private void Password_field_Enter(object sender, EventArgs e)
        {
            if (Password_field.Text == "Password")
            {
                Password_field.Text = "";
            }
        }

        private void Password_field_Leave(object sender, EventArgs e)
        {
            if (Password_field.Text == "")
            {
                Password_field.Text = "Password";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (user_email.Text == "admin" && Password_field.Text == "admin")
            {
                Home_Page home_Page = new Home_Page(this);

                home_Page.Show();
                this.Hide();

                home_Page.FormClosed += (s, args) => this.Close();
            }
            else
            {
                MessageBox.Show("Wrong");
            }
        }

        private void btn_sign_up_Click(object sender, EventArgs e)
        {
            string link = user_email.Text;
            Form2 obj = new Form2(link);
            obj.Show();
            this.Hide();

        }
    }
}