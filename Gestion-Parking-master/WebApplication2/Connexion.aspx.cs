using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class Connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        MySqlDataReader dr;
        public static string monrole = "pas de role";
        
        protected void Button1_Click1(object sender, EventArgs e)
        {
            g.connect();

            g.cmd.CommandText = "select count(*) from utilisateur where mail='" + txtlog.Text + "' and mdp='" + txtmdp.Text + "'";
            g.cmd.Connection = g.con;
            Session["auth"] = "decon";
            int res = int.Parse(g.cmd.ExecuteScalar().ToString());
            if (res == 1)
            {
                g.cmd.CommandText = "select Role from utilisateur where mail ='" + txtlog.Text + "' and mdp='" + txtmdp.Text + "'";
                dr = g.cmd.ExecuteReader();
                System.Data.DataTable dtrole = new DataTable();
                dtrole.Load(dr);
                System.Data.DataRow datar = dtrole.Rows[0];

                Session["role"] = datar["role"].ToString();
                Session["auth"] = "con";
                Session["login"] = txtlog.Text;
                if (Session["role"].ToString() == "Admin")
                    Response.Redirect("/Admin/DefaultPageAdmin.aspx");
                if (Session["role"].ToString() == "User") { 
                    Response.Redirect("/Utilisateur/DefaultPage.aspx");
                 
                }


            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscription.aspx");
        }

        protected void txt_Username_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {

        }
    }
}