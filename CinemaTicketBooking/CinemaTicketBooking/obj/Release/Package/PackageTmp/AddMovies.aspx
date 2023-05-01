<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovies.aspx.cs" Inherits="CinemaTicketBooking.AddMovies1" MasterPageFile="~/LynxCinemaAdmin.Master" %>
<asp:Content ContentPlaceHolderID="head" runat="server" ID="Content1"></asp:Content>
<asp:Content ContentPlaceHolderID="AdminMasterPage" runat="server" ID="Content2">
    <link rel="stylesheet" href="css/AddMovies.css" />
    <div class="parentConatiner">
        <div class="formContainer">
            <asp:Label ID="AddmovieToTheater" runat="server" Text="Add Movies To Theater" CssClass="AddMoviesToTheater"></asp:Label><br />
            <asp:Label ID="MovieName" runat="server" Text="Movie Name :" CssClass="MovieName"></asp:Label><asp:DropDownList ID="MovieNameDropDownList" runat="server" CssClass="MovieNameDropDown" DataSourceID="SqlDataSource1" DataTextField="MovieName" DataValueField="MovieName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaTicketBookingConnectionString %>" SelectCommand="SELECT [MovieName] FROM [NowShowingMovies]">
            </asp:SqlDataSource> <asp:Label ID="TheaterName" runat="server" Text="Theater :" CssClass="TheaterName"></asp:Label><asp:DropDownList ID="MyTheaterList" runat="server" CssClass="TheaterList" AutoPostBack="True" CausesValidation="True" DataSourceID="SqlDataSource2" DataTextField="TheaterName" DataValueField="TheaterName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaTicketBookingConnectionString %>" SelectCommand="SELECT [TheaterName] FROM [City_Theater_List] WHERE ([City] = @City2)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CityNameDropDown" DefaultValue="Mumbai" Name="City2" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="City" runat="server" Text="City :" CssClass="CityName"></asp:Label><asp:DropDownList ID="CityNameDropDown" runat="server" CssClass="CityNameDropDown" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="CityNameDropDown_SelectedIndexChanged">
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Bengaluru</asp:ListItem>
                <asp:ListItem>Kolkata</asp:ListItem>
                <asp:ListItem>Hyderabad</asp:ListItem>
                <asp:ListItem Value="Chandigarh">Chandigarh</asp:ListItem>
                <asp:ListItem>Delhi-NCR</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
            </asp:DropDownList><asp:Label ID="Show1" runat="server" Text="Show 1 :" CssClass="Show1"></asp:Label><asp:TextBox ID="Time1" runat="server" CssClass="hours" MaxLength="2" TextMode="Time"></asp:TextBox><br />
            <asp:Label ID="Date" runat="server" Text="Date :" CssClass="date"></asp:Label>
            <div class="calender">
                <asp:TextBox ID="ChooseDate" runat="server" CssClass="chooseDate" TextMode="Date"></asp:TextBox></div>  <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select Date" ControlToValidate="ChooseDate" Font-Names="Segeo UI" CssClass="SelectDateValidator" ForeColor="#FF3300"></asp:RequiredFieldValidator><br />
            <asp:Label ID="Show2" runat="server" Text="Show 2 :" CssClass="Show2"></asp:Label><asp:TextBox ID="Time2" runat="server" CssClass="hours2"  TextMode="Time"></asp:TextBox><br />
             <asp:Label ID="Show3" runat="server" Text="Show 3 :" CssClass="Show3"></asp:Label><asp:TextBox ID="Time3" runat="server" CssClass="hours3"  TextMode="Time"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorShow1" runat="server" ErrorMessage="Select Time" CssClass="SelectTiimeShow1" ForeColor="#FF3300" Font-Size="14px" ControlToValidate="Time1"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorShow2" runat="server" ErrorMessage="Select Time" CssClass="SelectTiimeShow2" ForeColor="#FF3300" Font-Size="14px" ControlToValidate="Time2"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorShow3" runat="server" ErrorMessage="Select Time" CssClass="SelectTiimeShow3" ForeColor="#FF3300" Font-Size="14px" ControlToValidate="Time3"></asp:RequiredFieldValidator>
            <asp:Button ID="AddMoviesSubmit" runat="server" Text="Submit" CssClass="AddMoviesSubmit" OnClick="AddMoviesSubmit_Click" /><br />
            <asp:Label ID="MyIndicator" runat="server" Text="Label" CssClass="MyIndicator" ForeColor="Red" Visible="False"></asp:Label>
        </div>
    </div>
</asp:Content>

