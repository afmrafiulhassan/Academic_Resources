namespace project_1
{
    partial class Media_Box
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Media_Box));
            this.Title_lable = new System.Windows.Forms.Label();
            this.poster = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.poster)).BeginInit();
            this.SuspendLayout();
            // 
            // Title_lable
            // 
            this.Title_lable.AutoSize = true;
            this.Title_lable.Font = new System.Drawing.Font("Nirmala UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Title_lable.Location = new System.Drawing.Point(3, 167);
            this.Title_lable.Name = "Title_lable";
            this.Title_lable.Size = new System.Drawing.Size(44, 21);
            this.Title_lable.TabIndex = 1;
            this.Title_lable.Text = "Title";
            // 
            // poster
            // 
            this.poster.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.poster.Image = ((System.Drawing.Image)(resources.GetObject("poster.Image")));
            this.poster.Location = new System.Drawing.Point(0, 3);
            this.poster.Name = "poster";
            this.poster.Size = new System.Drawing.Size(267, 161);
            this.poster.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.poster.TabIndex = 2;
            this.poster.TabStop = false;
            // 
            // Media_Box
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Highlight;
            this.Controls.Add(this.poster);
            this.Controls.Add(this.Title_lable);
            this.Name = "Media_Box";
            this.Size = new System.Drawing.Size(270, 192);
            ((System.ComponentModel.ISupportInitialize)(this.poster)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label Title_lable;
        private System.Windows.Forms.PictureBox poster;
    }
}
