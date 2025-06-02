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
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }

        public Form2(string link)
        {
            InitializeComponent();
            player.URL = link;
            // "C:\Users\Swajan\Downloads\testVideo.mp4"
        }



        private void axWindowsMediaPlayer1_Enter(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
           
            if(player.playState == WMPLib.WMPPlayState.wmppsPaused)
            {
                player.Ctlcontrols.play();
                play_btn.Hide();
                pause_btn.Show();

            }
        }

        private void pause_btn_Click(object sender, EventArgs e)
        {
            if (player.playState == WMPLib.WMPPlayState.wmppsPlaying)
            {
                player.Ctlcontrols.pause();
                pause_btn.Hide();
                play_btn.Show();
            }
            
            

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Video Files|*.mp4;*.avi;*.wmv;*.mov|All Files|*.*";
            openFileDialog.Title = "Select a Video File";
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
             
                string selectedFilePath = openFileDialog.FileName;

            
                if (System.IO.File.Exists(selectedFilePath))
                {
                    player.URL = selectedFilePath;
                    player.Ctlcontrols.play();
                }
                else
                {
                    MessageBox.Show("The selected video file does not exist.", "File Not Found", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(player.playState == WMPLib.WMPPlayState.wmppsPlaying)
            {
                video_progress_bar.Maximum = (int)player.Ctlcontrols.currentItem.duration;
                video_progress_bar.Value = (int)player.Ctlcontrols.currentPosition;
                end_time.Text = (video_progress_bar.Maximum/60).ToString()+":"+ (video_progress_bar.Maximum %60).ToString();
                start_time.Text = ((int)player.Ctlcontrols.currentPosition/60).ToString()+":"+ ((int)player.Ctlcontrols.currentPosition % 60).ToString();
            }
        }

        private void video_progress_bar_Scroll(object sender, EventArgs e)
        {
            player.Ctlcontrols.currentPosition = video_progress_bar.Value;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            player.Ctlcontrols.currentPosition += 5;
        }

        private void backward_time_skip_Click(object sender, EventArgs e)
        {
            player.Ctlcontrols.currentPosition -= 5;
        }

        private void label1_Click_1(object sender, EventArgs e)
        {
            volume_level.Text = volume_bar.Value.ToString()+"0%";
        }

        private void end_time_Click(object sender, EventArgs e)
        {

        }

        private void volume_bar_Scroll(object sender, EventArgs e)
        {
            volume_level.Text = volume_bar.Value.ToString() + "0%";
             player.settings.volume = volume_bar.Value*10;
        }

        private void button5_Click(object sender, EventArgs e)
        {
            
            if (volume_bar.Visible)
            {
                volume_bar.Hide();
                volume_level.Hide();
            }else
            {
                volume_bar.Show();
                volume_level.Show();
            }
        }

        private void mute_btn_Click(object sender, EventArgs e)
        {
            if (player.settings.mute)
            {
                player.settings.mute = false;
            }
            else
            {
                player.settings.mute = true;
            }
            //player.settings.volume = 0;
        }
    }
    }
