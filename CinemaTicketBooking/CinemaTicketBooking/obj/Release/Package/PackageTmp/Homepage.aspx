<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CinemaTicketBooking.Homepage" MasterPageFile="~/LynxMasterPage2.Master"%>
<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">
     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
     <link rel="stylesheet" href="css/homepage.css" />

   
     <section id="carousel-slider">
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="slider-images/slider-1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-3.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-4.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-5.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-6.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-7.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-8.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-9.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-10.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-11.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-12.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-13.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-14.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-15.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="slider-images/slider-16.png" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <div class="now-showing-title">
        <h1>NOW SHOWING</h1>
    </div>


     <asp:Panel ID="Panel1" runat="server"  Height="700px" Width="1366px" CssClass="Parent_Panel_Cinema" Wrap="True">
         <asp:LinkButton ID="Panel2" runat="server"  CssClass="Child_panel_movies" OnClick="Panel2_Click" CausesValidation="False" ><asp:Image ID="Image1" runat="server"   CssClass ="img"  /><asp:Label ID="Movie1_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie1_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel3" runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel3_Click" ><asp:Image ID="Image2" runat="server"   CssClass ="img"  /><asp:Label ID="Movie2_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie2_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel4"   runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel4_Click" ><asp:Image ID="Image3" runat="server"   CssClass ="img"  /><asp:Label ID="Movie3_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie3_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel5" runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel5_Click" ><asp:Image ID="Image4" runat="server"   CssClass ="img"  /><asp:Label ID="Movie4_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie4_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel6" runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel6_Click" ><asp:Image ID="Image5" runat="server"   CssClass ="img"  /><asp:Label ID="Movie5_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie5_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel7" runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel7_Click" ><asp:Image ID="Image6" runat="server"   CssClass ="img"  /><asp:Label ID="Movie6_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie6_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel8" runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel8_Click" ><asp:Image ID="Image7" runat="server"   CssClass ="img"  /><asp:Label ID="Movie7_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie7_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
         <asp:LinkButton ID="Panel9" runat="server"  CssClass="Child_panel_movies" CausesValidation="False" OnClick="Panel9_Click" ><asp:Image ID="Image8" runat="server"   CssClass ="img"  /><asp:Label ID="Movie8_lb1" runat="server" Text="" CssClass="MovieLbl1"></asp:Label><br />
             <asp:Label ID="Movie8_lb2" runat="server" Text="Label" CssClass="MovieLbl2"></asp:Label></asp:LinkButton>
     </asp:Panel>  
    
     <div class="view-all">
        <a href="nowshowing.aspx" class="view-effect">
            <span class="view-all-text">VIEW ALL</span>
                <i class="fa-solid fa-chevron-right"></i>
        </a>
     </div>

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

    <div class="view-all">
        <a href="comingsoon.aspx" class="view-effect">
            <span class="view-all-text">VIEW ALL</span>
                <i class="fa-solid fa-chevron-right"></i>
        </a>
     </div>
   
</asp:Content>

