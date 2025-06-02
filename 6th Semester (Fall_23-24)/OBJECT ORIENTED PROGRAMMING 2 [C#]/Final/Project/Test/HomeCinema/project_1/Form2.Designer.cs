namespace project_1
{
    partial class Form2
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form2));
            this.player = new AxWMPLib.AxWindowsMediaPlayer();
            this.panel1 = new System.Windows.Forms.Panel();
            this.volume_bar = new System.Windows.Forms.TrackBar();
            this.mute_btn = new System.Windows.Forms.Button();
            this.volume_btn = new System.Windows.Forms.Button();
            this.volume_level = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.pause_btn = new System.Windows.Forms.Button();
            this.backward_time_skip = new System.Windows.Forms.Button();
            this.forward_time_skip = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.play_btn = new System.Windows.Forms.Button();
            this.video_progress_bar = new System.Windows.Forms.TrackBar();
            this.start_time = new System.Windows.Forms.Label();
            this.end_time = new System.Windows.Forms.Label();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.player)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.volume_bar)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.video_progress_bar)).BeginInit();
            this.SuspendLayout();
            // 
            // player
            // 
            this.player.Enabled = true;
            this.player.Location = new System.Drawing.Point(0, -1);
            this.player.Name = "player";
            this.player.OcxState = ((System.Windows.Forms.AxHost.State)(resources.GetObject("player.OcxState")));
            this.player.Size = new System.Drawing.Size(1086, 613);
            this.player.TabIndex = 0;
            this.player.Enter += new System.EventHandler(this.axWindowsMediaPlayer1_Enter);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.volume_bar);
            this.panel1.Controls.Add(this.mute_btn);
            this.panel1.Controls.Add(this.volume_btn);
            this.panel1.Controls.Add(this.volume_level);
            this.panel1.Controls.Add(this.button1);
            this.panel1.Controls.Add(this.pause_btn);
            this.panel1.Controls.Add(this.backward_time_skip);
            this.panel1.Controls.Add(this.forward_time_skip);
            this.panel1.Controls.Add(this.button3);
            this.panel1.Controls.Add(this.button2);
            this.panel1.Controls.Add(this.play_btn);
            this.panel1.Location = new System.Drawing.Point(0, 545);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1086, 47);
            this.panel1.TabIndex = 1;
            // 
            // volume_bar
            // 
            this.volume_bar.AllowDrop = true;
            this.volume_bar.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.volume_bar.Location = new System.Drawing.Point(829, 0);
            this.volume_bar.Name = "volume_bar";
            this.volume_bar.Size = new System.Drawing.Size(129, 45);
            this.volume_bar.TabIndex = 8;
            this.volume_bar.TickStyle = System.Windows.Forms.TickStyle.Both;
            this.volume_bar.Value = 10;
            this.volume_bar.Visible = false;
            this.volume_bar.Scroll += new System.EventHandler(this.volume_bar_Scroll);
            // 
            // mute_btn
            // 
            this.mute_btn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.mute_btn.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("mute_btn.BackgroundImage")));
            this.mute_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.mute_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.mute_btn.Location = new System.Drawing.Point(1040, 0);
            this.mute_btn.Name = "mute_btn";
            this.mute_btn.Size = new System.Drawing.Size(43, 40);
            this.mute_btn.TabIndex = 10;
            this.mute_btn.UseVisualStyleBackColor = false;
            this.mute_btn.Click += new System.EventHandler(this.mute_btn_Click);
            // 
            // volume_btn
            // 
            this.volume_btn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.volume_btn.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("volume_btn.BackgroundImage")));
            this.volume_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.volume_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.volume_btn.Location = new System.Drawing.Point(780, 4);
            this.volume_btn.Name = "volume_btn";
            this.volume_btn.Size = new System.Drawing.Size(43, 40);
            this.volume_btn.TabIndex = 11;
            this.volume_btn.UseVisualStyleBackColor = false;
            this.volume_btn.Click += new System.EventHandler(this.button5_Click);
            // 
            // volume_level
            // 
            this.volume_level.AutoSize = true;
            this.volume_level.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.volume_level.ForeColor = System.Drawing.Color.Crimson;
            this.volume_level.Location = new System.Drawing.Point(964, 12);
            this.volume_level.Name = "volume_level";
            this.volume_level.Size = new System.Drawing.Size(34, 20);
            this.volume_level.TabIndex = 9;
            this.volume_level.Text = "0%";
            this.volume_level.Visible = false;
            this.volume_level.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(57, 11);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 7;
            this.button1.Text = "upload";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // pause_btn
            // 
            this.pause_btn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.pause_btn.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pause_btn.BackgroundImage")));
            this.pause_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pause_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.pause_btn.Location = new System.Drawing.Point(510, 4);
            this.pause_btn.Name = "pause_btn";
            this.pause_btn.Size = new System.Drawing.Size(44, 38);
            this.pause_btn.TabIndex = 5;
            this.pause_btn.UseVisualStyleBackColor = false;
            this.pause_btn.Click += new System.EventHandler(this.pause_btn_Click);
            // 
            // backward_time_skip
            // 
            this.backward_time_skip.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.backward_time_skip.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("backward_time_skip.BackgroundImage")));
            this.backward_time_skip.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.backward_time_skip.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.backward_time_skip.Location = new System.Drawing.Point(435, 4);
            this.backward_time_skip.Name = "backward_time_skip";
            this.backward_time_skip.Size = new System.Drawing.Size(43, 40);
            this.backward_time_skip.TabIndex = 4;
            this.backward_time_skip.UseVisualStyleBackColor = false;
            this.backward_time_skip.Click += new System.EventHandler(this.backward_time_skip_Click);
            // 
            // forward_time_skip
            // 
            this.forward_time_skip.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.forward_time_skip.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("forward_time_skip.BackgroundImage")));
            this.forward_time_skip.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.forward_time_skip.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.forward_time_skip.Location = new System.Drawing.Point(578, 4);
            this.forward_time_skip.Name = "forward_time_skip";
            this.forward_time_skip.Size = new System.Drawing.Size(43, 40);
            this.forward_time_skip.TabIndex = 3;
            this.forward_time_skip.UseVisualStyleBackColor = false;
            this.forward_time_skip.Click += new System.EventHandler(this.button4_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.button3.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button3.BackgroundImage")));
            this.button3.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Location = new System.Drawing.Point(645, 3);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(43, 40);
            this.button3.TabIndex = 2;
            this.button3.UseVisualStyleBackColor = false;
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.button2.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("button2.BackgroundImage")));
            this.button2.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Location = new System.Drawing.Point(373, 3);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(43, 40);
            this.button2.TabIndex = 1;
            this.button2.UseVisualStyleBackColor = false;
            // 
            // play_btn
            // 
            this.play_btn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.play_btn.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("play_btn.BackgroundImage")));
            this.play_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.play_btn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.play_btn.Location = new System.Drawing.Point(511, 4);
            this.play_btn.Name = "play_btn";
            this.play_btn.Size = new System.Drawing.Size(43, 40);
            this.play_btn.TabIndex = 0;
            this.play_btn.UseVisualStyleBackColor = false;
            this.play_btn.Click += new System.EventHandler(this.button1_Click);
            // 
            // video_progress_bar
            // 
            this.video_progress_bar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.video_progress_bar.Location = new System.Drawing.Point(57, 505);
            this.video_progress_bar.Maximum = 0;
            this.video_progress_bar.Name = "video_progress_bar";
            this.video_progress_bar.Size = new System.Drawing.Size(977, 45);
            this.video_progress_bar.TabIndex = 6;
            this.video_progress_bar.TickStyle = System.Windows.Forms.TickStyle.Both;
            this.video_progress_bar.Scroll += new System.EventHandler(this.video_progress_bar_Scroll);
            // 
            // start_time
            // 
            this.start_time.AutoSize = true;
            this.start_time.ForeColor = System.Drawing.SystemColors.Control;
            this.start_time.Location = new System.Drawing.Point(17, 520);
            this.start_time.Name = "start_time";
            this.start_time.Size = new System.Drawing.Size(34, 13);
            this.start_time.TabIndex = 3;
            this.start_time.Text = "00:00";
            this.start_time.Click += new System.EventHandler(this.label1_Click);
            // 
            // end_time
            // 
            this.end_time.AutoSize = true;
            this.end_time.ForeColor = System.Drawing.SystemColors.Control;
            this.end_time.Location = new System.Drawing.Point(1040, 520);
            this.end_time.Name = "end_time";
            this.end_time.Size = new System.Drawing.Size(34, 13);
            this.end_time.TabIndex = 4;
            this.end_time.Text = "00:00";
            this.end_time.Click += new System.EventHandler(this.end_time_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Form2
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(10)))), ((int)(((byte)(10)))), ((int)(((byte)(10)))));
            this.ClientSize = new System.Drawing.Size(1086, 591);
            this.Controls.Add(this.end_time);
            this.Controls.Add(this.video_progress_bar);
            this.Controls.Add(this.start_time);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.player);
            this.Name = "Form2";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form2";
            ((System.ComponentModel.ISupportInitialize)(this.player)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.volume_bar)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.video_progress_bar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private AxWMPLib.AxWindowsMediaPlayer player;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button play_btn;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button backward_time_skip;
        private System.Windows.Forms.Button forward_time_skip;
        private System.Windows.Forms.Button pause_btn;
        private System.Windows.Forms.Label start_time;
        private System.Windows.Forms.Label end_time;
        private System.Windows.Forms.TrackBar video_progress_bar;
        private System.Windows.Forms.OpenFileDialog openFileDialog1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.TrackBar volume_bar;
        private System.Windows.Forms.Label volume_level;
        private System.Windows.Forms.Button mute_btn;
        private System.Windows.Forms.Button volume_btn;
    }
}