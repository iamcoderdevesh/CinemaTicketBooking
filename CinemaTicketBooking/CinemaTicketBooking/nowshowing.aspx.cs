using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class nowshowing : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                String query = "Select * from NowShowingMovies where MovieId=1";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader sqdr = cmd.ExecuteReader();
                while (sqdr.Read())
                {
                    Image1.ImageUrl = sqdr.GetString(3);
                    Movie1_lb1.Text = sqdr.GetString(1);
                    Movie1_lb2.Text = sqdr.GetString(2);
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
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}