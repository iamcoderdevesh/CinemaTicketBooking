using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class LynxCinemaAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Application["AdminName"] = "";
            Response.Redirect("AdminHomePage.aspx");
        }
    }
}