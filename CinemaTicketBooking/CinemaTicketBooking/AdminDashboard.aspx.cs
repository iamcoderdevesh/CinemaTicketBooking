using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String AdminName = Application["AdminName"].ToString();
            Label name = (Label)Master.FindControl("AdminName");
            name.Text = AdminName;
        }
    }
}