using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CinemaTicketBooking;
using System.Security.Cryptography;

namespace MovieDetails
{
    public partial class Kantara : System.Web.UI.Page
    {
        String email;
        String LoginStatus;
        SqlConnection con = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");

        protected void Page_Load(object sender, EventArgs e)
        {
            String movie;
            String city;
            movie = Application["MovieName"].ToString();
            city = Request.QueryString["city"].ToString();
            
            Application["mycity"] = city;
            email = Application["email"].ToString();
            
            LoginStatus = Application["LoginStatus"].ToString();
            Label44.Visible = false;
            DropDownList selectcity = (DropDownList)Master.FindControl("SelectCity");
            selectcity.SelectedValue = Request.QueryString["city"].ToString();
         
            if (Request.QueryString["moviename"].ToString() == "kantara")
            {
                kantara();
            }
            else if(Request.QueryString["moviename"].ToString() == "avatar")
            {
                avatar();
            }
            else if (Request.QueryString["moviename"].ToString() == "drishyam2")
            {
                drishyam2();
            }
            else if (Request.QueryString["moviename"].ToString() == "blackpanther")
            {
                black_panther();
            }
            else if (Request.QueryString["moviename"].ToString() == "godavari")
            {
                godavari();
            }
            else if (Request.QueryString["moviename"].ToString() == "blackadam")
            {
                black_adam();
            }
            else if (Request.QueryString["moviename"].ToString() == "ramsetu")
            {
                ramsetu();
            }
            else if (Request.QueryString["moviename"].ToString() == "phonebhoot")
            {
                phonebhoot();
            }
            else if (Request.QueryString["moviename"].ToString() == "mili")
            {
                mili();
            }



        }

        private void kantara()
        {
            String query = "Select * from moviedetails where title = 'kantara'";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl= dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();


                try
                {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'kantara' and city = 'Mumbai' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();

            }
                catch (Exception ex) {
                    //Response.Redirect("<Script>alert('" + ex.Message + "')</Script>");
                    Response.Write(ex.Message);
                }
               
            
           
            con.Close();

            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();

        }

        private void avatar()
        {
           
            String query = "Select * from moviedetails where title = 'avatar'";
            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
          
            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'Avatar' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void drishyam2()
        {
           
            String query = "Select * from moviedetails where title = 'drishyam 2'";
          
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'Driyasham 2' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void black_panther()
        {
           

            String query = "Select * from moviedetails where title = 'black panther'";
          
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
          
            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'Black Panther' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void godavari()
        {
           
            String query = "Select * from moviedetails where title = 'godavari'";
           
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
           
            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'Godavari' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void mili()
        {
           
            String query = "Select * from moviedetails where title = 'mili'";
            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);
          
            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'Mili' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void ramsetu()
        {
           
            String query = "Select * from moviedetails where title = 'RAM SETU'";
           
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);

            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'Ram setu' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void phonebhoot()
        {
           
            String query = "Select * from moviedetails where title = 'PHONE BHOOT'";
           
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);

            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'PHONE BHOOT' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }

        private void black_adam()
        {
            
            String query = "Select * from moviedetails where title = 'BLACK ADAM'";
            
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataTable dt = new DataTable();
            da.Fill(dt);

            Label1.Text = dt.Rows[0]["title"].ToString();
            Image1.ImageUrl = dt.Rows[0]["banner"].ToString();
            Image2.ImageUrl = dt.Rows[0]["poster"].ToString();
            Label2.Text = dt.Rows[0]["quality"].ToString();
            Label3.Text = dt.Rows[0]["language"].ToString();
            Label4.Text = dt.Rows[0]["category"].ToString();
            Label5.Text = dt.Rows[0]["release"].ToString();
            Label50.Text = dt.Rows[0]["likes"].ToString();
            Label51.Text = dt.Rows[0]["about"].ToString();

            Image5.ImageUrl = dt.Rows[0]["castimg1"].ToString();
            Label14.Text = dt.Rows[0]["castname1"].ToString();
            Label15.Text = dt.Rows[0]["castrole1"].ToString();

            Image6.ImageUrl = dt.Rows[0]["castimg2"].ToString();
            Label16.Text = dt.Rows[0]["castname2"].ToString();
            Label17.Text = dt.Rows[0]["castrole2"].ToString();

            Image7.ImageUrl = dt.Rows[0]["castimg3"].ToString();
            Label18.Text = dt.Rows[0]["castname3"].ToString();
            Label19.Text = dt.Rows[0]["castrole3"].ToString();

            Image8.ImageUrl = dt.Rows[0]["castimg4"].ToString();
            Label20.Text = dt.Rows[0]["castname4"].ToString();
            Label21.Text = dt.Rows[0]["castrole4"].ToString();

            Image9.ImageUrl = dt.Rows[0]["crewimg1"].ToString();
            Label23.Text = dt.Rows[0]["crewname1"].ToString();
            Label24.Text = dt.Rows[0]["crewrole1"].ToString();

            Image10.ImageUrl = dt.Rows[0]["crewimg2"].ToString();
            Label25.Text = dt.Rows[0]["crewname2"].ToString();
            Label26.Text = dt.Rows[0]["crewrole2"].ToString();

            Image11.ImageUrl = dt.Rows[0]["crewimg3"].ToString();
            Label27.Text = dt.Rows[0]["crewname3"].ToString();
            Label28.Text = dt.Rows[0]["crewrole3"].ToString();

            Image12.ImageUrl = dt.Rows[0]["crewimg4"].ToString();
            Label29.Text = dt.Rows[0]["crewname4"].ToString();
            Label30.Text = dt.Rows[0]["crewrole4"].ToString();

            ImageButton1.PostBackUrl = dt.Rows[0]["castmore"].ToString();
            HyperLink1.NavigateUrl = dt.Rows[0]["castmore"].ToString();
            ImageButton2.PostBackUrl = dt.Rows[0]["crewmore"].ToString();
            HyperLink2.NavigateUrl = dt.Rows[0]["crewmore"].ToString();

            hy2.NavigateUrl = dt.Rows[0]["trailer"].ToString();

            if (email != "false")
            {
                cmd.CommandText = "select Show1, Show2, Show3, City, date, TheaterName, uniqueid from MovieAvailableInTheaters as a left join City_Theater_List as b on a.TheaterId = b.Theater_Id left join NowShowingMovies as c on a.MovieId = c.MovieId where MovieName = 'BLACK ADAM' and city = '" + Request.QueryString["city"].ToString() + "' ";
                cmd.ExecuteNonQuery();
                SqlDataAdapter dsa = new SqlDataAdapter();
                dsa.SelectCommand = cmd;
                DataTable data = new DataTable();
                dsa.Fill(data);
                ListView1.DataSource = data;
                ListView1.DataBind();
            }
            else
            {
                Label44.Visible = true;
            }

            con.Close();
            Label43.Text = "home page > " + Request.QueryString["moviename"].ToString();
        }


       
    }
}