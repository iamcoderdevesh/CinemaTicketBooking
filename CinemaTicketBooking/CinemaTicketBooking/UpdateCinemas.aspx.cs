using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class AddMovies : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink addMovies = (HyperLink)Master.FindControl("AddMovies");
            addMovies.ForeColor = Color.FromArgb(255, 204, 38);
            Label username = (Label)Master.FindControl("AdminName");
            username.Text = Application["AdminName"].ToString();
            
        }

        protected void NowShowingTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            MovieId.Text = NowShowingTable.SelectedRow.Cells[1].Text;
            MovieName.Text = NowShowingTable.SelectedRow.Cells[2].Text;
            MovieType.Text = NowShowingTable.SelectedRow.Cells[3].Text;
            UploadIndicator.Visible = true;
            UploadIndicator.ForeColor = Color.Red;
            UploadIndicator.Text = NowShowingTable.SelectedRow.Cells[4].Text;

        }

        protected void UpdateMoviesSubmit_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles && MovieName.Text != "" && MovieType.Text != "") {
                String movieName = MovieName.Text;
                String movieType = MovieType.Text;
                String movieId = MovieId.Text;
                FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/images/" + FileUpload1.FileName.ToString());
                String filePath = "~/images/"+FileUpload1.FileName.ToString();
                try {
                    conn.Open();
                    String query = "Update NowshowingMovies set MovieName='" + movieName + "', MovieType='" + movieType + "', MovieImageLocation='" + filePath + "' where MovieId='"+movieId+"'";
                    SqlCommand cmd=new SqlCommand(query,conn);
                    cmd.ExecuteNonQuery();
                    UploadIndicator.ForeColor= Color.FromArgb(255, 204, 38);
                    UploadIndicator.Text = "Movie Updated Successfully";
                    NowShowingTable.DataBind();
                }
                catch(Exception ex) {
                    Response.Write("<Script>alert('"+ex.Message+"')</Script>");
                }
              

            }
        }
    }
}