<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="comingsoon.aspx.cs" Inherits="CinemaTicketBooking.comingsoon" MasterPageFile="~/LynxCinema.Master" %>

<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
     <link rel="stylesheet" href="css/homepage.css" />

        <style>
          .Comming-soon-title {
            background-color: #1b1b1b;
            padding: 20px 45px;
            padding-top: 65px;
          }
        </style>

    <div class="Comming-soon-title">
        <h1>COMMING SOON</h1>
    </div>

    <asp:Panel ID="Panel10" runat="server"  Height="700px" Width="1366px" CssClass="Parent_Panel_Cinema" Wrap="True">
         <asp:LinkButton ID="Panel11" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image9" runat="server"   CssClass ="img"   /><asp:Label ID="Movie9_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie9_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel12" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image10" runat="server"   CssClass ="img"  /><asp:Label ID="Movie10_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie10_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel13" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image11" runat="server"   CssClass ="img"   /><asp:Label ID="Movie11_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie11_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel14" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image12" runat="server"   CssClass ="img"   /><asp:Label ID="Movie12_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie12_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel15" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image13" runat="server"   CssClass ="img"   /><asp:Label ID="Movie13_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie13_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel16" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image14" runat="server"   CssClass ="img"   /><asp:Label ID="Movie14_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie14_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel17" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image15" runat="server"   CssClass ="img"   /><asp:Label ID="Movie15_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie15_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel18" runat="server"  CssClass="Child_panel_movies" ><asp:Image ID="Image16" runat="server"   CssClass ="img"   /><asp:Label ID="Movie16_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie16_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
     </asp:Panel>
     
</asp:Content>
