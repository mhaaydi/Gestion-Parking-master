
using iTextSharp.text;
using iTextSharp.text.pdf;
using MySql.Data.MySqlClient;
using PdfSharp.Drawing;
using PdfSharp.Pdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.Models;
using Image = iTextSharp.text.Image;

namespace WebApplication2.Admin
{
    public partial class DefaultPageAdmin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection("server=localhost;user id=root;database=base_park");
            string result = "SELECT nom from utilisateur where role='Admin' ";
            MySqlCommand showresult = new MySqlCommand(result, connection);

            connection.Open();
            Label1.Text = showresult.ExecuteScalar().ToString();
            connection.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ReservationPayente();
           
        }
        protected void ReservationPayente()
        {
            // affiche les infos des places reserved
            string constr = ConfigurationManager.ConnectionStrings["BdConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM base_park.parkingplace where statut !='libre' and prix !=0 ORDER BY user_mail asc "))
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

                            this.Label2.Visible = true; ;
                            this.TextBox1.Visible = true;
                            this.Button3.Visible = true;
                        }
                    }
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ConsulterParkings();
        }
        protected void ConsulterParkings() { 
            string constr = ConfigurationManager.ConnectionStrings["BdConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {

                using (MySqlCommand cmd = new MySqlCommand("SELECT id,parcelle,etage,type,statut,prix,date_debut,date_fin FROM base_park.parkingplace ORDER BY user_mail asc"))
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

                            this.Label2.Visible = true; ;
                            this.TextBox1.Visible = true;
                            this.Button3.Visible = true;
                        }
                    }
                }
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            string constr = ConfigurationManager.ConnectionStrings["BdConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                
                using (MySqlCommand cmd = new MySqlCommand("SELECT id,parcelle,etage,type,prix,date_debut,date_fin FROM base_park.parkingplace where  statut !='libre';"))
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
            Document doc = new Document(iTextSharp.text.PageSize.LETTER, 10, 10, 42, 35);
            PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(@"C:\Users\Dell\Desktop\Test.pdf", FileMode.Create));
            doc.Open();


            //SELECT id,parcelle,etage,type,prix,date_debut,date_fin
            Random rnd = new Random(); // generer un id random pour la facture + l'utisiler en forme de string 
                                       //var image = iTextSharp.text.Image.GetInstance(@"C:\Users\Dell\Desktop\elloa\Capture111111.PNG");

            string uri = @"C:\Users\Dell\Desktop\LOgo.PNG";
            Image pic = iTextSharp.text.Image.GetInstance(uri);
            
            doc.Add(pic);

            int x = rnd.Next();//
            Paragraph paragraph = new Paragraph(
                // pic.ToString() +
                " \n \n \t                                                       \t    " +
                "Facture : " + x.ToString()
                +"\n \n \n \n"
                + "\n \n Id : " + GridView1.SelectedRow.Cells[1].Text.ToString()
                + "\n \n Nom de l'adhérent : " + Label1.Text.ToString() //////////////

                + "\n \n Parcelle : " + GridView1.SelectedRow.Cells[2].Text.ToString()
                + "\n  \n situé a etage N : " + GridView1.SelectedRow.Cells[3].Text.ToString()
                + "\n \n de type : " + GridView1.SelectedRow.Cells[4].Text.ToString()
                + "\n \n au prix de  : " + GridView1.SelectedRow.Cells[5].Text.ToString()
                + "\n  \n du : " + GridView1.SelectedRow.Cells[6].Text.ToString()
                + "\n  \n jusqu'au : " + GridView1.SelectedRow.Cells[7].Text.ToString()) ; 


            doc.Add(paragraph);
            doc.Close();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ReservationsGratuites();
        }

        protected void ReservationsGratuites()
        {
            // affiche les infos des places reserved
            string constr = ConfigurationManager.ConnectionStrings["BdConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM base_park.parkingplace where statut !='libre' and prix =0 ORDER BY user_mail asc "))
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

                            this.Label2.Visible = true; ;
                            this.TextBox1.Visible = true;
                            this.Button3.Visible = true;
                        }
                    }
                }
            }

        }

    }//
}
