using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;

namespace WebApplication2
{
    public partial class inscription : System.Web.UI.Page
    {

        MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=base_park");

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //  MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=base_park");
            connection.Open();
             
            Models.User u = new Models.User(); 
                
                u.nom = TextBox6.Text;
                u.tel = TextBox9.Text;
                u.prenom = TextBox5.Text;
                u.mail = TextBox2.Text;
                u.mdp = TextBox3.Text;
                u.role = "User";
                u.login = "User";
            MySqlCommand commande = new MySqlCommand();
                commande.Connection = connection;
                commande.CommandText = "INSERT INTO utilisateur (nom, prenom, mail, mdp, tel, role, login)" +
                 "Values('" + u.nom + "', '" + u.prenom + "', '" + u.mail + "', '" + u.mdp + "', '" + u.tel + "', '" + u.role + "', '" + u.login + "')";
              //  commande.CommandText = "insert into utilisateur values('" + u.nom + "','" + u.prenom + "','" + u.mail + "','" + u.login + "','" + u.mdp + "','" + u.role + " ')";
                commande.ExecuteNonQuery();
               
                TextBox6.Text = "";
                TextBox5.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
                TextBox3.Text = "";
                TextBox9.Text = "";

               
           
               
            Response.Redirect("connexion.aspx");
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

    

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Connexion.aspx");
        }
    }
}

     