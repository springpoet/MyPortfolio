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
    public partial class Time_Add : Form
    {
        public static List<Button> SortedButton = new List<Button>();
        Main form1;
        public Time_Add(Main form)
        {
            InitializeComponent();
            form1 = form;
            textBox1.Text = form1.userIdLabel.Text;
            textBox2.Text = form1.User_Name.Text;
            textBox3.Text = form1.pcNumberLabel.Text.Split('번')[0];
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Boolean seat_duplicate = int.TryParse(textBox3.Text, out int num);
            if (textBox3.Text == "")
            {
                seat_duplicate = true;
            }
            if (!seat_duplicate)
            {
                MessageBox.Show("자리번호는 숫자만 가능합니다.");
                return;
            }
            int hours;
            int minutes;
            int seconds;
            string text;
            string[] time;
            int realtime;

            try
            {
                if (textBox1.Text == "")
                {
                    MessageBox.Show("아이디를 입력하세요");
                    return;
                }
                else if (textBox3.Text == "" && textBox4.Text == "")
                {
                    MessageBox.Show("좌석번호 / 시간을 입력하세요");
                    return;
                }
                else if (num > 21)
                {
                    MessageBox.Show("없는 좌석입니다");
                    return;
                }

                foreach (var item in DataManager.Users)
                {
                    if (item.Using_status == "ON")
                    {
                        if (textBox3.Text == item.Seat_num && textBox4.Text == "")
                        {
                            MessageBox.Show("이미 사용중인 좌석입니다.");
                            return;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + " button1_Click error ");
            }

            if (textBox3.Text == "")
            {
                DBHelper.addTime(textBox1.Text, textBox4.Text);
            }

            //시간 추가 없이 바로 로그인 할 때
            else if (textBox2.Text == "" && textBox4.Text == "")
            {
                try
                {
                    PC_User user = DataManager.Users.Single(x => x.User_id == textBox1.Text);
                    DBHelper.UserLoginQuery(user.User_id, textBox3.Text);
                    MessageBox.Show($"'{user.Name}' 회원이 사용을 시작하였습니다.");
                    form1.Current_userinfo_save();
                    DataManager.Load();
                    form1.Refresh_btn();
                    Dispose();
                }
                catch (Exception ee)
                {
                    MessageBox.Show(ee.Message + " error");
                }
            }
            else
            {
                foreach (var item in DataManager.Users)
                {
                    if (item.Seat_num == textBox3.Text && item.Using_status == "ON")
                    {
                        text = SortedButton[int.Parse(item.Seat_num) - 1].Text;
                        time = (text).Split('\n');

                        int.TryParse(time[3].Split(':')[0], out hours);

                        int.TryParse(time[3].Split(':')[1], out minutes);
                        int.TryParse(time[3].Split(':')[2], out seconds);
                        realtime = hours * 3600 + minutes * 60 + seconds + int.Parse(textBox4.Text);

                        MessageBox.Show(realtime.ToString());
                        DBHelper.addTime(textBox1.Text, textBox3.Text, realtime.ToString());

                        hours = realtime / 3600;
                        minutes = realtime % 3600 / 60;

                        seconds = realtime % 60;

                        SortedButton[int.Parse(item.Seat_num) - 1].Text = $"{time[0]}\n{time[1]}\n남은시간\n{hours}:{minutes}:{seconds}";
                    }
                }
            }
        }
    }
}