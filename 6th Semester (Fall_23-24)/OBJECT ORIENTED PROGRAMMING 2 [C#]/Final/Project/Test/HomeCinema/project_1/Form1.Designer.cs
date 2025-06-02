namespace project_1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.panel1 = new System.Windows.Forms.Panel();
            this.sign_up_btn = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.Password_field = new System.Windows.Forms.TextBox();
            this.user_email = new System.Windows.Forms.TextBox();
            this.sign_btn = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(200)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
            this.panel1.Controls.Add(this.sign_up_btn);
            this.panel1.Controls.Add(this.checkBox1);
            this.panel1.Controls.Add(this.Password_field);
            this.panel1.Controls.Add(this.user_email);
            this.panel1.Controls.Add(this.sign_btn);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.panel1.ForeColor = System.Drawing.Color.White;
            this.panel1.Location = new System.Drawing.Point(397, 101);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(324, 365);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // sign_up_btn
            // 
            this.sign_up_btn.BackColor = System.Drawing.Color.DarkOrange;
            this.sign_up_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.sign_up_btn.Font = new System.Drawing.Font("Nirmala UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.sign_up_btn.ForeColor = System.Drawing.Color.White;
            this.sign_up_btn.Location = new System.Drawing.Point(45, 305);
            this.sign_up_btn.Name = "sign_up_btn";
            this.sign_up_btn.Size = new System.Drawing.Size(239, 37);
            this.sign_up_btn.TabIndex = 5;
            this.sign_up_btn.Text = "Sign Up";
            this.sign_up_btn.UseVisualStyleBackColor = false;
            this.sign_up_btn.Click += new System.EventHandler(this.btn_sign_up_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.ForeColor = System.Drawing.Color.Gray;
            this.checkBox1.Location = new System.Drawing.Point(45, 282);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(105, 17);
            this.checkBox1.TabIndex = 4;
            this.checkBox1.Text = "Remember me";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // Password_field
            // 
            this.Password_field.Font = new System.Drawing.Font("Nirmala UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Password_field.ForeColor = System.Drawing.SystemColors.WindowFrame;
            this.Password_field.Location = new System.Drawing.Point(45, 161);
            this.Password_field.Multiline = true;
            this.Password_field.Name = "Password_field";
            this.Password_field.Size = new System.Drawing.Size(239, 37);
            this.Password_field.TabIndex = 3;
            this.Password_field.Text = "Password";
            this.Password_field.TextChanged += new System.EventHandler(this.Password_TextChanged);
            this.Password_field.Enter += new System.EventHandler(this.Password_field_Enter);
            this.Password_field.Leave += new System.EventHandler(this.Password_field_Leave);
            // 
            // user_email
            // 
            this.user_email.Font = new System.Drawing.Font("Nirmala UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.user_email.ForeColor = System.Drawing.SystemColors.WindowFrame;
            this.user_email.Location = new System.Drawing.Point(45, 93);
            this.user_email.Multiline = true;
            this.user_email.Name = "user_email";
            this.user_email.Size = new System.Drawing.Size(239, 37);
            this.user_email.TabIndex = 2;
            this.user_email.Text = "Email";
            this.user_email.TextChanged += new System.EventHandler(this.user_email_TextChanged);
            this.user_email.Enter += new System.EventHandler(this.user_email_Enter);
            this.user_email.Leave += new System.EventHandler(this.user_email_Leave);
            // 
            // sign_btn
            // 
            this.sign_btn.BackColor = System.Drawing.Color.Red;
            this.sign_btn.Cursor = System.Windows.Forms.Cursors.Hand;
            this.sign_btn.Font = new System.Drawing.Font("Nirmala UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.sign_btn.ForeColor = System.Drawing.Color.White;
            this.sign_btn.Location = new System.Drawing.Point(45, 227);
            this.sign_btn.Name = "sign_btn";
            this.sign_btn.Size = new System.Drawing.Size(239, 37);
            this.sign_btn.TabIndex = 1;
            this.sign_btn.Text = "Sign In";
            this.sign_btn.UseVisualStyleBackColor = false;
            this.sign_btn.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Nirmala UI", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(39, 38);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(94, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "Sign In";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Black;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(1129, 565);
            this.Controls.Add(this.panel1);
            this.ForeColor = System.Drawing.Color.Black;
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox user_email;
        private System.Windows.Forms.Button sign_btn;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.TextBox Password_field;
        private System.Windows.Forms.Button sign_up_btn;
    }
}

