using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MyPCRoom
{
    public partial class Weather : Form
    {

        List<string> x = new List<string>();
        List<string> y = new List<string>();

        public Weather()
        {
            InitializeComponent();

            StreamReader file = new StreamReader("2022평균기온.csv", Encoding.Default);

            DataTable table = new DataTable();

            table.Columns.Add("");
            table.Columns.Add("");
            table.Columns.Add("");
            table.Columns.Add("");

            while (!file.EndOfStream)
            {
                string line = file.ReadLine();

                string[] data = line.Split(',');
                table.Rows.Add(data[0], data[1], data[2], data[3]);

                y.Add(data[0]);
                y.Add(data[1]);
                y.Add(data[2]);
                y.Add(data[3]);

            }
            dataGridView1.DataSource = table;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            userControl11.BringToFront();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Dispose();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            userControl11.SendToBack();
        }

        private void Weather_Shown(object sender, EventArgs e)
        {
            Graphics g = CreateGraphics();
            Pen p = new Pen(Color.Black, 3);

            Rectangle rec = new Rectangle(0, 0, 978, 452);
            g.DrawRectangle(p, rec);
        }
    }
}
