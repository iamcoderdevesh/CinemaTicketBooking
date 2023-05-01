<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBookings.aspx.cs" Inherits="CinemaTicketBooking.CheckBookings" MasterPageFile="~/LynxCinemaAdmin.Master"%>
<asp:Content ContentPlaceHolderID="head" runat="server" ID="Content1"></asp:Content>
<asp:Content ContentPlaceHolderID="AdminMasterPage" runat="server" ID="Content2">
    <link rel="stylesheet" href="css/Others.css" />
    <div class="parentContainer">
        <div class="Options">
            <div class="MainOptions">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Shows" GroupName="Options" CssClass="OptionsButton" /><br />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Bookings" GroupName="Options" CssClass="OptionsButton" />
            </div>
            <div class="MainOptions2">
                <asp:Label ID="DateString" runat="server" Text="Date :" CssClass="DateString"></asp:Label><asp:TextBox ID="DateObject" runat="server" TextMode="Date" CssClass="Date" AutoPostBack="True" OnTextChanged="DateObject_TextChanged"></asp:TextBox>
            </div>
            <div class="MainOptions2">
                <asp:Label ID="CityLabel" runat="server" Text="City :" CssClass="CityLabel"></asp:Label>
                <asp:DropDownList ID="CityDropDown" runat="server" CssClass="CityDropDown" AutoPostBack="True">
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi-NCR</asp:ListItem>
                    <asp:ListItem>Bengaluru</asp:ListItem>
                    <asp:ListItem>Chandigarh</asp:ListItem>
                    <asp:ListItem>Hyderabad</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                    <asp:ListItem>Kolkata</asp:ListItem>
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="MainOptions3">
                <asp:Label ID="TheaterString" runat="server" Text="Theaters :" CssClass="TheatersString"></asp:Label><asp:DropDownList ID="TheatersList" runat="server" AutoPostBack="True" CssClass="TheatersListDD" DataSourceID="SqlDataSource1" DataTextField="TheaterName" DataValueField="TheaterName"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaTicketBookingConnectionString %>" SelectCommand="SELECT [TheaterName] FROM [City_Theater_List] WHERE ([City] = @City)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="CityDropDown" DefaultValue="Mumbai" Name="City" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

        </div>
        <div class="datagridBox">
            <asp:GridView ID="MyGridView" runat="server" BackColor="White" CssClass="MyGridview" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource2" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" Height="400px" OnPageIndexChanging="MyGridView_PageIndexChanging" Width="1200px">
                <Columns>
                    <asp:BoundField DataField="TheaterName" HeaderText="TheaterName" SortExpression="TheaterName" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Show1" HeaderText="Show1" SortExpression="Show1" />
                    <asp:BoundField DataField="Show2" HeaderText="Show2" SortExpression="Show2" />
                    <asp:BoundField DataField="Show3" HeaderText="Show3" SortExpression="Show3" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black"  Height="50px"/>
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaTicketBookingConnectionString %>" SelectCommand="SELECT City_Theater_List.TheaterName, City_Theater_List.City, NowShowingMovies.MovieName, MovieAvailableInTheaters.Date, MovieAvailableInTheaters.Show1, MovieAvailableInTheaters.Show2, MovieAvailableInTheaters.Show3 FROM City_Theater_List INNER JOIN MovieAvailableInTheaters ON City_Theater_List.Theater_Id = MovieAvailableInTheaters.TheaterId INNER JOIN NowShowingMovies ON MovieAvailableInTheaters.MovieId = NowShowingMovies.MovieId"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

