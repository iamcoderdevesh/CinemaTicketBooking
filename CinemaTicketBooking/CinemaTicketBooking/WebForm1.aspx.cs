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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dataload();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = 6;
            SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
            conn.Open();
            string query = "insert into login (id,username,password) values('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlCommand sc = new SqlCommand(query, conn);
            sc.ExecuteNonQuery();
            conn.Close();
            dataload();



        }

        protected void dataload()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");

            SqlDataAdapter adapter = new SqlDataAdapter("Select * from login", conn);
            DataTable dt = new DataTable();

            adapter.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

    }
}