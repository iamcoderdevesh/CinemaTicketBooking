using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class Homepage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                String query = "Select * from NowShowingMovies where MovieId=1";
                SqlCommand cmd=new SqlCommand(query, conn);
                SqlDataReader sqdr=cmd.ExecuteReader();
                while (sqdr.Read()) {
                    Image1.ImageUrl = sqdr.GetString(3);
                    Movie1_lb1.Text=sqdr.GetString(1);
                    Movie1_lb2.Text=sqdr.GetString(2);
                }
               sqdr.Close();
               
                String query2 = "Select * from NowShowingMovies where MovieId=2";
                SqlCommand cmd2 = new SqlCommand(query2, conn);
                SqlDataReader sqdr2 = cmd2.ExecuteReader();
                while (sqdr2.Read())
                {
                    Image2.ImageUrl = sqdr2.GetString(3);
                    Movie2_lb1.Text = sqdr2.GetString(1);
                    Movie2_lb2.Text = sqdr2.GetString(2);
                }
                sqdr2.Close();

                String query3 = "Select * from NowShowingMovies where MovieId=3";
                SqlCommand cmd3 = new SqlCommand(query3, conn);
                SqlDataReader sqdr3 = cmd3.ExecuteReader();
                while (sqdr3.Read())
                {
                    Image3.ImageUrl = sqdr3.GetString(3);
                    Movie3_lb1.Text = sqdr3.GetString(1);
                    Movie3_lb2.Text = sqdr3.GetString(2);
                }
                sqdr3.Close();

                String query4 = "Select * from NowShowingMovies where MovieId=4";
                SqlCommand cmd4 = new SqlCommand(query4, conn);
                SqlDataReader sqdr4 = cmd4.ExecuteReader();
                while (sqdr4.Read())
                {
                    Image4.ImageUrl = sqdr4.GetString(3);
                    Movie4_lb1.Text = sqdr4.GetString(1);
                    Movie4_lb2.Text = sqdr4.GetString(2);
                }
                sqdr4.Close();

                String query5 = "Select * from NowShowingMovies where MovieId=5";
                SqlCommand cmd5 = new SqlCommand(query5, conn);
                SqlDataReader sqdr5 = cmd5.ExecuteReader();
                while (sqdr5.Read())
                {
                    Image5.ImageUrl = sqdr5.GetString(3);
                    Movie5_lb1.Text = sqdr5.GetString(1);
                    Movie5_lb2.Text = sqdr5.GetString(2);
                }
                sqdr5.Close();

                String query6 = "Select * from NowShowingMovies where MovieId=6";
                SqlCommand cmd6 = new SqlCommand(query6, conn);
                SqlDataReader sqdr6 = cmd6.ExecuteReader();
                while (sqdr6.Read())
                {
                    Image6.ImageUrl = sqdr6.GetString(3);
                    Movie6_lb1.Text = sqdr6.GetString(1);
                    Movie6_lb2.Text = sqdr6.GetString(2);
                }
                sqdr6.Close();

                String query7 = "Select * from NowShowingMovies where MovieId=7";
                SqlCommand cmd7 = new SqlCommand(query7, conn);
                SqlDataReader sqdr7 = cmd7.ExecuteReader();
                while (sqdr7.Read())
                {
                    Image7.ImageUrl = sqdr7.GetString(3);
                    Movie7_lb1.Text = sqdr7.GetString(1);
                    Movie7_lb2.Text = sqdr7.GetString(2);
                }
                sqdr7.Close();

                String query8 = "Select * from NowShowingMovies where MovieId=8";
                SqlCommand cmd8 = new SqlCommand(query8, conn);
                SqlDataReader sqdr8 = cmd8.ExecuteReader();
                while (sqdr8.Read())
                {
                    Image8.ImageUrl = sqdr8.GetString(3);
                    Movie8_lb1.Text = sqdr8.GetString(1);
                    Movie8_lb2.Text = sqdr8.GetString(2);
                }
                sqdr8.Close();

                //------------------------------------------------------------------//

                
                String query9 = "Select * from CommingSoonMovies where MovieId=1";
                SqlCommand cmd9 = new SqlCommand(query9, conn);
                SqlDataReader sqdr9 = cmd9.ExecuteReader();
                while (sqdr9.Read())
                {
                    Image9.ImageUrl = sqdr9.GetString(2);
                    Movie9_lb1.Text = sqdr9.GetString(1);
                    Movie9_lb2.Text = sqdr9.GetString(3);
                }
                sqdr9.Close();

                String query10 = "Select * from CommingSoonMovies where MovieId=2";
                SqlCommand cmd10 = new SqlCommand(query10, conn);
                SqlDataReader sqdr10 = cmd10.ExecuteReader();
                while (sqdr10.Read())
                {
                    Image10.ImageUrl = sqdr10.GetString(2);
                    Movie10_lb1.Text = sqdr10.GetString(1);
                    Movie10_lb2.Text = sqdr10.GetString(3);
                }
                sqdr10.Close();

                String query11 = "Select * from CommingSoonMovies where MovieId=3";
                SqlCommand cmd11 = new SqlCommand(query11, conn);
                SqlDataReader sqdr11 = cmd11.ExecuteReader();
                while (sqdr11.Read())
                {
                    Image11.ImageUrl = sqdr11.GetString(2);
                    Movie11_lb1.Text = sqdr11.GetString(1);
                    Movie11_lb2.Text = sqdr11.GetString(3);
                }
                sqdr11.Close();

                String query12 = "Select * from CommingSoonMovies where MovieId=4";
                SqlCommand cmd12 = new SqlCommand(query12, conn);
                SqlDataReader sqdr12 = cmd12.ExecuteReader();
                while (sqdr12.Read())
                {
                    Image12.ImageUrl = sqdr12.GetString(2);
                    Movie12_lb1.Text = sqdr12.GetString(1);
                    Movie12_lb2.Text = sqdr12.GetString(3);
                }
                sqdr12.Close();

                String query13 = "Select * from CommingSoonMovies where MovieId=5";
                SqlCommand cmd13 = new SqlCommand(query13, conn);
                SqlDataReader sqdr13 = cmd13.ExecuteReader();
                while (sqdr13.Read())
                {
                    Image13.ImageUrl = sqdr13.GetString(2);
                    Movie13_lb1.Text = sqdr13.GetString(1);
                    Movie13_lb2.Text = sqdr13.GetString(3);
                }
                sqdr13.Close();

                String query14 = "Select * from CommingSoonMovies where MovieId=6";
                SqlCommand cmd14 = new SqlCommand(query14, conn);
                SqlDataReader sqdr14 = cmd14.ExecuteReader();
                while (sqdr14.Read())
                {
                    Image14.ImageUrl = sqdr14.GetString(2);
                    Movie14_lb1.Text = sqdr14.GetString(1);
                    Movie14_lb2.Text = sqdr14.GetString(3);
                }
                sqdr14.Close();

                String query15 = "Select * from CommingSoonMovies where MovieId=7";
                SqlCommand cmd15 = new SqlCommand(query15, conn);
                SqlDataReader sqdr15 = cmd15.ExecuteReader();
                while (sqdr15.Read())
                {
                    Image15.ImageUrl = sqdr15.GetString(2);
                    Movie15_lb1.Text = sqdr15.GetString(1);
                    Movie15_lb2.Text = sqdr15.GetString(3);
                }
                sqdr15.Close();

                String query16 = "Select * from CommingSoonMovies where MovieId=8";
                SqlCommand cmd16 = new SqlCommand(query16, conn);
                SqlDataReader sqdr16 = cmd16.ExecuteReader();
                while (sqdr16.Read())
                {
                    Image16.ImageUrl = sqdr16.GetString(2);
                    Movie16_lb1.Text = sqdr16.GetString(1);
                    Movie16_lb2.Text = sqdr16.GetString(3);
                }
                sqdr16.Close();
                //------------------------------------------------------------------//
           
            }
            catch (Exception ex) {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
            finally
            {
                conn.Close();
            }
           
        }

        //protected void Panel2_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString(); 
        //    Session["MovieName"] = Movie1_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel3_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie2_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel4_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie3_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel5_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie4_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel6_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie5_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel7_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie6_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel8_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie7_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}

        //protected void Panel9_Click(object sender, EventArgs e)
        //{
        //    DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
        //    Session["City"] = selectcity.SelectedItem.Text.ToString();
        //    Session["MovieName"] = Movie8_lb1.Text;
        //    Response.Redirect("IMAX.aspx");
        //}
        protected void Panel2_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie1_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=blackpanther&city=" + city);
        }

        protected void Panel3_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie2_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=drishyam2&city=" + city);
        }

        protected void Panel4_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie3_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=godavari&city=" + city);
        }

        protected void Panel5_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie4_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=kantara&city=" + city);
        }

        protected void Panel6_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie5_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=mili&city=" + city);
        }


        protected void Panel7_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie6_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=avatar&city=" + city);
        }

        protected void Panel8_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie7_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=ramsetu&city=" + city);
        }
        protected void Panel9_Click(object sender, EventArgs e)
        {
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            String city = selectcity.SelectedItem.Text.ToString();
            Application["MovieName"] = Movie8_lb1.Text;
            Application["SelCity"] = selectcity.SelectedItem.Text.ToString();
            Response.Redirect("MovieBook.aspx?moviename=blackadam&city=" + city);
        }


    }
}