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
using System.Runtime.Remoting.Messaging;
//using iTextSharp.text;
using System.IO;
using InstamojoAPI;
using System.Web.Util;
using Razorpay.Api;
//using iTextSharp.text.html.simpleparser;
//using iTextSharp.text.pdf;

namespace CinemaTicketBooking
{
    public partial class print_ticket : System.Web.UI.Page
    {
        String tid;
        SqlConnection con = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieName.Text = Application["MovieName"].ToString();
            TheaterName.Text = Application["TheaterName"].ToString();
            City.Text = Application["SelCity"].ToString();
            SeatNo.Text = Application["TicketNumbers"].ToString();
            String CustSeatNo= Application["TicketNumbers"].ToString();
            TotalAmount.Text = Application["TotalAmount"].ToString();
            String myTotalamount = Application["TotalAmount"].ToString();
            String uniqueId = Application["Uid"].ToString();
            Time.Text= Application["Time"].ToString();
            String ShowTime= Application["Time"].ToString();

            //checkPaymentStatus();

            //String Instamojo_client_id = "test_UxdYuyUmqMlq9aSOWVdpdPVYl4ROSel3l4L";
            //String Insta_client_secret = "test_94NLukJVH2HsGx8tIQRiJM472AaLYmh5aveVepggCXuvM8kfQjVhq9fEAKArM36ONt6JaKTYueCA6ftrsZGQA1vPkcT6TX0VkhNgXc5x7GF9xzom0zEwcSnrxJr";
            //String Insta_Endpoint = InstamojoConstants.INSTAMOJO_API_ENDPOINT;
            //String Insta_Auth_EndPoint = InstamojoConstants.INSTAMOJO_AUTH_ENDPOINT;
            //Instamojo objClass = InstamojoImplementation.getApi(Instamojo_client_id, Insta_client_secret, Insta_Endpoint, Insta_Auth_EndPoint);
            //DetailsOfPayment(objClass);
            transactionId.Text = tid;
            String CustomerEmail = Application["email"].ToString();
            String query = "Select * from Registration where Email='" + CustomerEmail + "'";
            String TicketId="";
            String Cid = "";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        Cid = (sdr.GetInt32(0)).ToString();

                    }   
                }
                sdr.Close();
                String query2 = "Insert into Bookings values('"+Cid+"','"+ShowTime+"','"+CustSeatNo+"','"+ uniqueId + "')";
                try
                {
                    SqlCommand cmd2=new SqlCommand(query2, con);
                    cmd2.ExecuteNonQuery();
                }catch(Exception ex)
                {
                    Response.Write("1"+ex.Message);
                }
                String query3 = "Select TicketNo from Bookings where Cid='" + Cid + "' and SeatNo='" + CustSeatNo + "'";
                try
                {

                    SqlCommand cmd3 = new SqlCommand(query3, con);
                    SqlDataReader sdr3 = cmd3.ExecuteReader();
                    if (sdr3.HasRows)
                    {
                        while (sdr3.Read())
                        {
                            TicketId = (sdr3.GetInt32(0)).ToString(); 

                        }
                    }
                    sdr3.Close();
                    String query4 = "Insert into Payment values('"+Cid+"','"+TicketId+"','"+myTotalamount+"')";
                    try
                    {
                        SqlCommand cmd4 = new SqlCommand(query4, con);
                        cmd4.ExecuteNonQuery();
                    }catch(Exception ex)
                    {
                        Response.Write("4" + ex.Message);
                    }
                }
                catch(Exception ex)
                {
                    Response.Write("2" + ex.Message);
                }
            }
            catch (Exception ex) { 
            Response.Write("3" + ex.Message);
            
            }

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            sendemail();
            Response.Redirect("Homepage.aspx");
        }
        private void sendemail()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("omkar.sahyog29@gmail.com", "ytopchalmiubtfcg");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Your purchased ticket from LYNX Cinema";
            msg.Body = "Dear " + Application["email"].ToString() + ",\n Movie Name :\t" + Application["MovieName"].ToString() + "\n Theatre Name :\t" + Application["TheaterName"].ToString() + "\n Seat no :\t" + Application["TicketNumbers"].ToString() + "\n Movie Time :\t" + Application["Time"].ToString() + "\n Time :\t" + Application["Time"].ToString() + "\n Amout paid :\t" + Application["TotalAmount"].ToString() + "\n Transaction Id :\t" + tid + "\n\n\nThanks & Regards, \n Lynx Cinema Team";
            String toaddress = Application["email"].ToString();
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


        public void checkPaymentStatus()
        {
            string paymentId = Request.Form["razorpay_payment_id"];
            int am = Convert.ToInt32(Math.Round(Convert.ToDouble(Session["totalprice"].ToString())));
            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", am); // this amount should be same as transaction amount

            string key = "rzp_test_Fn4uJmdo9qlGIG";
            string secret = "jcgIPtGFBdoWdmt3DVC1Gb6l";

            RazorpayClient client = new RazorpayClient(key, secret);
            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
            Dictionary<string, string> attributes = new Dictionary<string, string>();

            attributes.Add("razorpay_payment_id", paymentId);
            attributes.Add("razorpay_order_id", Request.Form["razorpay_order_id"]);
            attributes.Add("razorpay_signature", Request.Form["razorpay_signature"]);

            Utils.verifyPaymentSignature(attributes);

            //if (ServicePointManager.SecurityProtocol.HasFlag(SecurityProtocolType.Tls12) == false)
            //{
            //    ServicePointManager.SecurityProtocol = ServicePointManager.SecurityProtocol | SecurityProtocolType.Tls12;
            //}

            //string generated_signature = hmac_sha256(Request.Form["razorpay_order_id"] + "|" + paymentId, secret);

            //if (generated_signature == Request.Form["razorpay_signature"])
            //{
            //payment is successful

            //Literal1.Text = "<table style='width:100%' border='1'><tr><td>Product Name:</td><td>" + Session["product"].ToString() + "</td></tr><tr><td>Amount ₹:</td><td>" + Session["totalprice"].ToString() + "</td></tr><tr><td>Payment Status:</td><td>Successful</td></tr></table>";
        }

        //private void DetailsOfPayment(Instamojo objClass)
        //{
        //    PaymentOrderDetailsResponse paymentOrderDetRes = objClass.getPaymentOrderDetailsByTransactionId(Session["transId"].ToString());
        //    tid = paymentOrderDetRes.transaction_id;
        //    String status = paymentOrderDetRes.status;
        //    String created_at = paymentOrderDetRes.created_at;


        //}
    }
}