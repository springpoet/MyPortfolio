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
        public Move_seat()
        {
            InitializeComponent();
        }

        private void move_button_Click(object sender, EventArgs e)
        {
            try
            {

                Boolean c = int.TryParse(textBox1.Text, out int current);
                Boolean m = int.TryParse(textBox2.Text, out int moveseat);

                
                if(!(c && m))
                {
                    MessageBox.Show("현재자리는 숫자로 입력해야합니다.");
                    textBox1.Text = "";
                    textBox2.Text = "";
                    return;
                }

                else if(current > 21 || moveseat > 21)
                {
                    MessageBox.Show("좌석은 21번 까지 입력해야합니다.");
                    textBox1.Text = "";
                    textBox2.Text = "";
                    return;
                }

                else if (SortedButton[current-1].BackColor == Color.Gainsboro)
                {
                    MessageBox.Show("현재자리가 사용중이지않습니다.");
                    textBox1.Text = "";

                    return;
                }
                else if (SortedButton[moveseat - 1].BackColor == Color.GreenYellow)
                {
                    MessageBox.Show("변경하실위치는 이미 사용중인 PC입니다.");
                    
                    textBox2.Text = "";
                    return;
                }



                    SortedButton[moveseat - 1].Text = SortedButton[current - 1].Text;
                SortedButton[current - 1].Text = current + "번컴퓨터";

                SortedButton[moveseat - 1].BackColor = Color.GreenYellow;
                SortedButton[current - 1].BackColor = Color.Gainsboro;

                Timers[current - 1].Enabled = false;
                Timers[moveseat - 1].Enabled = true;

                DBHelper.Moveseat(current, moveseat);
                Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
