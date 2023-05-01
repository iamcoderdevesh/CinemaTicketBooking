<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MovieBook.aspx.cs" Inherits="MovieDetails.Kantara" MasterPageFile="~/LynxCinema.Master"%>

<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">


    <link href="CSS/MovieBook.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <script type="text/javascript" src="javascript/MovieBook.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    



    
        <div class="main">

        <div class="banner">
            <asp:Image ID="Image1" runat="server" />
        </div>

        <div class="banner-details">
            <div class="m-poster">
                <asp:Image ID="Image2" runat="server" CssClass="poster"  />
                <%--<h4 class="heart"><i class="fa fa-heart" style="font-size:20px;color:red"></i> 89% 23k Votes </h4>--%> 
            </div>
            <asp:Label ID="Label1" runat="server"  CssClass="heading"></asp:Label>
            <span style="font-size:2rem; color:red; position:absolute; z-index:1; left:80% ; top:6%;">&hearts;</span>
            <asp:Label ID="Label50" runat="server" Text="&nbsp;" CssClass="likes"></asp:Label>
            <asp:Label ID="Label2" runat="server"  CssClass="quality"></asp:Label>
            <asp:Label ID="Label3" runat="server"  CssClass="languages"></asp:Label>
            <asp:Label ID="Label4" runat="server"  CssClass="subheading"></asp:Label>
            <asp:Label ID="Label5" runat="server"  CssClass="subheading2"></asp:Label>
            
            
            <asp:HyperLink ID="hy2" runat="server" Text="Watch Trailer" CssClass="trailerbtn"  ></asp:HyperLink>
        </div>

            <div class="share-button">
                <span> SHARE </span>
                <a href="https://twitter.com/messages"><i class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com/direct/inbox/"><i class="fab fa-instagram"></i></a>
                <a href="https://web.whatsapp.com/"><i class="fab fa-whatsapp"></i></a>
            </div>

        </div>

        <%-- ======================================================================= --%>
        <div class="section2">
        <div class="movie-info">
            <asp:Label ID="Label6" runat="server" Text="About" CssClass="about"></asp:Label>
        </div>
     
        <asp:Label ID="Label51" runat="server"  CssClass="aboutmovie"></asp:Label>
       
</div>

        <hr noshade />
        <%-- ========================================================================== --%>

        <div class="offer">
            <asp:Label ID="Label7" runat="server" Text="Applicable-offer" CssClass="offer-title"></asp:Label>
            <div class="offer-slider">
                <div class="offer-slide">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/movie-ticket.png" CssClass="img1" />
                    <asp:Label ID="Label8" runat="server" Text="WATCH THESE MOVIE FOR FREE!" CssClass="h3"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="Limited Period Offer" CssClass="h4"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="*T&C apply" CssClass="h5"></asp:Label>
                </div>
                <div class="offer-slide">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/images/movie-ticket.png" CssClass="img2" />
                    <asp:Label ID="Label11" runat="server" Text="Secure your seat, before it's too Late!!" CssClass="h6"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="Apply Code OAP20, Get FLAT 20% OFF" CssClass="h7"></asp:Label>
                </div>
            </div>
        </div>

        <hr noshade />

        <%-- ================================================================================= --%>

   <div class="list">
        <div class="divtitle">
            <asp:Label ID="Label42" runat="server" Text="Show available in theaters" CssClass="list-title"></asp:Label>
        </div>
        <asp:Label ID="Label44" CssClass="notlog" runat="server" Text="Please first Login and to see theaters"></asp:Label>

        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <div class="data">
                    <details>
                        <summary><a class="theatername"><%#Eval("TheaterName") %></a></summary>
                        <div class="shows">
                             <h6 class="showdate">Date :</h6>
                            <a class="date"><%#Eval("date") %></a>
                            <h6 class="timing">Show Timing :</h6>
                            <a href="seat.aspx?theatername=<%# Eval("TheaterName") %>&date=<%#Eval("date") %>&time=<%#Eval("Show1") %>&id=<%# Eval("uniqueid") %>" class="Show1"><%#Eval("Show1") %></a>
                            <a href="seat.aspx?theatername=<%# Eval("TheaterName") %>&date=<%#Eval("date") %>&time=<%#Eval("Show2") %>&id=<%# Eval("uniqueid") %>" class="Show2"><%#Eval("Show2") %></a>
                            <a href="seat.aspx?theatername=<%# Eval("TheaterName") %>&date=<%#Eval("date") %>&time=<%#Eval("Show3") %>&id=<%# Eval("uniqueid") %>" class="Show3"><%#Eval("Show3") %></a>
                            <h6 class="uniqueid"><%# Eval("uniqueid") %></h6>

                        </div>
                    </details>
                </div>
                <hr id="listseparate" noshade />
            </ItemTemplate>

        </asp:ListView>
    </div>

          <hr noshade />

        <%-- ======================================================================================== --%>


        <div class="cast">
            <asp:Label ID="Label13" runat="server" Text="Cast" CssClass="cast-heading"></asp:Label>
            <div class="cast-slider">
                <%-- 1 --%>
                <div class="cast-slide">
                    <asp:Image ID="Image5" runat="server" CssClass="cast-img"  />
                    <div class="cast-details">
                        <asp:Label ID="Label14" runat="server" CssClass="cast-name" ></asp:Label>
                        <asp:Label ID="Label15" runat="server"  CssClass="role-name"></asp:Label>
                    </div>
                </div>
                <%-- 2 --%>
                <div class="cast-slide">
                    <asp:Image ID="Image6" runat="server" CssClass="cast-img"  />
                    <div class="cast-details">
                        <asp:Label ID="Label16" runat="server" CssClass="cast-name" ></asp:Label>
                        <asp:Label ID="Label17" runat="server"  CssClass="role-name"></asp:Label>
                    </div>
                </div>
                <%-- 3 --%>
                <div class="cast-slide">
                    <asp:Image ID="Image7" runat="server" CssClass="cast-img"  />
                    <div class="cast-details">
                        <asp:Label ID="Label18" runat="server" CssClass="cast-name" ></asp:Label>
                        <asp:Label ID="Label19" runat="server"  CssClass="role-name"></asp:Label>
                    </div>
                </div>
                <%-- 4 --%>
                <div class="cast-slide">
                    <asp:Image ID="Image8" runat="server" CssClass="cast-img"  />
                    <div class="cast-details">
                        <asp:Label ID="Label20" runat="server" CssClass="cast-name" ></asp:Label>
                        <asp:Label ID="Label21" runat="server"  CssClass="role-name"></asp:Label>
                    </div>
                </div>
                <%-- More --%>
                <div class="cast-slide">
                 <asp:ImageButton ID="ImageButton1" runat="server" CssClass="cast-img moreimg1" ImageUrl="~/images/more.jpeg" AlternateText="More"  />
                    <asp:HyperLink ID="HyperLink2" runat="server" CssClass="more1" >More</asp:HyperLink>
                    </div>
            </div>
        </div>

        <hr noshade />
        
        <%-- ================================================================================= --%>

        <div class="crew">
            <asp:Label ID="Label22" runat="server" Text="Crew" CssClass="crew-heading"></asp:Label>
            <div class="cast-slider">
                <%-- 1 --%>
                <div class="crew-slide">
                    <asp:Image ID="Image9" runat="server" CssClass="crew-img"  />
                    <div class="cast-details">
                        <asp:Label ID="Label23" runat="server" CssClass="crew-name" Text=""></asp:Label>
                        <asp:Label ID="Label24" runat="server" CssClass="crew-work"></asp:Label>
                    </div>
                </div>
                <%-- 2 --%>
                 <div class="crew-slide">
                    <asp:Image ID="Image10" runat="server" CssClass="crew-img" />
                    <div class="cast-details">
                        <asp:Label ID="Label25" runat="server" CssClass="crew-name" ></asp:Label>
                        <asp:Label ID="Label26" runat="server"  CssClass="crew-work"></asp:Label>
                    </div>
                </div>
                <%-- 3 --%>
                 <div class="crew-slide">
                    <asp:Image ID="Image11" runat="server" CssClass="crew-img" />
                    <div class="cast-details">
                        <asp:Label ID="Label27" runat="server" CssClass="crew-name" ></asp:Label>
                        <asp:Label ID="Label28" runat="server"  CssClass="crew-work"></asp:Label>
                    </div>
                </div>
                <%-- 4 --%>
                 <div class="crew-slide">
                    <asp:Image ID="Image12" runat="server" CssClass="crew-img"  />
                    <div class="cast-details">
                        <asp:Label ID="Label29" runat="server" CssClass="crew-name" ></asp:Label>
                        <asp:Label ID="Label30" runat="server"  CssClass="crew-work"></asp:Label>
                    </div>
                </div>
                <%-- More --%>
                <div class="crew-slide">
                 <asp:ImageButton ID="ImageButton2" runat="server" CssClass="crew-img moreimg2" ImageUrl="~/images/more.jpeg" AlternateText="More"  />
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="more2" >More</asp:HyperLink>
                    </div>
            </div>
        </div>
       
        <hr noshade />
        <%-- ====================================================================================== --%>
        
        <div class="review" id="review">

            <asp:Label ID="Label31" runat="server" Text="Top-Review" CssClass="review-heading"></asp:Label>

            <div class=" swiper review-slider">
                <div class="swiper-wrapper slide">
                <%-- 1 --%>
                    <div class="swiper-slide slide">
                        <i class="fas fa-quote-right"></i>
                        <div class="user">
                            <asp:Image ID="Image13" runat="server" CssClass="user-img" ImageUrl="~/Images/img1.jfif" />
                            <div class="user-info">
                                <asp:Label ID="Label32" runat="server" Text="Tony Lawrance" CssClass="user-name"></asp:Label>
                                <div class="stars">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </div>
                            </div>
                        </div>
                        <p class="review-p">It is a decent movie, but it focus much on comic reliefs. Lead actress is under utilized, She should have given more screen time and the back story would make it a better relief.</p>
                    </div>

                    <%-- 2 --%>

                    <div class="swiper-slide slide">
                        <i class="fas fa-quote-right"></i>
                        <div class="user">
                            <asp:Image ID="Image14" runat="server" CssClass="user-img" ImageUrl="~/Images/img2.jfif" />
                            <div class="user-info">
                                <asp:Label ID="Label33" runat="server" Text="Jessy Markwood" CssClass="user-name"></asp:Label>
                                <div class="stars">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                        <p class="review-p">This movie is  heartfelt, funny, romantic, and amazing superhit film that welcomes newcomers as much as it does add to the nuance of the character for returning fans.</p>
                    </div>
                
                <%-- 3 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image15" runat="server" CssClass="user-img" ImageUrl="~/Images/img3.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label34" runat="server" Text="Jey Hummingbird" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">It's A Great Enjoyable Film Without Any Depth And Not Justify With The Villain</p>
                </div>

                <%-- 4 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image16" runat="server" CssClass="user-img" ImageUrl="~/Images/img4.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label35" runat="server" Text="Rachel Robertson" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">Really loved the movie...great performances by actor, actress and villan ....Plash has also done very good job Hope this film will work good...</p>
                </div>

                <%-- 5 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image17" runat="server" CssClass="user-img" ImageUrl="~/Images/img5.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label36" runat="server" Text="James Walker" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">The BGM and editing is really good , setting the tone perfectly which complements the brilliant cast and direction</p>
                </div>

                <%-- 6 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image18" runat="server" CssClass="user-img" ImageUrl="~/Images/img6.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label37" runat="server" Text="Tom Wooler" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">Just ok ok type movie. yuo can watch this for timepass. I will give just 3 stars..</p>
                </div>

                <%-- 7 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image19" runat="server" CssClass="user-img" ImageUrl="~/Images/img7.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label38" runat="server" Text="Shefard Junior" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">Great movie produce by producer and everyone did good job. Congratulation to the whole team!!</p>
                </div>

                <%-- 8 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image20" runat="server" CssClass="user-img" ImageUrl="~/Images/img8.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label39" runat="server" Text="Lara Smith" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">Great plot twist...I really Enjoyed the whole movie.</p>
                </div>

                <%-- 9 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image21" runat="server" CssClass="user-img" ImageUrl="~/Images/img9.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label40" runat="server" Text="Rossie Duke" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">It was Good Movie!</p>
                </div>

                <%-- 10 --%>

                <div class="swiper-slide slide">
                    <i class="fas fa-quote-right"></i>
                    <div class="user">
                        <asp:Image ID="Image22" runat="server" CssClass="user-img" ImageUrl="~/Images/img10.jfif" />
                        <div class="user-info">
                            <asp:Label ID="Label41" runat="server" Text="Mark Johnson" CssClass="user-name"></asp:Label>
                            <div class="stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="review-p">Not disppoint at all...awsome movie. Kudos to the entire team</p>
                </div>
            </div>
        </div>
            <div class="swiper-pagination"></div>
        </div>
        
       <%-- <hr noshade />--%>

        <%-- ===================================================================== --%>

    <div class="base">
        <asp:Label ID="Label43" runat="server" CssClass="direction"></asp:Label>
    </div>





       <%-- <div class="list">
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                        <div class="data">
                    <details>
                        <summary><a class="theatername"><%#Eval("TheaterName") %></a> </summary>
                        <div class="shows">
                        <h4 class="Show1"><%#Eval("Show1") %></h4><h4 class="Show2"><%#Eval("Show2") %></h4><h4 class="Show3"><%#Eval("Show3") %></h4>
                    </div>
                   </details>
                            </div>
                </ItemTemplate>
                
            </asp:ListView>
        </div>

        <hr noshade />--%>

    <%-- ========================================================================= --%>

       <%-- <div class="movie-recommendation">
            <asp:Label ID="Label43" runat="server" Text="You might like" CssClass="recommend-heading"></asp:Label>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="view-all" NavigateUrl="https://youtube.com">View All</asp:HyperLink>

            <div class="swiper recommend-slider">
                <div class="swiper-wrapper recommandation">
                    <%-- 1 --%>
                    <%--<div class="swiper-slide box">
                        <asp:Image ID="Image23" runat="server" CssClass="slide-img" ImageUrl="~/Images/kantara_poster.jpg" />
                        <div class="overlay">
                            <asp:Button ID="Button3" runat="server" Text="Book" CssClass="book-btn" />
                        </div>
                        <div class="detail-box">
                            <asp:HyperLink ID="HyperLink4" runat="server" CssClass="movie-name">Kantara</asp:HyperLink>
                            <asp:Label ID="Label44" runat="server" Text="Drama/Thriller/Adventure" CssClass="category"></asp:Label>
                        </div>
                    </div>--%>

                    <%-- 2 --%>
                  <%--  <div class="swiper-slide box">
                        <asp:Image ID="Image24" runat="server" CssClass="slide-img" ImageUrl="~/Images/kantara_poster.jpg" />
                        <div class="overlay">
                            <asp:Button ID="Button4" runat="server" Text="Book" CssClass="book-btn" />
                        </div>
                        <div class="detail-box">
                            <asp:HyperLink ID="HyperLink5" runat="server" CssClass="movie-name">Kantara2</asp:HyperLink>
                            <asp:Label ID="Label45" runat="server" Text="Drama/Thriller/Adventure" CssClass="category"></asp:Label>
                        </div>
                    </div>--%>

                    <%-- 3 --%>
                    <%--<div class="swiper-slide box">
                        <asp:Image ID="Image25" runat="server" CssClass="slide-img" ImageUrl="~/Images/kantara_poster.jpg" />
                        <div class="overlay">
                            <asp:Button ID="Button5" runat="server" Text="Book" CssClass="book-btn" />
                        </div>
                        <div class="detail-box">
                            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="movie-name">Kantara3</asp:HyperLink>
                            <asp:Label ID="Label46" runat="server" Text="Drama/Thriller/Adventure" CssClass="category"></asp:Label>
                        </div>
                    </div>--%>

                    <%-- 4 --%>
                   <%-- <div class="swiper-slide box">
                        <asp:Image ID="Image26" runat="server" CssClass="slide-img" ImageUrl="~/Images/kantara_poster.jpg" />
                        <div class="overlay">
                            <asp:Button ID="Button6" runat="server" Text="Book" CssClass="book-btn" />
                        </div>
                        <div class="detail-box">
                            <asp:HyperLink ID="HyperLink7" runat="server" CssClass="movie-name">Kantara4</asp:HyperLink>
                            <asp:Label ID="Label47" runat="server" Text="Drama/Thriller/Adventure" CssClass="category"></asp:Label>
                        </div>
                    </div>--%>

                    <%-- 5 --%>
<%--                    <div class="swiper-slide box">
                        <asp:Image ID="Image27" runat="server" CssClass="slide-img" ImageUrl="~/Images/kantara_poster.jpg" />
                        <div class="overlay">
                            <asp:Button ID="Button7" runat="server" Text="Book" CssClass="book-btn" />
                        </div>
                        <div class="detail-box">
                            <asp:HyperLink ID="HyperLink8" runat="server" CssClass="movie-name">Kantara5</asp:HyperLink>
                            <asp:Label ID="Label48" runat="server" Text="Drama/Thriller/Adventure" CssClass="category"></asp:Label>
                        </div>
                    </div>--%>

                    <%-- 6 --%>
                    <%--<div class="swiper-slide box">
                        <asp:Image ID="Image28" runat="server" CssClass="slide-img" ImageUrl="~/Images/kantara_poster.jpg" />
                        <div class="overlay">
                            <asp:Button ID="Button8" runat="server" Text="Book" CssClass="book-btn" />
                        </div>
                        <div class="detail-box">
                            <asp:HyperLink ID="HyperLink9" runat="server" CssClass="movie-name">Kantara6</asp:HyperLink>
                            <asp:Label ID="Label49" runat="server" Text="Drama/Thriller/Adventure" CssClass="category"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    <hr noshade />--%>

   

    
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="javascript/MovieBook.js"></script>
<script src="https://kit.fontawesome.com/2db247bd01.js" crossorigin="anonymous"></script>




</asp:Content>
