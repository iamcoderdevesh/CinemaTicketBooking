using InstamojoAPI;
using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CinemaTicketBooking
{
    public partial class Payment : System.Web.UI.Page
    {
        public string orderId;
        public string orderIds;
        public string name;
        public string product;
        public string email;
        public string contact;
        public string addressn;
        public int totalamount;
        //int totalamount;
        private SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");

        //public object JsonConvert { get; private set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieName.Text = Application["MovieName"].ToString();
            TheaterName.Text = Application["TheaterName"].ToString();
            Date.Text = "ON " + Application["Date"].ToString();
            Label9.Text = "INR " + Application["TotalAmount"].ToString();
            totalamount = Convert.ToInt32(Application["TotalAmount"].ToString()) + 19;
            Label13.Text = totalamount.ToString();

            setContactDetails();
            performTransaction();
            Label8.Text = Application["TicketNumbers"].ToString();
        }

        protected void performTransaction() {
            if (!IsPostBack)
            {
                    try
                    {
                        product = "LYNX Cinema";
                        name = Text1.Text;
                        email = Text2.Text;
                        contact = Text3.Text;
                        addressn = "Mumbai";
                        //Session["product"] = product;
                        Session["totalPrice"] = totalamount;
                        Dictionary<string, object> input = new Dictionary<string, object>();

                        int am = totalamount;
                        //string orderss = Session["OrderId"].ToString();
                        string orderss = System.DateTime.Now.Ticks.ToString();
                        orderIds = orderss;
                        Session["PaymentId"] = orderIds;
                        input.Add("amount", am * 100);
                        //input.Add("amount", 100); // this amount should be same as transaction amount
                        input.Add("currency", "INR");
                        input.Add("receipt", orderss);
                        input.Add("payment_capture", 1);

                        string key = "rzp_test_Fn4uJmdo9qlGIG";
                        string secret = "jcgIPtGFBdoWdmt3DVC1Gb6l";

                        //Session["totalprice"] = "100";
                        RazorpayClient client = new RazorpayClient(key, secret);
                        System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                        Razorpay.Api.Order order = client.Order.Create(input);
                        orderId = order["id"].ToString();
                    }

                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");

                }
            }
        }      

        protected void setContactDetails()
        {
            try
            {
                String username = Application["username"].ToString();

                String query = "Select * from Registration where Username='" + username + "'";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.HasRows)
                {
                    while (sdr.Read())
                    {
                        Text1.Text = sdr.GetString(1);
                        Text3.Text = sdr.GetString(2);
                        Text2.Text = sdr.GetString(3);
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }


        }

        protected void calculateTotal()
        {
            String s = Label9.Text.ToString().Remove(0,4);

            Double TicketPrice = Convert.ToDouble(s);
            Double convFees = 18.00;
            Double gst = TicketPrice * 2 / 100;
            Double total = TicketPrice + convFees + gst;

            Label11.Text = "INR " + gst.ToString();
            Label10.Text = "INR " + convFees.ToString() + ".00";
            Label13.Text = total.ToString();
        }

        protected String generateOrderId()
        {
            Random r = new Random();
            String orderId = "LYNX" + Convert.ToString(r.Next(10000, 29999));
            return orderId;
        }
        protected void Button1_make_payment_Click(object sender, EventArgs e)
        {
            if (Text1.Text != "" && Text2.Text != "" && Text3.Text != "")
            {
                String name = Text1.Text;
                String email = Text2.Text;
                String Number = Text3.Text;


                //{
                //    String Instamojo_client_id = "test_UxdYuyUmqMlq9aSOWVdpdPVYl4ROSel3l4L";
                //    String Insta_client_secret = "test_94NLukJVH2HsGx8tIQRiJM472AaLYmh5aveVepggCXuvM8kfQjVhq9fEAKArM36ONt6JaKTYueCA6ftrsZGQA1vPkcT6TX0VkhNgXc5x7GF9xzom0zEwcSnrxJr";
                //    String Insta_Endpoint = InstamojoConstants.INSTAMOJO_API_ENDPOINT;
                //    String Insta_Auth_EndPoint = InstamojoConstants.INSTAMOJO_AUTH_ENDPOINT;
                //    Instamojo objClass = InstamojoImplementation.getApi(Instamojo_client_id, Insta_client_secret, Insta_Endpoint, Insta_Auth_EndPoint);
                //    CreatePaymentOrder(objClass,name,email,Number);

                //}
            }
            else
            {
                Warning.Text = "Please Enter Details.";
            }
        }

        //private void CreatePaymentOrder(Instamojo objClass ,String name,String email,String num)
        //{
        //    PaymentOrder objPaymentRequest = new PaymentOrder();
        //    //required post parameters
        //    objPaymentRequest.name = name;
        //    objPaymentRequest.email = email;
        //    objPaymentRequest.phone = num;
        //    objPaymentRequest.description = "LNYX CINEMA";
        //    objPaymentRequest.amount = totalamount;
        //    objPaymentRequest.currency = "INR";
        //    String RandomName = Path.GetRandomFileName();
        //    RandomName = RandomName.Replace(".", string.Empty);
        //    objPaymentRequest.transaction_id = "test" + RandomName;
        //    Session["transId"] = objPaymentRequest.transaction_id;
        //    objPaymentRequest.redirect_url = "http://devesh007-001-site1.dtempurl.com/print_ticket.aspx";

        //    try
        //    {
        //        CreatePaymentOrderResponse objPaymentResponse = objClass.createNewPaymentRequest(objPaymentRequest);
        //        Response.Redirect(objPaymentResponse.payment_options.payment_url);
        //    }
        //    catch (Exception ex)
        //    {
        //        Response.Write("<script>alert('" + ex.Message + "')</script>");
        //    }
        //}
    }
}