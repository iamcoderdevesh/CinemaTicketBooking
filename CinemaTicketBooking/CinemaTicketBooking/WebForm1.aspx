<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CinemaTicketBooking.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>LOGIN</h3>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /><br /><br />
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaTicketBookingConnectionString %>" SelectCommand="Select * from login"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
