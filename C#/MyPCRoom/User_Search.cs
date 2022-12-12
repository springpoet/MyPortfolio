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
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace MyPCRoom
{
    public partial class User_Search : Form
    {
        public User_Search()
        {
            InitializeComponent();
            try
            {
                DataGridViewRow dr = dataGridView1.SelectedRows[0];
            }
            catch (Exception ex)
            {

            }
            if (DataManager.Users.Count > 0)
                dataGridView1.DataSource = DataManager.Users;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                PC_User user = DataManager.Users.SingleOrDefault(x => x.User_id == textBox1.Text);
                DataManager.searchId(user.User_id);

                dataGridView1.DataSource = null;
                if (DataManager.Users.Count > 0)
                {
                    dataGridView1.DataSource = DataManager.Users;
                }
                MessageBox.Show($"'{user.User_id}' 회원이 성공적으로 조회되었습니다.");
            }
            catch (Exception ee)
            {
                MessageBox.Show("해당 회원 없음");
            }
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            // 초기화
            try
            {
                dataGridView1.DataSource = "";
                textBox1.Text = "";
                textBox2.Text = "";
                DataManager.Load();
            }
            catch (Exception ex)
            {

            }
            if (DataManager.Users.Count > 0)
                dataGridView1.DataSource = DataManager.Users;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                PC_User user = DataManager.Users.SingleOrDefault(x => x.Name == textBox2.Text);
                DataManager.searchName(user.Name);

                dataGridView1.DataSource = null;
                if (DataManager.Users.Count > 0)
                {
                    dataGridView1.DataSource = DataManager.Users;
                }
                MessageBox.Show($"'{user.Name}' 회원이 성공적으로 조회되었습니다.");
            }
            catch (Exception ee)
            {
                MessageBox.Show("해당 회원 없음");
            }
        }
    }
}