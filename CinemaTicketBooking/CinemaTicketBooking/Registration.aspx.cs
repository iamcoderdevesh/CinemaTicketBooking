using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.NetworkInformation;
using System.Web.Services.Description;
using static System.Net.Mime.MediaTypeNames;
using System.Runtime.Remoting.Messaging;

namespace Registration
{
    public partial class Registration : System.Web.UI.Page
    {
        String code;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != null)
            {
                String conn = "Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123";
           
                String q = ("select * from Registration where Email='" + TextBox2.Text + "' and Status = 'verified' ");
                SqlConnection sqlconn = new SqlConnection(conn);
                sqlconn.Open();
                SqlCommand cammand = new SqlCommand(q, sqlconn);
                Console.WriteLine("Before cmd");
                cammand.ExecuteNonQuery();
                Console.WriteLine("After cmd");
                SqlDataReader reader = cammand.ExecuteReader();
                if (reader.HasRows)
                {
                    Label7.Text = "The Email Id already exists in our the database";
                }
                else
                {
                    try
                    {
                        Random rm = new Random();
                        code = rm.Next(1001, 9999).ToString();
                        String con = "Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123";
                        String query = "insert into Registration (Username, Phone_Number, Email, Password, Confirm_Password, Status, Code) values('" + TextBox1.Text + "', '" + TextBox5.Text + "' ,'" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "',  'unverified',  '" + code + "' )";
                        SqlConnection sqlcon = new SqlConnection(con);
                        sqlcon.Open();
                        SqlCommand cmd = new SqlCommand(query, sqlcon);
                        cmd.ExecuteNonQuery();
                        sendcode();

                        Response.Redirect("Verification.aspx?emailadd=" + TextBox2.Text);

                    }

                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "')</script>");
                        //Response.Write(ex.Message);
                    }

                }

            }

        }

        private void sendcode()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("omkar.sahyog29@gmail.com", "ytopchalmiubtfcg");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Verification code for registration";
            msg.Body = "Dear " + TextBox1.Text + ", Your verification code is: " + code + "\n\n\nThanks & Regards \nLynx Cinema Team";
            String toaddress = TextBox2.Text;
            msg.To.Add(toaddress);
            String fromaddress = "Lynx Cinema <omkar.sahyog29@gmail.com>";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }

        }


    }



    
}