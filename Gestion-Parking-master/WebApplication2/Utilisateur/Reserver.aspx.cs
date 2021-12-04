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

namespace WebApplication2.User
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["BdConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT id,parcelle,etage,type,prix,statut,date_debut,date_fin FROM base_park.parkingplace where  statut='libre';"))
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

            //Calendar gestion
            if(!IsPostBack) { Calendar1.Visible = false; Calendar2.Visible = false; }
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            g.connect();

            g.cmd.CommandText = "update parkingplace set statut='full' where id = '"+TextBox1.Text+ " '";
            g.cmd.Connection = g.con;
            try
            {
                if (g.cmd.ExecuteNonQuery() > 0)
                {
                    g.cmd.CommandText = "update parkingplace set statut='full', date_debut='"+TextBox4.Text+"', date_fin='"+TextBox5.Text +"' where id = '" + TextBox1.Text + "'";
                    g.cmd.ExecuteNonQuery();
                }
                Response.Redirect("Reserver.aspx");


            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }



            g.deconnect();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[8].Text;
           
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
          if (Calendar1.Visible == false) Calendar1.Visible = true;
          else Calendar1.Visible = false;
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
             TextBox4.Text = Calendar1.SelectedDate.ToString("d");
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox5.Text = Calendar2.SelectedDate.ToString("d");
            Calendar1.Visible = false;
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible == false) Calendar2.Visible = true;
            else Calendar2.Visible = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}