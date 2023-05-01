using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
   
    public partial class CheckBookings : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MyGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            MyGridView.DataBind();
        }

        protected void DateObject_TextChanged(object sender, EventArgs e)
        {
            String SelDate = DateObject.Text;
            String query = "Select dbo.City_Theater_List.TheaterName,dbo.City_Theater_List.City,dbo.NowShowingMovies.MovieName," +
                "dbo.MovieAvailableInTheaters.Date," +
                "dbo.MovieAvailableInTheaters.Show1,dbo.MovieAvailableInTheaters.Show2,dbo.MovieAvailableInTheaters.Show3 from((dbo.MovieAvailableInTheaters Inner Join dbo.City_Theater_List On dbo.MovieAvailableInTheaters.TheaterId= dbo.City_Theater_List.Theater_Id) Inner Join dbo.NowShowingMovies on dbo.MovieAvailableInTheaters.MovieId= dbo.NowShowingMovies.MovieId )" +
                "where dbo.MovieAvailableInTheaters.Date='" + SelDate+ "'";
            try
            {
                MyGridView.DataSource = null;
                MyGridView.DataBind();
                SqlCommand cmd = new SqlCommand(query, conn);
                DataTable dt = new DataTable();
                dt.Load(cmd.ExecuteReader());
                MyGridView.DataSource = dt;
                MyGridView.DataBind();
 
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}