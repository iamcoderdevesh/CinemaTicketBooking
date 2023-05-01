using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class comingsoon : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
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
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}