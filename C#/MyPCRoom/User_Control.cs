using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace MyPCRoom
{
    public partial class User_Control : Form
    {
        public static Boolean Name_duplicate = false;
        public User_Control()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //회원등록
            if (textBox1.Text == "")
                MessageBox.Show("id를 입력하세요");
            else if (textBox2.Text == "")
                MessageBox.Show("이름 입력하세요");
            else
            {
                DBHelper.userAddQuery(textBox1.Text, textBox2.Text);
                MessageBox.Show("회원등록이 완료되었습니다.");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            // 중복체크
            if (textBox1.Text == "")
            {
                MessageBox.Show("아이디를 입력해주세요");
                return;
            }
            else if (textBox2.Text == "")
            {
                MessageBox.Show("이름을 입력해주세요");
                return;
            }
            try
            {
                PC_User user = DataManager.Users.Single(x => x.User_id == textBox1.Text);
                if (user.User_id.Trim() != "")
                {
                    button1.Enabled = false;
                    MessageBox.Show("이미 사용중인 아이디입니다.");
                }
            }
            catch (Exception)
            {
                Name_duplicate = true;
                button1.Enabled = true;
                MessageBox.Show("사용 가능한 아이디입니다.");
            }
        }
        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                PC_User user = DataManager.Users.Single(x => x.User_id == textBox3.Text);
                DataManager.delete(user.User_id);
                MessageBox.Show($"'{user.User_id}' 회원이 성공적으로 삭제되었습니다.");
            }
            catch (Exception ee)
            {
                MessageBox.Show(ee.Message + "user_delete_error");
            }
        }
    }
}
