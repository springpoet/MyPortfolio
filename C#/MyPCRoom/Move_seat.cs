using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MyPCRoom
{
    public partial class Move_seat : Form
    {
        public static List<Button> SortedButton = new List<Button>();
        public static List<Timer> Timers = new List<Timer>();
        Main form1;
        public Move_seat(Main form)
        {
            InitializeComponent();
            form1 = form;
        }

        private void move_button_Click(object sender, EventArgs e)
        {
            try
            {
                int current = int.Parse(textBox1.Text);
                int moveseat = int.Parse(textBox2.Text);

                SortedButton[moveseat - 1].Text = SortedButton[current - 1].Text;
                SortedButton[current - 1].Text = current + "번컴퓨터";

                SortedButton[moveseat - 1].BackColor = Color.GreenYellow;
                SortedButton[current - 1].BackColor = Color.Gainsboro;

                Timers[current - 1].Enabled = false;
                Timers[moveseat - 1].Enabled = true;
                Timers[21].Enabled = false;

                DBHelper.Moveseat(current, moveseat);
                DataManager.Load();
                form1.Current_userinfo_save();
                form1.Refresh_btn();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
