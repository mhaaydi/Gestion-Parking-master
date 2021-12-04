using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class DefaultPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=base_park");
            string result = "SELECT nom FROM utilisateur WHERE mail LIKE 'Test@gmail.com' ;";
           

            MySqlCommand showresult = new MySqlCommand(result, connection);

            connection.Open();
           Label1.Text = showresult.ExecuteScalar().ToString();
            connection.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            remplirgrid();

        }

        protected void remplirgrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["BdConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM parkingplace where user_mail ='Test@gmail.com';"))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reserver.aspx");
        }
    }
}