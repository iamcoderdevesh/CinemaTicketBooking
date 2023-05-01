using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CinemaTicketBooking
{
    public partial class LynxCinema : System.Web.UI.MasterPage
    {
        
        
        String name = "";
        SqlConnection conn = new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");

        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
               
                conn.Open();
                if (Application["LoginStatus"]!=null)
                {
                    UsernameString.Visible = true;
                    UserImage.Visible = true;
                    LogOutButton.Visible = true;
                    name= Application["username"].ToString();
                    UsernameString.Text = name.ToUpper();

                    Label1.Style.Add("display", "none");
                    Label1.Style.Add("visibility", "hidden");

                    InvalidLoginCredentials.Visible = false;
                    EnterEmailInput.Visible = false;
                    //RequiredFieldValidatorEmail.Visible = false;
                    EmailValidator.Visible = false;
                    EnterPassword.Visible = false;
                    //RequiredFieldValidatorPassword.Visible = false;
                    LoginButton.Visible = false;
                    SignUpButton.Visible = false;
                }
                else { 
                    EnterEmailInput.Visible = true;
                    //RequiredFieldValidatorEmail.Visible = true;
                    EmailValidator.Visible = true;
                    EnterPassword.Visible = true;
                    //RequiredFieldValidatorPassword.Visible = true;
                    LoginButton.Visible = true;
                    SignUpButton.Visible = true;

                    UsernameString.Visible = false;
                    UserImage.Visible = false;
                    LogOutButton.Visible = false;
                }
                
            }
            catch (Exception ex) {
                
                Response.Write("<script>alert('"+ ex.Message + "')</script>");
            }
            checkUserIsRegister();
        }

        

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //String searchText = SearchInput.Text;
            //Response.Write("<script>alert('" + searchText + "')</script>");
            //SearchInput.Text = "";
           

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
           
            if (CheckEmail(EnterEmailInput.Text) && EnterPassword.Text != "") {
                String email = EnterEmailInput.Text;
                String password = EnterPassword.Text;
                try
                {
                   
                    EnterEmailInput.Text = "";
                    EnterPassword.Text = "";
                    String query = "Select * from Registration where Email='" + email + "' and Password='" + password + "'";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    SqlDataReader mysdr = cmd.ExecuteReader();
                    if (mysdr.HasRows)
                    {
                        Application["LoginStatus"] = "true";
                        Application["email"] = email;
                        while (mysdr.Read()) {
                          name = mysdr.GetString(1);
                        }
                        Application["username"] = name;
                        UsernameString.Visible = true;
                        UserImage.Visible = true;
                        LogOutButton.Visible = true;
                        UsernameString.Text = name.ToUpper();

                        InvalidLoginCredentials.Visible = false;
                        EnterEmailInput.Visible = false;
                        //RequiredFieldValidatorEmail.Visible = false;
                        EmailValidator.Visible = false;
                        EnterPassword.Visible = false;
                        //RequiredFieldValidatorPassword.Visible = false;
                        LoginButton.Visible = false;
                        SignUpButton.Visible = false;

                    }
                    else {
                        InvalidLoginCredentials.Visible = true;
                        Label1.Style.Add("display", "block");
                        Label1.Style.Add("visibility", "hidden");
                    }
                }
                catch (Exception ex) {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
        }
        protected Boolean CheckEmail(String email)
        {
            Boolean flag = false;
            if (email!= null && email.Contains("@"))
            {
                if (email.Contains(".com") || email.Contains(".co.in")) { 
                      if (email.Contains("gmail") || email.Contains("yahoo") || email.Contains("hotmail"))
                    {
                        flag = true;
                    }
                }
            }
            return flag;

        }

        protected void LogOutButton_Click(object sender, EventArgs e)
        {

            Application["LoginStatus"] = null;
            EnterEmailInput.Visible = true;
            //RequiredFieldValidatorEmail.Visible = true;
            EmailValidator.Visible = true;
            EnterPassword.Visible = true;
            //RequiredFieldValidatorPassword.Visible = true;
            LoginButton.Visible = true;
            SignUpButton.Visible = true;

            UsernameString.Visible = false;
            UserImage.Visible = false;
            LogOutButton.Visible = false;
        }
        protected void checkUserIsRegister()
        {
            if (Session["CheckUser"] != null)
            {
                String s = Session["CheckUser"].ToString();
                if (s.Equals("User is Registered"))
                {
                    Label1.Style.Add("display", "block");
                    Label1.Style.Add("visibility", "hidden");
                    Session["CheckUser"] = "done";
                }
            }
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

    }
}