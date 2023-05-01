using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CinemaTicketBooking
{
    public partial class seat : System.Web.UI.Page
    {
        SqlConnection conn= new SqlConnection(@"Data Source=SQL8001.site4now.net,1433;Initial Catalog=db_a949a1_cinemabooking;User Id=db_a949a1_cinemabooking_admin;Password=Admin123");

        public string seatName = "";
        public int count = 0;
        public string[] seatArr = new string[270];
        protected void Page_Load(object sender, EventArgs e)
        {
            String sentMovieName = Application["MovieName"].ToString();
            movieName.Text= sentMovieName;
            theatreName.Text = Request.QueryString["theatername"];
            movieTime.Text = Request.QueryString["time"];
            Application["theatername"]= Request.QueryString["theatername"];
            Application["Date"]= Request.QueryString["date"];
            Application["Time"]= Request.QueryString["time"];
            Application["Uid"]= Request.QueryString["id"];
            SelectedTime.Text="Time :"+ Request.QueryString["time"];
            String query = "Select * from NowShowingMovies where MovieName='" + sentMovieName + "'";
            conn.Open();
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader sdr=cmd.ExecuteReader();
            String imageString="";
            if (sdr.HasRows)
            {
                while (sdr.Read()) {
                    imageString = sdr.GetString(3);
                }
            }
            movieImg.ImageUrl = imageString;
            conn.Close();
        }


        protected void CheckSeat(object sender, EventArgs e)
        {

        }


        protected void Next_Click(object sender, EventArgs e)
        {
            if (A1.Checked) { seatName += ", " + A1.ID; }
            if (A2.Checked) { seatName += ", " + A2.ID; }
            if (A3.Checked) { seatName += ", " + A3.ID; }
            if (A4.Checked) { seatName += ", " + A4.ID; }
            if (A5.Checked) { seatName += ", " + A5.ID; }
            if (A6.Checked) { seatName += ", " + A6.ID; }
            if (A7.Checked) { seatName += ", " + A7.ID; }
            if (A8.Checked) { seatName += ", " + A8.ID; }
            if (A9.Checked) { seatName += ", " + A9.ID; }
            if (A10.Checked) { seatName += ", " + A10.ID; }
            if (A11.Checked) { seatName += ", " + A11.ID; }
            if (A12.Checked) { seatName += ", " + A12.ID; }
            if (A13.Checked) { seatName += ", " + A13.ID; }
            if (A14.Checked) { seatName += ", " + A14.ID; }
            if (A15.Checked) { seatName += ", " + A15.ID; }
            if (A16.Checked) { seatName += ", " + A16.ID; }
            if (A17.Checked) { seatName += ", " + A17.ID; }
            if (A18.Checked) { seatName += ", " + A18.ID; }
            if (A19.Checked) { seatName += ", " + A19.ID; }
            if (A20.Checked) { seatName += ", " + A20.ID; }

            if (B1.Checked) { seatName += ", " + B1.ID; }
            if (B2.Checked) { seatName += ", " + B2.ID; }
            if (B3.Checked) { seatName += ", " + B3.ID; }
            if (B4.Checked) { seatName += ", " + B4.ID; }
            if (B5.Checked) { seatName += ", " + B5.ID; }
            if (B6.Checked) { seatName += ", " + B6.ID; }
            if (B7.Checked) { seatName += ", " + B7.ID; }
            if (B8.Checked) { seatName += ", " + B8.ID; }
            if (B9.Checked) { seatName += ", " + B9.ID; }
            if (B10.Checked) { seatName += ", " + B10.ID; }
            if (B11.Checked) { seatName += ", " + B11.ID; }
            if (B12.Checked) { seatName += ", " + B12.ID; }
            if (B13.Checked) { seatName += ", " + B13.ID; }
            if (B14.Checked) { seatName += ", " + B14.ID; }
            if (B15.Checked) { seatName += ", " + B15.ID; }
            if (B16.Checked) { seatName += ", " + B16.ID; }
            if (B17.Checked) { seatName += ", " + B17.ID; }
            if (B18.Checked) { seatName += ", " + B18.ID; }
            if (B19.Checked) { seatName += ", " + B19.ID; }
            if (B20.Checked) { seatName += ", " + B20.ID; }

            if (C1.Checked) { seatName += ", " + C1.ID; }
            if (C2.Checked) { seatName += ", " + C2.ID; }
            if (C3.Checked) { seatName += ", " + C3.ID; }
            if (C4.Checked) { seatName += ", " + C4.ID; }
            if (C5.Checked) { seatName += ", " + C5.ID; }
            if (C6.Checked) { seatName += ", " + C6.ID; }
            if (C7.Checked) { seatName += ", " + C7.ID; }
            if (C8.Checked) { seatName += ", " + C8.ID; }
            if (C9.Checked) { seatName += ", " + C9.ID; }
            if (C10.Checked) { seatName += ", " + C10.ID; }
            if (C11.Checked) { seatName += ", " + C11.ID; }
            if (C12.Checked) { seatName += ", " + C12.ID; }
            if (C13.Checked) { seatName += ", " + C13.ID; }
            if (C14.Checked) { seatName += ", " + C14.ID; }
            if (C15.Checked) { seatName += ", " + C15.ID; }
            if (C16.Checked) { seatName += ", " + C16.ID; }
            if (C17.Checked) { seatName += ", " + C17.ID; }
            if (C18.Checked) { seatName += ", " + C18.ID; }
            if (C19.Checked) { seatName += ", " + C19.ID; }
            if (C20.Checked) { seatName += ", " + C20.ID; }

            if (D1.Checked) { seatName += ", " + D1.ID; }
            if (D2.Checked) { seatName += ", " + D2.ID; }
            if (D3.Checked) { seatName += ", " + D3.ID; }
            if (D4.Checked) { seatName += ", " + D4.ID; }
            if (D5.Checked) { seatName += ", " + D5.ID; }
            if (D6.Checked) { seatName += ", " + D6.ID; }
            if (D7.Checked) { seatName += ", " + D7.ID; }
            if (D8.Checked) { seatName += ", " + D8.ID; }
            if (D9.Checked) { seatName += ", " + D9.ID; }
            if (D10.Checked) { seatName += ", " + D10.ID; }
            if (D11.Checked) { seatName += ", " + D11.ID; }
            if (D12.Checked) { seatName += ", " + D12.ID; }
            if (D13.Checked) { seatName += ", " + D13.ID; }
            if (D14.Checked) { seatName += ", " + D14.ID; }
            if (D15.Checked) { seatName += ", " + D15.ID; }
            if (D16.Checked) { seatName += ", " + D16.ID; }
            if (D17.Checked) { seatName += ", " + D17.ID; }
            if (D18.Checked) { seatName += ", " + D18.ID; }
            if (D19.Checked) { seatName += ", " + D19.ID; }
            if (D20.Checked) { seatName += ", " + D20.ID; }

            if (E1.Checked) { seatName += ", " + E1.ID; }
            if (E2.Checked) { seatName += ", " + E2.ID; }
            if (E3.Checked) { seatName += ", " + E3.ID; }
            if (E4.Checked) { seatName += ", " + E4.ID; }
            if (E5.Checked) { seatName += ", " + E5.ID; }
            if (E6.Checked) { seatName += ", " + E6.ID; }
            if (E7.Checked) { seatName += ", " + E7.ID; }
            if (E8.Checked) { seatName += ", " + E8.ID; }
            if (E9.Checked) { seatName += ", " + E9.ID; }
            if (E10.Checked) { seatName += ", " + E10.ID; }
            if (E11.Checked) { seatName += ", " + E11.ID; }
            if (E12.Checked) { seatName += ", " + E12.ID; }
            if (E13.Checked) { seatName += ", " + E13.ID; }
            if (E14.Checked) { seatName += ", " + E14.ID; }
            if (E15.Checked) { seatName += ", " + E15.ID; }
            if (E16.Checked) { seatName += ", " + E16.ID; }
            if (E17.Checked) { seatName += ", " + E17.ID; }
            if (E18.Checked) { seatName += ", " + E18.ID; }
            if (E19.Checked) { seatName += ", " + E19.ID; }
            if (E20.Checked) { seatName += ", " + E20.ID; }

            if (F1.Checked) { seatName += ", " + F1.ID; }
            if (F2.Checked) { seatName += ", " + F2.ID; }
            if (F3.Checked) { seatName += ", " + F3.ID; }
            if (F4.Checked) { seatName += ", " + F4.ID; }
            if (F5.Checked) { seatName += ", " + F5.ID; }
            if (F6.Checked) { seatName += ", " + F6.ID; }
            if (F7.Checked) { seatName += ", " + F7.ID; }
            if (F8.Checked) { seatName += ", " + F8.ID; }
            if (F9.Checked) { seatName += ", " + F9.ID; }
            if (F10.Checked) { seatName += ", " + F10.ID; }
            if (F11.Checked) { seatName += ", " + F11.ID; }
            if (F12.Checked) { seatName += ", " + F12.ID; }
            if (F13.Checked) { seatName += ", " + F13.ID; }
            if (F14.Checked) { seatName += ", " + F14.ID; }
            if (F15.Checked) { seatName += ", " + F15.ID; }
            if (F16.Checked) { seatName += ", " + F16.ID; }
            if (F17.Checked) { seatName += ", " + F17.ID; }
            if (F18.Checked) { seatName += ", " + F18.ID; }
            if (F19.Checked) { seatName += ", " + F19.ID; }
            if (F20.Checked) { seatName += ", " + F20.ID; }

            if (G1.Checked) { seatName += ", " + G1.ID; }
            if (G2.Checked) { seatName += ", " + G2.ID; }
            if (G3.Checked) { seatName += ", " + G3.ID; }
            if (G4.Checked) { seatName += ", " + G4.ID; }
            if (G5.Checked) { seatName += ", " + G5.ID; }
            if (G6.Checked) { seatName += ", " + G6.ID; }
            if (G7.Checked) { seatName += ", " + G7.ID; }
            if (G8.Checked) { seatName += ", " + G8.ID; }
            if (G9.Checked) { seatName += ", " + G9.ID; }
            if (G10.Checked) { seatName += ", " + G10.ID; }
            if (G11.Checked) { seatName += ", " + G11.ID; }
            if (G12.Checked) { seatName += ", " + G12.ID; }
            if (G13.Checked) { seatName += ", " + G13.ID; }
            if (G14.Checked) { seatName += ", " + G14.ID; }
            if (G15.Checked) { seatName += ", " + G15.ID; }
            if (G16.Checked) { seatName += ", " + G16.ID; }
            if (G17.Checked) { seatName += ", " + G17.ID; }
            if (G18.Checked) { seatName += ", " + G18.ID; }
            if (G19.Checked) { seatName += ", " + G19.ID; }
            if (G20.Checked) { seatName += ", " + G20.ID; }

            if (H1.Checked) { seatName += ", " + H1.ID; }
            if (H2.Checked) { seatName += ", " + H2.ID; }
            if (H3.Checked) { seatName += ", " + H3.ID; }
            if (H4.Checked) { seatName += ", " + H4.ID; }
            if (H5.Checked) { seatName += ", " + H5.ID; }
            if (H6.Checked) { seatName += ", " + H6.ID; }
            if (H7.Checked) { seatName += ", " + H7.ID; }
            if (H8.Checked) { seatName += ", " + H8.ID; }
            if (H9.Checked) { seatName += ", " + H9.ID; }
            if (H10.Checked) { seatName += ", " + H10.ID; }
            if (H11.Checked) { seatName += ", " + H11.ID; }
            if (H12.Checked) { seatName += ", " + H12.ID; }
            if (H13.Checked) { seatName += ", " + H13.ID; }
            if (H14.Checked) { seatName += ", " + H14.ID; }
            if (H15.Checked) { seatName += ", " + H15.ID; }
            if (H16.Checked) { seatName += ", " + H16.ID; }
            if (H17.Checked) { seatName += ", " + H17.ID; }
            if (H18.Checked) { seatName += ", " + H18.ID; }
            if (H19.Checked) { seatName += ", " + H19.ID; }
            if (H20.Checked) { seatName += ", " + H20.ID; }

            if (I1.Checked) { seatName += ", " + I1.ID; }
            if (I2.Checked) { seatName += ", " + I2.ID; }
            if (I3.Checked) { seatName += ", " + I3.ID; }
            if (I4.Checked) { seatName += ", " + I4.ID; }
            if (I5.Checked) { seatName += ", " + I5.ID; }
            if (I6.Checked) { seatName += ", " + I6.ID; }
            if (I7.Checked) { seatName += ", " + I7.ID; }
            if (I8.Checked) { seatName += ", " + I8.ID; }
            if (I9.Checked) { seatName += ", " + I9.ID; }
            if (I10.Checked) { seatName += ", " + I10.ID; }
            if (I11.Checked) { seatName += ", " + I11.ID; }
            if (I12.Checked) { seatName += ", " + I12.ID; }
            if (I13.Checked) { seatName += ", " + I13.ID; }
            if (I14.Checked) { seatName += ", " + I14.ID; }
            if (I15.Checked) { seatName += ", " + I15.ID; }
            if (I16.Checked) { seatName += ", " + I16.ID; }
            if (I17.Checked) { seatName += ", " + I17.ID; }
            if (I18.Checked) { seatName += ", " + I18.ID; }
            if (I19.Checked) { seatName += ", " + I19.ID; }
            if (I20.Checked) { seatName += ", " + I20.ID; }

            if (J1.Checked) { seatName += ", " + J1.ID; }
            if (J2.Checked) { seatName += ", " + J2.ID; }
            if (J3.Checked) { seatName += ", " + J3.ID; }
            if (J4.Checked) { seatName += ", " + J4.ID; }
            if (J5.Checked) { seatName += ", " + J5.ID; }
            if (J6.Checked) { seatName += ", " + J6.ID; }
            if (J7.Checked) { seatName += ", " + J7.ID; }
            if (J8.Checked) { seatName += ", " + J8.ID; }
            if (J9.Checked) { seatName += ", " + J9.ID; }
            if (J10.Checked) { seatName += ", " + J10.ID; }
            if (J11.Checked) { seatName += ", " + J11.ID; }
            if (J12.Checked) { seatName += ", " + J12.ID; }
            if (J13.Checked) { seatName += ", " + J13.ID; }
            if (J14.Checked) { seatName += ", " + J14.ID; }
            if (J15.Checked) { seatName += ", " + J15.ID; }
            if (J16.Checked) { seatName += ", " + J16.ID; }
            if (J17.Checked) { seatName += ", " + J17.ID; }
            if (J18.Checked) { seatName += ", " + J18.ID; }
            if (J19.Checked) { seatName += ", " + J19.ID; }
            if (J20.Checked) { seatName += ", " + J20.ID; }

            if (K1.Checked) { seatName += ", " + K1.ID; }
            if (K2.Checked) { seatName += ", " + K2.ID; }
            if (K3.Checked) { seatName += ", " + K3.ID; }
            if (K4.Checked) { seatName += ", " + K4.ID; }
            if (K5.Checked) { seatName += ", " + K5.ID; }
            if (K6.Checked) { seatName += ", " + K6.ID; }
            if (K7.Checked) { seatName += ", " + K7.ID; }
            if (K8.Checked) { seatName += ", " + K8.ID; }
            if (K9.Checked) { seatName += ", " + K9.ID; }
            if (K10.Checked) { seatName += ", " + K10.ID; }
            if (K11.Checked) { seatName += ", " + K11.ID; }
            if (K12.Checked) { seatName += ", " + K12.ID; }
            if (K13.Checked) { seatName += ", " + K13.ID; }
            if (K14.Checked) { seatName += ", " + K14.ID; }
            if (K15.Checked) { seatName += ", " + K15.ID; }
            if (K16.Checked) { seatName += ", " + K16.ID; }
            if (K17.Checked) { seatName += ", " + K17.ID; }
            if (K18.Checked) { seatName += ", " + K18.ID; }
            if (K19.Checked) { seatName += ", " + K19.ID; }
            if (K20.Checked) { seatName += ", " + K20.ID; }

            if (L1.Checked) { seatName += ", " + L1.ID; }
            if (L2.Checked) { seatName += ", " + L2.ID; }
            if (L3.Checked) { seatName += ", " + L3.ID; }
            if (L4.Checked) { seatName += ", " + L4.ID; }
            if (L5.Checked) { seatName += ", " + L5.ID; }
            if (L6.Checked) { seatName += ", " + L6.ID; }
            if (L7.Checked) { seatName += ", " + L7.ID; }
            if (L8.Checked) { seatName += ", " + L8.ID; }
            if (L9.Checked) { seatName += ", " + L9.ID; }
            if (L10.Checked) { seatName += ", " + L10.ID; }
            if (L11.Checked) { seatName += ", " + L11.ID; }
            if (L12.Checked) { seatName += ", " + L12.ID; }
            if (L13.Checked) { seatName += ", " + L13.ID; }
            if (L14.Checked) { seatName += ", " + L14.ID; }
            if (L15.Checked) { seatName += ", " + L15.ID; }
            if (L16.Checked) { seatName += ", " + L16.ID; }
            if (L17.Checked) { seatName += ", " + L17.ID; }
            if (L18.Checked) { seatName += ", " + L18.ID; }
            if (L19.Checked) { seatName += ", " + L19.ID; }
            if (L20.Checked) { seatName += ", " + L20.ID; }

            if (M1.Checked) { seatName += ", " + M1.ID; }
            if (M2.Checked) { seatName += ", " + M2.ID; }
            if (M3.Checked) { seatName += ", " + M3.ID; }
            if (M4.Checked) { seatName += ", " + M4.ID; }
            if (M5.Checked) { seatName += ", " + M5.ID; }
            if (M6.Checked) { seatName += ", " + M6.ID; }
            if (M7.Checked) { seatName += ", " + M7.ID; }
            if (M8.Checked) { seatName += ", " + M8.ID; }
            if (M9.Checked) { seatName += ", " + M9.ID; }
            if (M10.Checked) { seatName += ", " + M10.ID; }
            if (M11.Checked) { seatName += ", " + M11.ID; }
            if (M12.Checked) { seatName += ", " + M12.ID; }
            if (M13.Checked) { seatName += ", " + M13.ID; }
            if (M14.Checked) { seatName += ", " + M14.ID; }
            if (M15.Checked) { seatName += ", " + M15.ID; }
            if (M16.Checked) { seatName += ", " + M16.ID; }
            if (M17.Checked) { seatName += ", " + M17.ID; }
            if (M18.Checked) { seatName += ", " + M18.ID; }
            if (M19.Checked) { seatName += ", " + M19.ID; }
            if (M20.Checked) { seatName += ", " + M20.ID; }


            if (A1.Checked) { count += 1; }
            if (A2.Checked) { count += 1; }
            if (A3.Checked) { count += 1; }
            if (A4.Checked) { count += 1; }
            if (A5.Checked) { count += 1; }
            if (A6.Checked) { count += 1; }
            if (A7.Checked) { count += 1; }
            if (A8.Checked) { count += 1; }
            if (A9.Checked) { count += 1; }
            if (A10.Checked) { count += 1; }
            if (A11.Checked) { count += 1; }
            if (A12.Checked) { count += 1; }
            if (A13.Checked) { count += 1; }
            if (A14.Checked) { count += 1; }
            if (A15.Checked) { count += 1; }
            if (A16.Checked) { count += 1; }
            if (A17.Checked) { count += 1; }
            if (A18.Checked) { count += 1; }
            if (A19.Checked) { count += 1; }
            if (A20.Checked) { count += 1; }
            if (B1.Checked) { count += 1; }
            if (B2.Checked) { count += 1; }
            if (B3.Checked) { count += 1; }
            if (B4.Checked) { count += 1; }
            if (B5.Checked) { count += 1; }
            if (B6.Checked) { count += 1; }
            if (B7.Checked) { count += 1; }
            if (B8.Checked) { count += 1; }
            if (B9.Checked) { count += 1; }
            if (B10.Checked) { count += 1; }
            if (B11.Checked) { count += 1; }
            if (B12.Checked) { count += 1; }
            if (B13.Checked) { count += 1; }
            if (B14.Checked) { count += 1; }
            if (B15.Checked) { count += 1; }
            if (B16.Checked) { count += 1; }
            if (B17.Checked) { count += 1; }
            if (B18.Checked) { count += 1; }
            if (B19.Checked) { count += 1; }
            if (B20.Checked) { count += 1; }
            if (C1.Checked) { count += 1; }
            if (C2.Checked) { count += 1; }
            if (C3.Checked) { count += 1; }
            if (C4.Checked) { count += 1; }
            if (C5.Checked) { count += 1; }
            if (C6.Checked) { count += 1; }
            if (C7.Checked) { count += 1; }
            if (C8.Checked) { count += 1; }
            if (C9.Checked) { count += 1; }
            if (C10.Checked) { count += 1; }
            if (C11.Checked) { count += 1; }
            if (C12.Checked) { count += 1; }
            if (C13.Checked) { count += 1; }
            if (C14.Checked) { count += 1; }
            if (C15.Checked) { count += 1; }
            if (C16.Checked) { count += 1; }
            if (C17.Checked) { count += 1; }
            if (C18.Checked) { count += 1; }
            if (C19.Checked) { count += 1; }
            if (C20.Checked) { count += 1; }
            if (D1.Checked) { count += 1; }
            if (D2.Checked) { count += 1; }
            if (D3.Checked) { count += 1; }
            if (D4.Checked) { count += 1; }
            if (D5.Checked) { count += 1; }
            if (D6.Checked) { count += 1; }
            if (D7.Checked) { count += 1; }
            if (D8.Checked) { count += 1; }
            if (D9.Checked) { count += 1; }
            if (D10.Checked) { count += 1; }
            if (D11.Checked) { count += 1; }
            if (D12.Checked) { count += 1; }
            if (D13.Checked) { count += 1; }
            if (D14.Checked) { count += 1; }
            if (D15.Checked) { count += 1; }
            if (D16.Checked) { count += 1; }
            if (D17.Checked) { count += 1; }
            if (D18.Checked) { count += 1; }
            if (D19.Checked) { count += 1; }
            if (D20.Checked) { count += 1; }
            if (E1.Checked) { count += 1; }
            if (E2.Checked) { count += 1; }
            if (E3.Checked) { count += 1; }
            if (E4.Checked) { count += 1; }
            if (E5.Checked) { count += 1; }
            if (E6.Checked) { count += 1; }
            if (E7.Checked) { count += 1; }
            if (E8.Checked) { count += 1; }
            if (E9.Checked) { count += 1; }
            if (E10.Checked) { count += 1; }
            if (E11.Checked) { count += 1; }
            if (E12.Checked) { count += 1; }
            if (E13.Checked) { count += 1; }
            if (E14.Checked) { count += 1; }
            if (E15.Checked) { count += 1; }
            if (E16.Checked) { count += 1; }
            if (E17.Checked) { count += 1; }
            if (E18.Checked) { count += 1; }
            if (E19.Checked) { count += 1; }
            if (E20.Checked) { count += 1; }
            if (F1.Checked) { count += 1; }
            if (F2.Checked) { count += 1; }
            if (F3.Checked) { count += 1; }
            if (F4.Checked) { count += 1; }
            if (F5.Checked) { count += 1; }
            if (F6.Checked) { count += 1; }
            if (F7.Checked) { count += 1; }
            if (F8.Checked) { count += 1; }
            if (F9.Checked) { count += 1; }
            if (F10.Checked) { count += 1; }
            if (F11.Checked) { count += 1; }
            if (F12.Checked) { count += 1; }
            if (F13.Checked) { count += 1; }
            if (F14.Checked) { count += 1; }
            if (F15.Checked) { count += 1; }
            if (F16.Checked) { count += 1; }
            if (F17.Checked) { count += 1; }
            if (F18.Checked) { count += 1; }
            if (F19.Checked) { count += 1; }
            if (F20.Checked) { count += 1; }
            if (G1.Checked) { count += 1; }
            if (G2.Checked) { count += 1; }
            if (G3.Checked) { count += 1; }
            if (G4.Checked) { count += 1; }
            if (G5.Checked) { count += 1; }
            if (G6.Checked) { count += 1; }
            if (G7.Checked) { count += 1; }
            if (G8.Checked) { count += 1; }
            if (G9.Checked) { count += 1; }
            if (G10.Checked) { count += 1; }
            if (G11.Checked) { count += 1; }
            if (G12.Checked) { count += 1; }
            if (G13.Checked) { count += 1; }
            if (G14.Checked) { count += 1; }
            if (G15.Checked) { count += 1; }
            if (G16.Checked) { count += 1; }
            if (G17.Checked) { count += 1; }
            if (G18.Checked) { count += 1; }
            if (G19.Checked) { count += 1; }
            if (G20.Checked) { count += 1; }
            if (H1.Checked) { count += 1; }
            if (H2.Checked) { count += 1; }
            if (H3.Checked) { count += 1; }
            if (H4.Checked) { count += 1; }
            if (H5.Checked) { count += 1; }
            if (H6.Checked) { count += 1; }
            if (H7.Checked) { count += 1; }
            if (H8.Checked) { count += 1; }
            if (H9.Checked) { count += 1; }
            if (H10.Checked) { count += 1; }
            if (H11.Checked) { count += 1; }
            if (H12.Checked) { count += 1; }
            if (H13.Checked) { count += 1; }
            if (H14.Checked) { count += 1; }
            if (H15.Checked) { count += 1; }
            if (H16.Checked) { count += 1; }
            if (H17.Checked) { count += 1; }
            if (H18.Checked) { count += 1; }
            if (H19.Checked) { count += 1; }
            if (H20.Checked) { count += 1; }
            if (I1.Checked) { count += 1; }
            if (I2.Checked) { count += 1; }
            if (I3.Checked) { count += 1; }
            if (I4.Checked) { count += 1; }
            if (I5.Checked) { count += 1; }
            if (I6.Checked) { count += 1; }
            if (I7.Checked) { count += 1; }
            if (I8.Checked) { count += 1; }
            if (I9.Checked) { count += 1; }
            if (I10.Checked) { count += 1; }
            if (I11.Checked) { count += 1; }
            if (I12.Checked) { count += 1; }
            if (I13.Checked) { count += 1; }
            if (I14.Checked) { count += 1; }
            if (I15.Checked) { count += 1; }
            if (I16.Checked) { count += 1; }
            if (I17.Checked) { count += 1; }
            if (I18.Checked) { count += 1; }
            if (I19.Checked) { count += 1; }
            if (I20.Checked) { count += 1; }
            if (J1.Checked) { count += 1; }
            if (J2.Checked) { count += 1; }
            if (J3.Checked) { count += 1; }
            if (J4.Checked) { count += 1; }
            if (J5.Checked) { count += 1; }
            if (J6.Checked) { count += 1; }
            if (J7.Checked) { count += 1; }
            if (J8.Checked) { count += 1; }
            if (J9.Checked) { count += 1; }
            if (J10.Checked) { count += 1; }
            if (J11.Checked) { count += 1; }
            if (J12.Checked) { count += 1; }
            if (J13.Checked) { count += 1; }
            if (J14.Checked) { count += 1; }
            if (J15.Checked) { count += 1; }
            if (J16.Checked) { count += 1; }
            if (J17.Checked) { count += 1; }
            if (J18.Checked) { count += 1; }
            if (J19.Checked) { count += 1; }
            if (J20.Checked) { count += 1; }
            if (K1.Checked) { count += 1; }
            if (K2.Checked) { count += 1; }
            if (K3.Checked) { count += 1; }
            if (K4.Checked) { count += 1; }
            if (K5.Checked) { count += 1; }
            if (K6.Checked) { count += 1; }
            if (K7.Checked) { count += 1; }
            if (K8.Checked) { count += 1; }
            if (K9.Checked) { count += 1; }
            if (K10.Checked) { count += 1; }
            if (K11.Checked) { count += 1; }
            if (K12.Checked) { count += 1; }
            if (K13.Checked) { count += 1; }
            if (K14.Checked) { count += 1; }
            if (K15.Checked) { count += 1; }
            if (K16.Checked) { count += 1; }
            if (K17.Checked) { count += 1; }
            if (K18.Checked) { count += 1; }
            if (K19.Checked) { count += 1; }
            if (K20.Checked) { count += 1; }
            if (L1.Checked) { count += 1; }
            if (L2.Checked) { count += 1; }
            if (L3.Checked) { count += 1; }
            if (L4.Checked) { count += 1; }
            if (L5.Checked) { count += 1; }
            if (L6.Checked) { count += 1; }
            if (L7.Checked) { count += 1; }
            if (L8.Checked) { count += 1; }
            if (L9.Checked) { count += 1; }
            if (L10.Checked) { count += 1; }
            if (L11.Checked) { count += 1; }
            if (L12.Checked) { count += 1; }
            if (L13.Checked) { count += 1; }
            if (L14.Checked) { count += 1; }
            if (L15.Checked) { count += 1; }
            if (L16.Checked) { count += 1; }
            if (L17.Checked) { count += 1; }
            if (L18.Checked) { count += 1; }
            if (L19.Checked) { count += 1; }
            if (L20.Checked) { count += 1; }
            if (M1.Checked) { count += 1; }
            if (M2.Checked) { count += 1; }
            if (M3.Checked) { count += 1; }
            if (M4.Checked) { count += 1; }
            if (M5.Checked) { count += 1; }
            if (M6.Checked) { count += 1; }
            if (M7.Checked) { count += 1; }
            if (M8.Checked) { count += 1; }
            if (M9.Checked) { count += 1; }
            if (M10.Checked) { count += 1; }
            if (M11.Checked) { count += 1; }
            if (M12.Checked) { count += 1; }
            if (M13.Checked) { count += 1; }
            if (M14.Checked) { count += 1; }
            if (M15.Checked) { count += 1; }
            if (M16.Checked) { count += 1; }
            if (M17.Checked) { count += 1; }
            if (M18.Checked) { count += 1; }
            if (M19.Checked) { count += 1; }
            if (M20.Checked) { count += 1; }
            



            string[] seats = seatName.Split(new string[] { ", " }, StringSplitOptions.RemoveEmptyEntries);
            for (int i = 0; i < seats.Length; i++)
            {
                seatArr[i] = seats[i];
             
                
            }
            int pay = 0;
            string temp_ticket1 = "", temp_ticket2 = "", temp_ticket3 = "", temp_ticket4 = "", temp_ticket5 = "";
            char t1 = 'A', t2 = 'A', t3 = 'A', t4 = 'A', t5 = 'A';
            string ticket1 = "", ticket2 = "", ticket3 = "", ticket4 = "", ticket5 = "";
            String passTicket="";
            String NoTickets = "";
            if (count == 1)
            {
                temp_ticket1 = seatArr[0];
                t1 = Convert.ToChar(temp_ticket1[0]);
                ticket1 = Convert.ToString(t1);
                passTicket = temp_ticket1;
                NoTickets = "1";
            }

            if (count == 2)
            {
                temp_ticket1 = seatArr[0];
                t1 = Convert.ToChar(temp_ticket1[0]);
                ticket1 = Convert.ToString(t1);
                temp_ticket2 = seatArr[1];
                t2 = Convert.ToChar(temp_ticket2[0]);
                ticket2 = Convert.ToString(t2);
                passTicket = temp_ticket1 + " "+ temp_ticket2;
                NoTickets = "2";
            }

            if (count == 3)
            {
                temp_ticket1 = seatArr[0];
                t1 = Convert.ToChar(temp_ticket1[0]);
                ticket1 = Convert.ToString(t1);
                temp_ticket2 = seatArr[1];
                t2 = Convert.ToChar(temp_ticket2[0]);
                ticket2 = Convert.ToString(t2);
                temp_ticket3 = seatArr[2];
                t3 = Convert.ToChar(temp_ticket3[0]);
                ticket3 = Convert.ToString(t3);
                passTicket = temp_ticket1 + " " + temp_ticket2+ " "+ temp_ticket3;
                NoTickets = "3";
            }
            if (count == 4)
            {
                temp_ticket1 = seatArr[0];
                t1 = Convert.ToChar(temp_ticket1[0]);
                ticket1 = Convert.ToString(t1);
                temp_ticket2 = seatArr[1];
                t2 = Convert.ToChar(temp_ticket2[0]);
                ticket2 = Convert.ToString(t2);
                temp_ticket3 = seatArr[2];
                t3 = Convert.ToChar(temp_ticket3[0]);
                ticket3 = Convert.ToString(t3);
                temp_ticket4 = seatArr[3];
                t4 = Convert.ToChar(temp_ticket4[0]);
                ticket4 = Convert.ToString(t4);
                passTicket = temp_ticket1 + " " + temp_ticket2 + " " + temp_ticket3 + " "+ temp_ticket4;
                NoTickets = "4";
            }

            if (count == 5)
            {
                temp_ticket1 = seatArr[0];
                t1 = Convert.ToChar(temp_ticket1[0]);
                ticket1 = Convert.ToString(t1);
                temp_ticket2 = seatArr[1];
                t2 = Convert.ToChar(temp_ticket2[0]);
                ticket2 = Convert.ToString(t2);
                temp_ticket3 = seatArr[2];
                t3 = Convert.ToChar(temp_ticket3[0]);
                ticket3 = Convert.ToString(t3);
                temp_ticket4 = seatArr[3];
                t4 = Convert.ToChar(temp_ticket4[0]);
                ticket4 = Convert.ToString(t4);
                temp_ticket5 = seatArr[4];
                t5 = Convert.ToChar(temp_ticket5[0]);
                ticket5 = Convert.ToString(t5);
                passTicket = temp_ticket1 + " " + temp_ticket2 + " " + temp_ticket3 + " " + temp_ticket4 + " "+ temp_ticket5;
                NoTickets = "5";
            }


            if (ticket1 == "A")
            {
                pay += 200;
            }
            if (ticket2 == "A")
            {
                pay += 200;
            }
            if (ticket3 == "A")
            {
                pay += 200;
            }
            if (ticket4 == "A")
            {
                pay += 200;
            }
            if (ticket5 == "A")
            {
                pay += 200;
            }

            if (ticket1 == "B")
            {
                pay += 200;
            }
            if (ticket2 == "B")
            {
                pay += 200;
            }
            if (ticket3 == "B")
            {
                pay += 200;
            }
            if (ticket4 == "B")
            {
                pay += 200;
            }
            if (ticket5 == "B")
            {
                pay += 200;
            }

            if (ticket1 == "C")
            {
                pay += 300;
            }
            if (ticket2 == "C")
            {
                pay += 300;
            }
            if (ticket3 == "C")
            {
                pay += 300;
            }
            if (ticket4 == "C")
            {
                pay += 300;
            }
            if (ticket5 == "C")
            {
                pay += 300;
            }


            if (ticket1 == "D")
            {
                pay += 300;
            }
            if (ticket2 == "D")
            {
                pay += 300;
            }
            if (ticket3 == "D")
            {
                pay += 300;
            }
            if (ticket4 == "D")
            {
                pay += 300;
            }
            if (ticket5 == "D")
            {
                pay += 300;
            }

            if (ticket1 == "E")
            {
                pay += 300;
            }
            if (ticket2 == "E")
            {
                pay += 300;
            }
            if (ticket3 == "E")
            {
                pay += 300;
            }
            if (ticket4 == "E")
            {
                pay += 300;
            }
            if (ticket5 == "E")
            {
                pay += 300;
            }

            if (ticket1 == "F")
            {
                pay += 300;
            }
            if (ticket2 == "F")
            {
                pay += 300;
            }
            if (ticket3 == "F")
            {
                pay += 300;
            }
            if (ticket4 == "F")
            {
                pay += 300;
            }
            if (ticket5 == "F")
            {
                pay += 300;
            }

            if (ticket1 == "G")
            {
                pay += 300;
            }
            if (ticket2 == "G")
            {
                pay += 300;
            }
            if (ticket3 == "G")
            {
                pay += 300;
            }
            if (ticket4 == "G")
            {
                pay += 300;
            }
            if (ticket5 == "G")
            {
                pay += 300;
            }


            if (ticket1 == "H")
            {
                pay += 500;
            }
            if (ticket2 == "H")
            {
                pay += 500;
            }
            if (ticket3 == "H")
            {
                pay += 500;
            }
            if (ticket4 == "H")
            {
                pay += 500;
            }
            if (ticket5 == "H")
            {
                pay += 500;
            }


            if (ticket1 == "I")
            {
                pay += 500;
            }
            if (ticket2 == "I")
            {
                pay += 500;
            }
            if (ticket3 == "I")
            {
                pay += 500;
            }
            if (ticket4 == "I")
            {
                pay += 500;
            }
            if (ticket5 == "I")
            {
                pay += 500;
            }

            if (ticket1 == "J")
            {
                pay += 500;
            }
            if (ticket2 == "J")
            {
                pay += 500;
            }
            if (ticket3 == "J")
            {
                pay += 500;
            }
            if (ticket4 == "J")
            {
                pay += 500;
            }
            if (ticket5 == "J")
            {
                pay += 500;
            }

            if (ticket1 == "K")
            {
                pay += 500;
            }
            if (ticket2 == "K")
            {
                pay += 500;
            }
            if (ticket3 == "K")
            {
                pay += 500;
            }
            if (ticket4 == "K")
            {
                pay += 500;
            }
            if (ticket5 == "K")
            {
                pay += 500;
            }


            if (ticket1 == "L")
            {
                pay += 500;
            }
            if (ticket2 == "L")
            {
                pay += 500;
            }
            if (ticket3 == "L")
            {
                pay += 500;
            }
            if (ticket4 == "L")
            {
                pay += 500;
            }
            if (ticket5 == "L")
            {
                pay += 500;
            }


            if (ticket1 == "M")
            {
                pay += 500;
            }
            if (ticket2 == "M")
            {
                pay += 500;
            }
            if (ticket3 == "M")
            {
                pay += 500;
            }
            if (ticket4 == "M")
            {
                pay += 500;
            }
            if (ticket5 == "M")
            {
                pay += 500;
            }
            
            Application["TotalAmount"] = pay;
            Application["TicketNumbers"] = passTicket;
            Application["NoTicket"] = NoTickets;
            Session["seatNo"] = ticketNo.InnerText;
            Response.Redirect("Payment.aspx"); 
        }
    }
}