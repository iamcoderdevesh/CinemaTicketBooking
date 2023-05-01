<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print_ticket.aspx.cs" Inherits="CinemaTicketBooking.print_ticket" MasterPageFile="~/LynxCinema.Master"%>

<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">



    <link href="css/print_ticket.css" rel="stylesheet" />

    <div class="main">
        <asp:Panel ID="Panel1" runat="server" CssClass="panel">
            <section class="semicircle"></section>
            <div class="semi"></div>
            <div class="outer">
                <div class="inner">
                    <div class="upper">
                        <asp:Label ID="MovieName" runat="server" Text="Black Panther" CssClass="moviename"></asp:Label>
                        <asp:Label ID="TheaterName" runat="server" Text="" CssClass="theatername"></asp:Label>
                        <asp:Label ID="City" runat="server" Text="" CssClass="movietime"></asp:Label>
                        <hr />
                    </div>
                    <div class="lower">
                        <asp:Label ID="Label4" runat="server" Text="Seats :" CssClass="seats1"></asp:Label>
                        <asp:Label ID="SeatNo" runat="server" Text="101, 102, 103, 104" CssClass="seats2"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="Total Amount :" CssClass="tamount1"></asp:Label>
                        <asp:Label ID="TotalAmount" runat="server" Text="100" CssClass="tamount2"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Text="Transaction Id :" CssClass="tid1"></asp:Label>
                        <asp:Label ID="transactionId" runat="server" Text="ABC1203569845" CssClass="tid2"></asp:Label>
                        <asp:Label ID="label9" runat="server" Text="Time" CssClass="tid31"></asp:Label>
                        <asp:Label ID="Time" runat="server" Text="ABC1203569845" CssClass="tid32"></asp:Label>
                    </div>
                </div>
                <asp:Image ID="Image1" runat="server" CssClass="qrcode" ImageUrl="~/images/ticketqrcode.png" />
                <asp:Label ID="Label10" runat="server" Text="NO MORE QUEUES!" CssClass="queue"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Scan this QR code at the theatre entry" CssClass="note"></asp:Label>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/LynxCinemaLogo.jpeg" CssClass="logo" />
            </div>
        </asp:Panel>
        <asp:Button ID="Button1" runat="server" Text="Download pdf" CssClass="downloadbtn" OnClick="Button1_Click" />
    </div>

        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            swal("Good job!", "Payment Success", "success");

        </script>
</asp:Content>
