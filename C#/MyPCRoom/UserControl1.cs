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
using System.Windows.Forms.DataVisualization.Charting;

namespace MyPCRoom
{
    public partial class UserControl1 : UserControl
    {

        List<string> x = new List<string>();
        List<string> y = new List<string>();
        public UserControl1()
        {

            InitializeComponent();

            try
            {
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

                chart1.Series[0].Name = "최고기온";
                chart1.Series[1].Name = "최저기온";

                chart1.ChartAreas["ChartArea1"].AxisX.LabelStyle.Interval = 1;


                chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;

                for (int i = 1; i < dataGridView1.Rows.Count; i++)
                {

                    string day = dataGridView1.Rows[i].Cells[1].Value.ToString();
                    double a = double.Parse(dataGridView1.Rows[i].Cells[2].Value.ToString());
                    double b = double.Parse(dataGridView1.Rows[i].Cells[3].Value.ToString());

                    chart1.Series[0].Points.AddXY(day, a);
                    chart1.Series[1].Points.AddXY(day, b);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine(e.StackTrace);
            }
        }
    }
}
