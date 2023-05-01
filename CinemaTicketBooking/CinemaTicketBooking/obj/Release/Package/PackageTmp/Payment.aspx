<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CinemaTicketBooking.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <link rel="stylesheet" href="css/payment.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
        <form action="print_ticket.aspx" method="post" name="razorpayForm">
            <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
            <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
            <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
        </form>
</head>
<body>
    <form runat="server">
    <section class="payment-section">
        <section class="payment-row">
            <div class="contact-section">
                <div class="contact-title">
                    <h3>YOUR CONTACT DETAILS</h3>
                </div>

                <div class="contact-form">
                   
                        <div class="form-item">
                        <asp:Label ID="Label1" runat="server" Text="NAME" CssClass="form-label"></asp:Label>
                        <%--<asp:Label ID="Label4" runat="server" Text="NAME" CssClass="form-input"></asp:Label>--%>
                        <asp:TextBox ID="Text1" runat="server" CssClass="form-input" ReadOnly="False"></asp:TextBox>
                        </div>   
                        
                        <div class="form-item">
                        <asp:Label ID="Label2" runat="server" Text="E-MAIL" CssClass="form-label"></asp:Label>
                        <%--<asp:Label ID="Label6" runat="server" Text="E-MAIL" CssClass="form-input"></asp:Label>--%>
                        <asp:TextBox ID="Text2" runat="server" CssClass="form-input" ReadOnly="False"></asp:TextBox>
                        </div> 
                        
                        <div class="form-item">
                        <asp:Label ID="Label3" runat="server" Text="PHONE" CssClass="form-label"></asp:Label>
                        <%--<asp:Label ID="Label7" runat="server" Text="PHONE" CssClass="form-input"></asp:Label>--%>
                        <asp:TextBox ID="Text3" runat="server" CssClass="form-input" ReadOnly="False"></asp:TextBox>
                        </div>
                  
                </div>

                <div>
                    <div class="contact-title" style="margin-top:20px;">
                        <span>*Vouchers and Gift Card not refundable in case of cancellation.
                         <a href="#">View T&C</a>
                        </span><br />
                        <asp:Label ID="Warning" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="offer-payment-section">
                <div class="question-answer">
                    <div class="question">
                        <button class="question-btn">
                            <span class="up-icon">
                                <i class="fas fa-chevron-up"></i>
                            </span>
                            <span class="down-icon">
                                <i class="fas fa-chevron-down"></i>
                            </span>
                        </button>
                        <h3 class="title-question">
                            Avail Offers
                        </h3>
                    </div>
                    <div class="answer">
                        <h1>Comming Soon!</h1>
                    </div>
                </div>

                <div class="question-answer show-text">
                    <div class="question">
                        <button class="question-btn">
                            <span class="up-icon">
                                <i class="fas fa-chevron-up"></i>
                            </span>
                            <span class="down-icon">
                                <i class="fas fa-chevron-down"></i>
                            </span>
                        </button>
                        <h3 class="title-question">PAYMENT OPTIONS</h3>
                    </div>

                    <div class="answer">
                       <div class="payment-section-row">
                           <div class="payment-mode">
<%--                           <form id="form2" runat="server">--%>
                                    <div class="payment-col">
                                        <img src="image/credit-card.svg" />
                                        <a href="#" class="payment-text">Credit Card</a>
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text" >Paytm Postpaid</a>
    
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/net-banking.svg" />
                                        <a href="#" class="payment-text" >Net Banking</a>
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text" >Paytm</a>
    
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text">GOOGLE PAY</a>
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text" >UPI</a>
    
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text">PhonePe</a>
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text">Mobikwik</a>
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/wallet.svg" />
                                        <a href="#" class="payment-text">Airtel Payments Bank</a>
    
                                    </div>

                                    <div class="payment-col">
                                        <img src="image/credit-card.svg" />
                                        <a href="#" class="payment-text">Gift Cards</a>
                                    </div>
                         <%--</form>--%>
                       </div>


                        <asp:Panel ID="panel_upi" runat="server" class="payment-type">
                               <%--<form class="payment-type-row" runat="server">--%>
                                   <div class="payment-col">
                                       <div class="payment-box">
                                        <div class="payment-box-row">
                                            <div class="payment-box-col">
                                                 <h2>ACCOUNT NAME</h2>
                                                 <input id="Text4" type="text" placeholder="UPI Payer Account" />
                                             </div>
                                           </div>
                                       </div>
                                   </div>

                                   <div class="payment-col">
                                       <input type="checkbox" />
                                       <span class="custom-indicator"></span>
                                       <span>I Have Read And Accepted The LYNX <a href="#">Terms & Conditions</a> Of This Transaction</span>
                                   </div>

                                   <div class="payment-col">
                                       <input type="checkbox" />
                                       <span>I would like to receive WhatsApp updates from LYNX</span>
                                   </div>
                                   
                                   <%--<div class="payment-col">--%>
                                       
                                   <%--<asp:Button ID="Button2" runat="server" Text="MAKE PAYMENT" />--%>
                                       
                                   <%--</div>--%>
                               <%--</form>--%>  
                              </asp:Panel>

                        <asp:Panel ID="panel_other_type" runat="server">
                            <form class="payment-type-row" >

                                   <div class="payment-col">
                                       <input type="checkbox" />
                                       <span class="custom-indicator"></span>
                                       <span>I Have Read And Accepted The LYNX <a href="#">Terms & Conditions</a> Of This Transaction</span>
                                   </div>

                                   <div class="payment-col">
                                       <input type="checkbox" />
                                       <span>I would like to receive WhatsApp updates from LYNX</span>
                                   </div>
                                   
                                   <div class="payment-col">
                                       <asp:Button ID="Button1_make_payment" runat="server" Text="MAKE PAYMENT" CssClass="PaymentButton" />
                                   </div>
                               </form>  
                        </asp:Panel>
                              </div>   
                            </div>
                          </div>

                <div class="question-answer">
                    <div class="question">
                        <button class="question-btn">
                            <span class="up-icon">
                                <i class="fas fa-chevron-up"></i>
                            </span>
                            <span class="down-icon">
                                <i class="fas fa-chevron-down"></i>
                            </span>
                        </button>
                        <h3 class="title-question">
                            Bank Offers
                        </h3>
                    </div>
                    <div class="answer">
                        <h1>Comming Soon!</h1>
                    </div>
                </div>
            </div>

        </section>

        <section class="movie-row">
            <div class="movie-details">
                <div class="movie-name-seat">
                    <asp:Label ID="MovieName" runat="server" Text="DRISHYAM 2 (HINDI)(2D)"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="AUDI 03"></asp:Label>
                </div>
                <div class="movie-location-time">
                    <asp:Label ID="TheaterName" runat="server" Text="PVR Orion Panvel Mumbai"></asp:Label>
                    <asp:Label ID="Date" runat="server" Text="ON 28-NOV-10:20 AM"></asp:Label>
                </div>
            </div>

            <div class="seat-info">
                <h3>Seat Info</h3>
                <ul class="seats-checkout">
                    <li class="seats-checkout-li">
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    </li>
                </ul>
            </div>

            <div class="checkout-summary">
                <div class="checkout-row">
                    <div>Tickets </div>
                    <asp:Label ID="Label9" runat="server" Text="INR 110.00"></asp:Label>
                </div>
                <div class="checkout-row">
                    <div>Conv. Fees</div>
                    <asp:Label ID="Label10" runat="server" Text="INR 17.00"></asp:Label>
                </div>
                <div class="checkout-row">
                    <div>GST</div>
                    <asp:Label ID="Label11" runat="server" Text="INR 2.0"></asp:Label>
                </div>
                <div class="checkout-row">
                    <div>State GST Number</div>
                    <asp:Label ID="Label12" runat="server" Text="27AAACP4526D1ZQ"></asp:Label>
                </div>
            </div>

            <div class="checkout-info">
                <span class="checkout-image">
                    <img src="images/ico_cancellation_popcorn.png" style="width: 25px;"/>
                </span>
                <h3>100% Refund on F&B</h3>
            </div> 

            <div class="terms-section">
                <a href="#">View Terms & Conditions</a>
            </div>

            <div class="divider"></div>

            <div class="movie-total">
                <div class="movie-total-row">
                    <h3>TOTAL</h3>
                    <h3>(INR)</h3>
                </div>
                <div class="movie-total-row" style="text-align: right;">
                    <asp:Label ID="Label13" runat="server" Text="129.04"></asp:Label>
                </div>
            </div>
        </section>
    </section>

    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script>
        var orderId = "<%=orderId%>"
        var options = {
            "name": "<%=name%>",
                "description": "LYNX Cinema Payment",
                "order_id": orderId,
                "image": "images/logo.jpg",
                "prefill": {
                    "name": "<%=name%>",
                    "email": "<%=email%>",
                    "contact": "<%=contact%>",
                },
                "notes": {
                    "address": "<%=addressn%>",
                "merchant_order_id": "<%=orderIds%>",
            },
            "theme": {
                "color": "#ffce26"
            }
        }
        // Boolean whether to show image inside a white frame. (default: true)
        options.theme.image_padding = false;
        options.handler = function (response) {
            document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
            document.getElementById('razorpay_order_id').value = orderId;
            document.getElementById('razorpay_signature').value = response.razorpay_signature;
            document.razorpayForm.submit();
        };
        options.modal = {
            ondismiss: function () {
                console.log("This code runs when the popup is closed");
            },
            // Boolean indicating whether pressing escape key 
            // should close the checkout form. (default: true)
            escape: true,
            // Boolean indicating whether clicking translucent blank
            // space outside checkout form should close the form. (default: false)
            backdropclose: false
        };
        var rzp = new Razorpay(options);
        document.getElementById('Button1_make_payment').onclick = function (e) {
            rzp.open();
            e.preventDefault();
        }



        //Normal JS
        const questions = document.querySelectorAll('.question-answer');
/*        const scroll = document.querySelectorAll('.payment-text');*/
        questions.forEach(function (question) {
            const btn = question.querySelector('.question');
            btn.addEventListener("click", function () {
                questions.forEach(function (item) {
                    if (item !== question) {
                        item.classList.remove("show-text");
                    }
                })
                question.classList.toggle("show-text");
        })
        })

        //scroll.addEventListener("click", function () {
        //    window.scrollBy(0, 100);
        //})

        //document.getElementById("LinkButton_paytm").addEventListener("click", scroll_vertically);

        //function scrollDown() {
        //    window.scrollBy(0, 100);
        //}
    </script>

</form>
</body>
</html>
