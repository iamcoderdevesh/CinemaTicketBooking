using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CinemaTicketBooking
{
    public partial class IMAX : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["MovieName"].ToString();
            Label2.Text = Session["City"].ToString();
        }
    }
}