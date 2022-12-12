using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyPCRoom
{
    public class DataManager
    {
        public static List<PC_User> Users = new List<PC_User>();
        public static List<PC_User> SortedUsers = new List<PC_User>();

        static DataManager()
        {
            Load();
        }

        public static void Load()
        {
            try
            {
                DBHelper.selectQuery();
                Users.Clear();
                foreach (DataRow item in DBHelper.dt.Rows)
                {
                    PC_User user = new PC_User();
                    user.User_id = item["User_id"].ToString();
                    user.Name = item["Name"].ToString();
                    user.Using_status = item["Using_status"].ToString();

                    user.Start_time = item["Start_time"].ToString() == "" ?
                       new DateTime() :
                       DateTime.Parse(item["Start_time"].ToString());

                    user.Late_time = item["Late_time"].ToString();
                    user.Seat_num = item["Seat_num"].ToString();

                    Users.Add(user);
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.Message + "load");
            }
        }

        //회원 삭제
        public static void delete(string user_id)
        {
            try
            {
                DBHelper.userDeleteQuery(user_id);
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.Message + "DataManager.delete error");
            }
        }

        public static void searchId(string user_id)
        {
            try
            {
                Users.Clear();
                DBHelper.searchIdQuery(user_id);
                foreach (DataRow item in DBHelper.dt.Rows)
                {
                    PC_User user = new PC_User();
                    user.User_id = item["User_id"].ToString();
                    user.Name = item["Name"].ToString();
                    user.Using_status = item["Using_status"].ToString();

                    user.Start_time = item["Start_time"].ToString() == "" ?
                       new DateTime() :
                       DateTime.Parse(item["Start_time"].ToString());

                    user.Late_time = item["Late_time"].ToString();
                    user.Seat_num = item["Seat_num"].ToString();

                    Users.Add(user);
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.Message + "DataManager.search error");
            }
        }
        public static void searchName(string Name)
        {
            try
            {
                Users.Clear();
                DBHelper.searchNameQuery(Name);
                foreach (DataRow item in DBHelper.dt.Rows)
                {
                    PC_User user = new PC_User();
                    user.User_id = item["User_id"].ToString();
                    user.Name = item["Name"].ToString();
                    user.Using_status = item["Using_status"].ToString();

                    user.Start_time = item["Start_time"].ToString() == "" ?
                       new DateTime() :
                       DateTime.Parse(item["Start_time"].ToString());

                    user.Late_time = item["Late_time"].ToString();
                    user.Seat_num = item["Seat_num"].ToString();

                    Users.Add(user);
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show(e.Message + "DataManager.search error");
            }
        }
    }
}
