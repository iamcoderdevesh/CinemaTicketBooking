<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCinemas.aspx.cs" Inherits="CinemaTicketBooking.AddMovies" MasterPageFile="~/LynxCinemaAdmin.Master" %>
<asp:Content ContentPlaceHolderID="head" runat="server" ID="Content1"></asp:Content>
<asp:Content ContentPlaceHolderID="AdminMasterPage" runat="server" ID="Content2">
    <link rel="stylesheet" href="css/UpdateCinemas.css" />
    <div class="ParentContainer">
       
        <div class="UpdateForm">
           <div class="FormElements MovieId">
            <asp:Label ID="MovieIdString" runat="server" Text="Movie Id :" CssClass="FormElements Idstring"></asp:Label>
          <asp:Label ID="MovieId" runat="server" Text="0"></asp:Label>
               </div>
            <asp:TextBox ID="MovieName" runat="server" CssClass="FormElements MovieName1" placeholder="Movie Name"></asp:TextBox>
            <asp:TextBox ID="MovieType" runat="server" CssClass="FormElements MovieName2" placeholder="Movie Type"></asp:TextBox>
            <div class="Moviefile">
                <asp:Label ID="UploadFile" runat="server" Text="Image:" CssClass="Uploadlabel"></asp:Label><asp:FileUpload ID="FileUpload1" runat="server" CssClass="fileUpload" />
            </div>
            <asp:Label ID="UploadIndicator" runat="server" Text="Movie Updated Successfully" CssClass="UploadIndicator" Visible="False"></asp:Label>
             <asp:Button ID="UpdateMoviesSubmit" runat="server" Text="Submit" CssClass="UpdateMovieSubmit" OnClick="UpdateMoviesSubmit_Click" />

        </div>
        <div class="MoviesTable">
            <asp:GridView ID="NowShowingTable" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="775px" Height="500px" BackColor="White" ForeColor="Black" SortedAscendingCellStyle-BorderStyle="NotSet" SelectedRowStyle-BackColor="#CCCCCC" SelectedRowStyle-BorderColor="#666666" SelectedRowStyle-BorderStyle="Solid" SelectedRowStyle-ForeColor="Black" CellPadding="1" CssClass="NowShowingClass" OnSelectedIndexChanged="NowShowingTable_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="MovieId" HeaderText="MovieId" SortExpression="MovieId" />
                    <asp:BoundField DataField="MovieName" HeaderText="MovieName" SortExpression="MovieName" />
                    <asp:BoundField DataField="MovieType" HeaderText="MovieType" SortExpression="MovieType" />
                    <asp:BoundField DataField="MovieImageLocation" HeaderText="MovieImageLocation" SortExpression="MovieImageLocation" />
                </Columns>
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#CCCCCC" HorizontalAlign="Center" />
            </asp:GridView> 
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CinemaTicketBookingConnectionString %>" SelectCommand="SELECT * FROM [NowShowingMovies]"></asp:SqlDataSource>
        </div>

    </div>

</asp:Content>
