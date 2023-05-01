<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nowshowing.aspx.cs" Inherits="CinemaTicketBooking.nowshowing" MasterPageFile="~/LynxCinema.Master"%>

<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/homepage.css" />

    <div class="now-showing-title">
        <h1>NOW SHOWING</h1>
    </div>

    <asp:Panel ID="Panel1" runat="server"  Height="700px" Width="1366px" CssClass="Parent_Panel_Cinema" Wrap="True">
         <asp:LinkButton ID="Panel2" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image1" runat="server"   CssClass ="img"  /><asp:Label ID="Movie1_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie1_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel3" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image2" runat="server"   CssClass ="img"  /><asp:Label ID="Movie2_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie2_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel4" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image3" runat="server"   CssClass ="img"  /><asp:Label ID="Movie3_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie3_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel5" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image4" runat="server"   CssClass ="img"  /><asp:Label ID="Movie4_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie4_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel6" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image5" runat="server"   CssClass ="img"  /><asp:Label ID="Movie5_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie5_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel7" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image6" runat="server"   CssClass ="img"  /><asp:Label ID="Movie6_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie6_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel8" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image7" runat="server"   CssClass ="img"  /><asp:Label ID="Movie7_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie7_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel9" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image8" runat="server"   CssClass ="img"  /><asp:Label ID="Movie8_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie8_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
     </asp:Panel> 


</asp:Content>
