using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Registration
{
    public partial class Verification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.Visible = true;
            MultiView1.SetActiveView(View1);

            Label1.Text = "Your email address is " + Request.QueryString["emailadd"].ToString() + ", kindly check your inbox for verifiation code";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                try
                {
                    String mycon = "Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123";
                    String query = "Select * from Registration where Email= '" + Request.QueryString["emailadd"] + "' ";
                    SqlConnection con = new SqlConnection(mycon);
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        //Response.Write("1st if block");
                        String code;
                        code = ds.Tables[0].Rows[0]["Code"].ToString();
                        if (code == TextBox1.Text)
                        {
                            //Response.Write("2 if block");
                            changestatus();
                            Label4.Text = "Congrats, You have succesufully created a account.";
                            MultiView1.Visible = true;
                            MultiView1.SetActiveView(View2);
                        }
                        else
                        {
                            //Response.Write("else block");
                            Label5.Text = "Code is Invalid";
                        }
                    }
                    con.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }

            }
            else
            {
                Label5.Text = "Please insert a verification code";
            }
           

        }

        private void changestatus()
        {
            String mycon = "Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123";
            String query = "update Registration set Status='verified' where Email= '" + Request.QueryString["emailadd"] + "' ";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["CheckUser"] = "User is Registered";
            Response.Redirect("Homepage.aspx");
            //HttpCookie h = new HttpCookie("Register", "User is Registered");
            //h.Expires = DateTime.Now.AddMinutes(10);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
            Response.Redirect("Registration.aspx");

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}