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
    public partial class AddMovies1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
        protected void Page_Load(object sender, EventArgs e)
        {
            ChooseDate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            HyperLink addMovies = (HyperLink)Master.FindControl("AddMovies2");
            addMovies.ForeColor = Color.FromArgb(255, 204, 38);
            Label username = (Label)Master.FindControl("AdminName");
            username.Text = Application["AdminName"].ToString();
        }

        protected void CityNameDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            MyTheaterList.DataBind();
        }

        protected void AddMoviesSubmit_Click(object sender, EventArgs e)
        {
            String SelMovieName = MovieNameDropDownList.SelectedValue.ToString();
            String SelCityName = CityNameDropDown.SelectedValue.ToString();
            String SelDate = ChooseDate.Text;
            String SelTheaterName = MyTheaterList.SelectedValue.ToString();
            String Stime1 = Time1.Text;
            String Stime2 = Time2.Text;
            String Stime3 = Time3.Text;
            String TheaterId = "";
            String MovieId = "";
            if (ChooseDate.Text!="" && Time1.Text!="" && Time2.Text != "" && Time3.Text != "")
            {
                if(Time1.Text != Time2.Text && Time1.Text != Time3.Text && Time3.Text != Time2.Text)
                {
                    MyIndicator.Visible = false;
                    try
                    {
                        conn.Open();
                        String query = "select Theater_Id from City_Theater_List where TheaterName='"+ SelTheaterName + "'";
                        SqlCommand cmd=new SqlCommand(query, conn); 
                        SqlDataReader dr= cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while(dr.Read())
                            {
                                TheaterId = (dr.GetInt32(0)).ToString();
                               
                            }
                        }
                        dr.Close();
                    }catch(Exception ex)
                    {
                        MyIndicator.Visible = true;
                        MyIndicator.ForeColor = Color.Red;
                        MyIndicator.Text = "1 "+ex.Message;
                    }
                    finally
                    {
                        conn.Close();
                    }
                    try
                    {
                        conn.Open();
                        String query = "select MovieId from NowShowingMovies where MovieName='" + SelMovieName + "'";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            while (dr.Read())
                            {
                                MovieId = (dr.GetInt32(0)).ToString();

                            }
                        }
                        dr.Close();
                    }
                    catch (Exception ex)
                    {
                        MyIndicator.Visible = true;
                        MyIndicator.ForeColor = Color.Red;
                        MyIndicator.Text = "2 " + ex.Message;
                    }
                    finally
                    {
                        conn.Close();
                    }

                    try
                    {
                        conn.Open();
                        String query = "Select * from MovieAvailableInTheaters  where TheaterId='" + TheaterId + "'and Date='" + SelDate + "'";
                        SqlCommand cmd = new SqlCommand(query, conn);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                           
                            dr.Close();
                            MyIndicator.Visible = true;
                            MyIndicator.ForeColor = Color.Red;
                            MyIndicator.Text = "Movie already exist for the given date and theater";
                        }
                        else
                        {
                            dr.Close();
                            try
                            {
                                String myUniqueId="";
                                String[] shows = { Stime1, Stime2,Stime3 };
                                int Tseat1 = 40;
                                int Tseat2 = 100;
                                int Tseat3 = 120;
                               
                                String query2 = "Insert into MovieAvailableInTheaters  values('" + TheaterId + "','" + MovieId + "','" + SelDate + "','" + Stime1 + "','" + Stime2 + "','" + Stime3 + "')";
                                SqlCommand cmd2 = new SqlCommand(query2, conn);
                                cmd2.ExecuteNonQuery();

                                try { 
                                String query3 = "Select * from MovieAvailableInTheaters where  TheaterId='" + TheaterId + "'and Date='" + SelDate + "'";
                                SqlCommand cmd3=new SqlCommand(query3, conn);
                                SqlDataReader dtr3=cmd3.ExecuteReader();
                                if (dtr3.HasRows)
                                {
                                    while (dtr3.Read()) {
                                        myUniqueId = dtr3.GetInt32(0).ToString();
                                       
                                    }
                                   
                                }
                                dtr3.Close();
                                for (int i = 0; i < shows.Length; i++)
                                {
                                    String query4 = "Insert into ShowDetails values('" + myUniqueId + "','" + shows[i] + "','"+Tseat1+"','"+Tseat2+"','"+Tseat3+"')";
                                    SqlCommand cmd4 = new SqlCommand(query4, conn);
                                    cmd4.ExecuteNonQuery();
                                }
                                
                                MyIndicator.Visible = true;
                                MyIndicator.ForeColor = Color.Green;
                                MyIndicator.Text = SelMovieName + " Movied Add to the Theater " + SelTheaterName;
                                }
                                catch (Exception ex)
                                {
                                    MyIndicator.Visible = true;
                                    MyIndicator.ForeColor = Color.Red;
                                    MyIndicator.Text = "5" + ex.Message;
                                }
                            }
                            catch (Exception ex)
                            {
                                MyIndicator.Visible = true;
                                MyIndicator.ForeColor = Color.Red;
                                MyIndicator.Text = "3 " + ex.Message;
                            }
                            finally
                            {
                                conn.Close();
                            }
                        }

                    }
                    catch (Exception ex) {
                        MyIndicator.Visible = true;
                        MyIndicator.ForeColor = Color.Red;
                        MyIndicator.Text = "4 " + ex.Message;
                    }
                    finally
                    {
                        conn.Close();
                    }
                    

                }
                else {
                    MyIndicator.Visible = true;
                    MyIndicator.ForeColor = Color.Red;
                    MyIndicator.Text = "Please Enter a unique Time Value";      
                }
               
            }
        }
    }
}