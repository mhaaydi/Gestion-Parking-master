using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using MySql.Data.Common;
using System.Data;
namespace WebApplication2.Models
{
    public class g
    {
        public static MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=base_park");
        public static MySqlCommand cmd = new MySqlCommand();
        public static MySqlDataReader dr;

        public static void connect()
        {
            if (con.State == ConnectionState.Open || con.State == ConnectionState.Broken)
                con.Close();

            con.Open();
        }
        public static void deconnect()
        {
            con.Close();
        }
    }
}