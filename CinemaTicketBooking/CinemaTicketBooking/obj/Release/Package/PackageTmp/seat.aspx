<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seat.aspx.cs" Inherits="CinemaTicketBooking.seat" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Seat</title>
    <link rel="stylesheet" href="css/seat.css" />
    <script src="javascript/seat.js"></script>
    <script src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="corssIcon">
                <asp:LinkButton ID="LinkButton1" runat="server">
                    <iconify-icon icon="gridicons:cross-circle" style="color: #699bf7;" width="50" height="50"></iconify-icon>
                </asp:LinkButton>
            </div>
           <%-- </span>--%>
            <div id="moviePoster">
                <asp:Label ID="movieName" runat="server" Text="AVATAR: THE WAY OF WATER" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="X-Large" ForeColor="White"></asp:Label>
                <asp:Label ID="theatreName" runat="server" Text="PVR SANGAM DELHI" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" ForeColor="White"></asp:Label>
                <asp:Label ID="movieTime" runat="server" Text="16 Dec 22, 07:55 AM" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Large" ForeColor="White"></asp:Label>
                <asp:Image ID="movieImg" runat="server" ImageUrl="~/images/drishyam-small.jpg" />
            </div>


           

            <asp:Label ID="screenWay" runat="server" Text="⬆Screen This Way"></asp:Label>
            <div id="seatInfo">
                <div id="available">
                    <div id="availableSeat"></div>
                    <div id="availableName">Available</div>
                </div>
                <div id="selected">
                    <div id="selectedSeat"></div>
                    <div id="selectedName">Selected</div>
                </div>
                <div id="unavailable">
                    <div id="unavailableSeat"></div>
                    <div id="unavailabledName">Unavailable</div>
                </div>
            </div>


            <div id="Allseat">

                <asp:Panel ID="section1" runat="server">

                    <asp:Label ID="classicLabel" runat="server" Text="Classic 200"></asp:Label>
                    <asp:Panel ID="A" runat="server" Height="59px" ForeColor="White">
                        <div id="leftA">
                            <asp:Label ID="Label3" runat="server" Text="A"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A1" runat="server" onclick="retrieve_id(this)" />
                                <label for="A1" class="hvr" id="AL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A2" runat="server" onclick="retrieve_id(this)" />
                                <label for="A2" id="AL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A3" runat="server" onclick="retrieve_id(this)" />
                                <label for="A3" id="AL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A4" runat="server" onclick="retrieve_id(this)" />
                                <label for="A4" id="AL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A5" runat="server" onclick="retrieve_id(this)" />
                                <label for="A5" id="AL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A6" runat="server" onclick="retrieve_id(this)" />
                                <label for="A6" id="AL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A7" runat="server" onclick="retrieve_id(this)" />
                                <label for="A7" id="AL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A8" runat="server" onclick="retrieve_id(this)" />
                                <label for="A8" id="AL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A9" runat="server" onclick="retrieve_id(this)" />
                                <label for="A9" id="AL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A10" runat="server" onclick="retrieve_id(this)" />
                                <label for="A10" id="AL10"></label>
                            </span>
                        </div>
                        <div id="rightA">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A11" runat="server" onclick="retrieve_id(this)" />
                                <label for="A11" id="AL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A12" runat="server" onclick="retrieve_id(this)" />
                                <label for="A12" id="AL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A13" runat="server" onclick="retrieve_id(this)" />
                                <label for="A13" id="AL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A14" runat="server" onclick="retrieve_id(this)" />
                                <label for="A14" id="AL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A15" runat="server" onclick="retrieve_id(this)" />
                                <label for="A15" id="AL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A16" runat="server" onclick="retrieve_id(this)" />
                                <label for="A16" id="AL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A17" runat="server" onclick="retrieve_id(this)" />
                                <label for="A17" id="AL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A18" runat="server" onclick="retrieve_id(this)" />
                                <label for="A18" id="AL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A19" runat="server" onclick="retrieve_id(this)" />
                                <label for="A19" id="AL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="A20" runat="server" onclick="retrieve_id(this)" />
                                <label for="A20" id="AL20"></label>
                            </span>
                        </div>
                    </asp:Panel>

                    <asp:Panel ID="B" runat="server" Height="59px" ForeColor="White">
                        <div id="leftB">
                            <asp:Label ID="Label2" runat="server" Text="B"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B1" runat="server" onclick="retrieve_id(this)" />
                                <label for="B1" id="BL1"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B2" runat="server" onclick="retrieve_id(this)" />
                                <label for="B2" id="BL2"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B3" runat="server" onclick="retrieve_id(this)" />
                                <label for="B3" id="BL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B4" runat="server" onclick="retrieve_id(this)" />
                                <label for="B4" id="BL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B5" runat="server" onclick="retrieve_id(this)" />
                                <label for="B5" id="BL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B6" runat="server" onclick="retrieve_id(this)" />
                                <label for="B6" id="BL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B7" runat="server" onclick="retrieve_id(this)" />
                                <label for="B7" id="BL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B8" runat="server" onclick="retrieve_id(this)" />
                                <label for="B8" id="BL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B9" runat="server" onclick="retrieve_id(this)" />
                                <label for="B9" id="BL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B10" runat="server" onclick="retrieve_id(this)" />
                                <label for="B10" id="BL10"></label>
                            </span>
                        </div>
                        <div id="rightB">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B11" runat="server" onclick="retrieve_id(this)" />
                                <label for="B11" id="BL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B12" runat="server" onclick="retrieve_id(this)" />
                                <label for="B12" id="BL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B13" runat="server" onclick="retrieve_id(this)" />
                                <label for="B13" id="BL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B14" runat="server" onclick="retrieve_id(this)" />
                                <label for="B14" id="BL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B15" runat="server" onclick="retrieve_id(this)" />
                                <label for="B15" id="BL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B16" runat="server" onclick="retrieve_id(this)" />
                                <label for="B16" id="BL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B17" runat="server" onclick="retrieve_id(this)" />
                                <label for="B17" id="BL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B18" runat="server" onclick="retrieve_id(this)" />
                                <label for="B18" id="BL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B19" runat="server" onclick="retrieve_id(this)" />
                                <label for="B19" id="BL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="B20" runat="server" onclick="retrieve_id(this)" />
                                <label for="B20" id="BL20"></label>
                            </span>
                        </div>
                    </asp:Panel>


                </asp:Panel>

                <asp:Panel ID="section2" runat="server">

                    <asp:Label ID="primeLabel" runat="server" Text="Prime 300"></asp:Label>

                    <asp:Panel ID="C" runat="server" Height="59px" ForeColor="White">
                        <div id="leftC">
                            <asp:Label ID="Label1" runat="server" Text="C"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C1" runat="server" onclick="retrieve_id(this)" />
                                <label for="C1" class="hvr" id="CL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C2" runat="server" onclick="retrieve_id(this)" />
                                <label for="C2" id="CL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C3" runat="server" onclick="retrieve_id(this)" />
                                <label for="C3" id="CL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C4" runat="server" onclick="retrieve_id(this)" />
                                <label for="C4" id="CL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C5" runat="server" onclick="retrieve_id(this)" />
                                <label for="C5" id="CL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C6" runat="server" onclick="retrieve_id(this)" />
                                <label for="C6" id="CL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C7" runat="server" onclick="retrieve_id(this)" />
                                <label for="C7" id="CL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C8" runat="server" onclick="retrieve_id(this)" />
                                <label for="C8" id="CL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C9" runat="server" onclick="retrieve_id(this)" />
                                <label for="C9" id="CL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C10" runat="server" onclick="retrieve_id(this)" />
                                <label for="C10" id="CL10"></label>
                            </span>
                        </div>
                        <div id="rightC">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C11" runat="server" onclick="retrieve_id(this)" />
                                <label for="C11" id="CL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C12" runat="server" onclick="retrieve_id(this)" />
                                <label for="C12" id="CL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C13" runat="server" onclick="retrieve_id(this)" />
                                <label for="C13" id="CL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C14" runat="server" onclick="retrieve_id(this)" />
                                <label for="C14" id="CL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C15" runat="server" onclick="retrieve_id(this)" />
                                <label for="C15" id="CL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C16" runat="server" onclick="retrieve_id(this)" />
                                <label for="C16" id="CL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C17" runat="server" onclick="retrieve_id(this)" />
                                <label for="C17" id="CL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C18" runat="server" onclick="retrieve_id(this)" />
                                <label for="C18" id="CL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C19" runat="server" onclick="retrieve_id(this)" />
                                <label for="C19" id="CL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="C20" runat="server" onclick="retrieve_id(this)" />
                                <label for="C20" id="CL20"></label>
                            </span>
                        </div>
                    </asp:Panel>

                    <asp:Panel ID="D" runat="server" Height="59px" ForeColor="White">
                        <div id="leftD">
                            <asp:Label ID="dLabel" runat="server" Text="D"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D1" runat="server" onclick="retrieve_id(this)" />
                                <label for="D1" class="hvr" id="DL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D2" runat="server" onclick="retrieve_id(this)" />
                                <label for="D2" id="DL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D3" runat="server" onclick="retrieve_id(this)" />
                                <label for="D3" id="DL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D4" runat="server" onclick="retrieve_id(this)" />
                                <label for="D4" id="DL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D5" runat="server" onclick="retrieve_id(this)" />
                                <label for="D5" id="DL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D6" runat="server" onclick="retrieve_id(this)" />
                                <label for="D6" id="DL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D7" runat="server" onclick="retrieve_id(this)" />
                                <label for="D7" id="DL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D8" runat="server" onclick="retrieve_id(this)" />
                                <label for="D8" id="DL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D9" runat="server" onclick="retrieve_id(this)" />
                                <label for="D9" id="DL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D10" runat="server" onclick="retrieve_id(this)" />
                                <label for="D10" id="DL10"></label>
                            </span>
                        </div>
                        <div id="rightD">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D11" runat="server" onclick="retrieve_id(this)" />
                                <label for="D11" id="DL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D12" runat="server" onclick="retrieve_id(this)" />
                                <label for="D12" id="DL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D13" runat="server" onclick="retrieve_id(this)" />
                                <label for="D13" id="DL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D14" runat="server" onclick="retrieve_id(this)" />
                                <label for="D14" id="DL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D15" runat="server" onclick="retrieve_id(this)" />
                                <label for="D15" id="DL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D16" runat="server" onclick="retrieve_id(this)" />
                                <label for="D16" id="DL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D17" runat="server" onclick="retrieve_id(this)" />
                                <label for="D17" id="DL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D18" runat="server" onclick="retrieve_id(this)" />
                                <label for="D18" id="DL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D19" runat="server" onclick="retrieve_id(this)" />
                                <label for="D19" id="DL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="D20" runat="server" onclick="retrieve_id(this)" />
                                <label for="D20" id="DL20"></label>
                            </span>
                        </div>
                    </asp:Panel>

                    <asp:Panel ID="E" runat="server" Height="59px" ForeColor="White">
                        <div id="leftE">
                            <asp:Label ID="eLabel" runat="server" Text="E"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E1" runat="server" onclick="retrieve_id(this)" />
                                <label for="E1" class="hvr" id="EL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E2" runat="server" onclick="retrieve_id(this)" />
                                <label for="E2" id="EL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E3" runat="server" onclick="retrieve_id(this)" />
                                <label for="E3" id="EL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E4" runat="server" onclick="retrieve_id(this)" />
                                <label for="E4" id="EL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E5" runat="server" onclick="retrieve_id(this)" />
                                <label for="E5" id="EL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E6" runat="server" onclick="retrieve_id(this)" />
                                <label for="E6" id="EL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E7" runat="server" onclick="retrieve_id(this)" />
                                <label for="E7" id="EL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E8" runat="server" onclick="retrieve_id(this)" />
                                <label for="E8" id="EL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E9" runat="server" onclick="retrieve_id(this)" />
                                <label for="E9" id="EL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E10" runat="server" onclick="retrieve_id(this)" />
                                <label for="E10" id="EL10"></label>
                            </span>
                        </div>
                        <div id="rightE">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E11" runat="server" onclick="retrieve_id(this)" />
                                <label for="E11" id="EL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E12" runat="server" onclick="retrieve_id(this)" />
                                <label for="E12" id="EL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E13" runat="server" onclick="retrieve_id(this)" />
                                <label for="E13" id="EL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E14" runat="server" onclick="retrieve_id(this)" />
                                <label for="E14" id="EL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E15" runat="server" onclick="retrieve_id(this)" />
                                <label for="E15" id="EL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E16" runat="server" onclick="retrieve_id(this)" />
                                <label for="E16" id="EL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E17" runat="server" onclick="retrieve_id(this)" />
                                <label for="E17" id="EL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E18" runat="server" onclick="retrieve_id(this)" />
                                <label for="E18" id="EL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E19" runat="server" onclick="retrieve_id(this)" />
                                <label for="E19" id="EL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="E20" runat="server" onclick="retrieve_id(this)" />
                                <label for="E20" id="EL20"></label>
                            </span>
                        </div>
                    </asp:Panel>


                    <asp:Panel ID="F" runat="server" Height="59px" ForeColor="White">
                        <div id="leftF">
                            <asp:Label ID="fLabel" runat="server" Text="F"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F1" runat="server" onclick="retrieve_id(this)" />
                                <label for="F1" class="hvr" id="FL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F2" runat="server" onclick="retrieve_id(this)" />
                                <label for="F2" id="FL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F3" runat="server" onclick="retrieve_id(this)" />
                                <label for="F3" id="FL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F4" runat="server" onclick="retrieve_id(this)" />
                                <label for="F4" id="FL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F5" runat="server" onclick="retrieve_id(this)" />
                                <label for="F5" id="FL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F6" runat="server" onclick="retrieve_id(this)" />
                                <label for="F6" id="FL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F7" runat="server" onclick="retrieve_id(this)" />
                                <label for="F7" id="FL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F8" runat="server" onclick="retrieve_id(this)" />
                                <label for="F8" id="FL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F9" runat="server" onclick="retrieve_id(this)" />
                                <label for="F9" id="FL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F10" runat="server" onclick="retrieve_id(this)" />
                                <label for="F10" id="FL10"></label>
                            </span>
                        </div>
                        <div id="rightF">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F11" runat="server" onclick="retrieve_id(this)" />
                                <label for="F11" id="FL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F12" runat="server" onclick="retrieve_id(this)" />
                                <label for="F12" id="FL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F13" runat="server" onclick="retrieve_id(this)" />
                                <label for="F13" id="FL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F14" runat="server" onclick="retrieve_id(this)" />
                                <label for="F14" id="FL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F15" runat="server" onclick="retrieve_id(this)" />
                                <label for="F15" id="FL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F16" runat="server" onclick="retrieve_id(this)" />
                                <label for="F16" id="FL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F17" runat="server" onclick="retrieve_id(this)" />
                                <label for="F17" id="FL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F18" runat="server" onclick="retrieve_id(this)" />
                                <label for="F18" id="FL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F19" runat="server" onclick="retrieve_id(this)" />
                                <label for="F19" id="FL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="F20" runat="server" onclick="retrieve_id(this)" />
                                <label for="F20" id="FL20"></label>
                            </span>
                        </div>
                    </asp:Panel>



                    <asp:Panel ID="G" runat="server" Height="59px" ForeColor="White">
                        <div id="leftG">
                            <asp:Label ID="GLabel" runat="server" Text="G"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G1" runat="server" onclick="retrieve_id(this)" />
                                <label for="G1" class="hvr" id="GL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G2" runat="server" onclick="retrieve_id(this)" />
                                <label for="G2" id="GL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G3" runat="server" onclick="retrieve_id(this)" />
                                <label for="G3" id="GL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G4" runat="server" onclick="retrieve_id(this)" />
                                <label for="G4" id="GL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G5" runat="server" onclick="retrieve_id(this)" />
                                <label for="G5" id="GL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G6" runat="server" onclick="retrieve_id(this)" />
                                <label for="G6" id="GL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G7" runat="server" onclick="retrieve_id(this)" />
                                <label for="G7" id="GL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G8" runat="server" onclick="retrieve_id(this)" />
                                <label for="G8" id="GL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G9" runat="server" onclick="retrieve_id(this)" />
                                <label for="G9" id="GL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G10" runat="server" onclick="retrieve_id(this)" />
                                <label for="G10" id="GL10"></label>
                            </span>
                        </div>
                        <div id="rightG">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G11" runat="server" onclick="retrieve_id(this)" />
                                <label for="G11" id="GL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G12" runat="server" onclick="retrieve_id(this)" />
                                <label for="G12" id="GL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G13" runat="server" onclick="retrieve_id(this)" />
                                <label for="G13" id="GL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G14" runat="server" onclick="retrieve_id(this)" />
                                <label for="G14" id="GL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G15" runat="server" onclick="retrieve_id(this)" />
                                <label for="G15" id="GL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G16" runat="server" onclick="retrieve_id(this)" />
                                <label for="G16" id="GL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G17" runat="server" onclick="retrieve_id(this)" />
                                <label for="G17" id="GL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G18" runat="server" onclick="retrieve_id(this)" />
                                <label for="G18" id="GL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G19" runat="server" onclick="retrieve_id(this)" />
                                <label for="G19" id="GL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="G20" runat="server" onclick="retrieve_id(this)" />
                                <label for="G20" id="GL20"></label>
                            </span>
                        </div>
                    </asp:Panel>

                </asp:Panel>
                <asp:Panel ID="section3" runat="server">
                    <asp:Label ID="primePlusLabel" runat="server" Text="Prime Plus 500"></asp:Label>

                    <asp:Panel ID="H" runat="server" Height="59px" ForeColor="White">
                        <div id="leftH">
                            <asp:Label ID="HLabel" runat="server" Text="H"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H1" runat="server" onclick="retrieve_id(this)" />
                                <label for="H1" id="HL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H2" runat="server" onclick="retrieve_id(this)" />
                                <label for="H2" id="HL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H3" runat="server" onclick="retrieve_id(this)" />
                                <label for="H3" id="HL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H4" runat="server" onclick="retrieve_id(this)" />
                                <label for="H4" id="HL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H5" runat="server" onclick="retrieve_id(this)" />
                                <label for="H5" id="HL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H6" runat="server" onclick="retrieve_id(this)" />
                                <label for="H6" id="HL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H7" runat="server" onclick="retrieve_id(this)" />
                                <label for="H7" id="HL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H8" runat="server" onclick="retrieve_id(this)" />
                                <label for="H8" id="HL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H9" runat="server" onclick="retrieve_id(this)" />
                                <label for="H9" id="HL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H10" runat="server" onclick="retrieve_id(this)" />
                                <label for="H10" id="HL10"></label>
                            </span>
                        </div>
                        <div id="rightH">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H11" runat="server" onclick="retrieve_id(this)" />
                                <label for="H11" id="HL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H12" runat="server" onclick="retrieve_id(this)" />
                                <label for="H12" id="HL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H13" runat="server" onclick="retrieve_id(this)" />
                                <label for="H13" id="HL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H14" runat="server" onclick="retrieve_id(this)" />
                                <label for="H14" id="HL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H15" runat="server" onclick="retrieve_id(this)" />
                                <label for="H15" id="HL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H16" runat="server" onclick="retrieve_id(this)" />
                                <label for="H16" id="HL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H17" runat="server" onclick="retrieve_id(this)" />
                                <label for="H17" id="HL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H18" runat="server" onclick="retrieve_id(this)" />
                                <label for="H18" id="HL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H19" runat="server" onclick="retrieve_id(this)" />
                                <label for="H19" id="HL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="H20" runat="server" onclick="retrieve_id(this)" />
                                <label for="H20" id="HL20"></label>
                            </span>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="I" runat="server" Height="59px" ForeColor="White">
                        <div id="leftI">
                            <asp:Label ID="ILabel" runat="server" Text="I"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I1" runat="server" onclick="retrieve_id(this)" />
                                <label for="I1" id="IL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I2" runat="server" onclick="retrieve_id(this)" />
                                <label for="I2" id="IL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I3" runat="server" onclick="retrieve_id(this)" />
                                <label for="I3" id="IL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I4" runat="server" onclick="retrieve_id(this)" />
                                <label for="I4" id="IL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I5" runat="server" onclick="retrieve_id(this)" />
                                <label for="I5" id="IL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I6" runat="server" onclick="retrieve_id(this)" />
                                <label for="I6" id="IL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I7" runat="server" onclick="retrieve_id(this)" />
                                <label for="I7" id="IL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I8" runat="server" onclick="retrieve_id(this)" />
                                <label for="I8" id="IL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I9" runat="server" onclick="retrieve_id(this)" />
                                <label for="I9" id="IL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I10" runat="server" onclick="retrieve_id(this)" />
                                <label for="I10" id="IL10"></label>
                            </span>
                        </div>
                        <div id="rightI">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I11" runat="server" onclick="retrieve_id(this)" />
                                <label for="I11" id="IL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I12" runat="server" onclick="retrieve_id(this)" />
                                <label for="I12" id="IL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I13" runat="server" onclick="retrieve_id(this)" />
                                <label for="I13" id="IL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I14" runat="server" onclick="retrieve_id(this)" />
                                <label for="I14" id="IL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I15" runat="server" onclick="retrieve_id(this)" />
                                <label for="I15" id="IL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I16" runat="server" onclick="retrieve_id(this)" />
                                <label for="I16" id="IL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I17" runat="server" onclick="retrieve_id(this)" />
                                <label for="I17" id="IL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I18" runat="server" onclick="retrieve_id(this)" />
                                <label for="I18" id="IL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I19" runat="server" onclick="retrieve_id(this)" />
                                <label for="I19" id="IL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="I20" runat="server" onclick="retrieve_id(this)" />
                                <label for="I20" id="IL20"></label>
                            </span>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="J" runat="server" Height="59px" ForeColor="White">
                        <div id="leftJ">
                            <asp:Label ID="JLabel" runat="server" Text="J"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J1" runat="server" onclick="retrieve_id(this)" />
                                <label for="J1" id="JL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J2" runat="server" onclick="retrieve_id(this)" />
                                <label for="J2" id="JL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J3" runat="server" onclick="retrieve_id(this)" />
                                <label for="J3" id="JL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J4" runat="server" onclick="retrieve_id(this)" />
                                <label for="J4" id="JL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J5" runat="server" onclick="retrieve_id(this)" />
                                <label for="J5" id="JL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J6" runat="server" onclick="retrieve_id(this)" />
                                <label for="J6" id="JL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J7" runat="server" onclick="retrieve_id(this)" />
                                <label for="J7" id="JL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J8" runat="server" onclick="retrieve_id(this)" />
                                <label for="J8" id="JL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J9" runat="server" onclick="retrieve_id(this)" />
                                <label for="J9" id="JL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J10" runat="server" onclick="retrieve_id(this)" />
                                <label for="J10" id="JL10"></label>
                            </span>
                        </div>
                        <div id="rightJ">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J11" runat="server" onclick="retrieve_id(this)" />
                                <label for="J11" id="JL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J12" runat="server" onclick="retrieve_id(this)" />
                                <label for="J12" id="JL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J13" runat="server" onclick="retrieve_id(this)" />
                                <label for="J13" id="JL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J14" runat="server" onclick="retrieve_id(this)" />
                                <label for="J14" id="JL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J15" runat="server" onclick="retrieve_id(this)" />
                                <label for="J15" id="JL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J16" runat="server" onclick="retrieve_id(this)" />
                                <label for="J16" id="JL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J17" runat="server" onclick="retrieve_id(this)" />
                                <label for="J17" id="JL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J18" runat="server" onclick="retrieve_id(this)" />
                                <label for="J18" id="JL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J19" runat="server" onclick="retrieve_id(this)" />
                                <label for="J19" id="JL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="J20" runat="server" onclick="retrieve_id(this)" />
                                <label for="J20" id="JL20"></label>
                            </span>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="K" runat="server" Height="59px" ForeColor="White">
                        <div id="leftK">
                            <asp:Label ID="KLabel" runat="server" Text="K"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K1" runat="server" onclick="retrieve_id(this)" />
                                <label for="K1" id="KL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K2" runat="server" onclick="retrieve_id(this)" />
                                <label for="K2" id="KL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K3" runat="server" onclick="retrieve_id(this)" />
                                <label for="K3" id="KL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K4" runat="server" onclick="retrieve_id(this)" />
                                <label for="K4" id="KL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K5" runat="server" onclick="retrieve_id(this)" />
                                <label for="K5" id="KL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K6" runat="server" onclick="retrieve_id(this)" />
                                <label for="K6" id="KL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K7" runat="server" onclick="retrieve_id(this)" />
                                <label for="K7" id="KL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K8" runat="server" onclick="retrieve_id(this)" />
                                <label for="K8" id="KL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K9" runat="server" onclick="retrieve_id(this)" />
                                <label for="K9" id="KL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K10" runat="server" onclick="retrieve_id(this)" />
                                <label for="K10" id="KL10"></label>
                            </span>
                        </div>
                        <div id="rightK">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K11" runat="server" onclick="retrieve_id(this)" />
                                <label for="K11" id="KL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K12" runat="server" onclick="retrieve_id(this)" />
                                <label for="K12" id="KL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K13" runat="server" onclick="retrieve_id(this)" />
                                <label for="K13" id="KL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K14" runat="server" onclick="retrieve_id(this)" />
                                <label for="K14" id="KL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K15" runat="server" onclick="retrieve_id(this)" />
                                <label for="K15" id="KL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K16" runat="server" onclick="retrieve_id(this)" />
                                <label for="K16" id="KL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K17" runat="server" onclick="retrieve_id(this)" />
                                <label for="K17" id="KL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K18" runat="server" onclick="retrieve_id(this)" />
                                <label for="K18" id="KL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K19" runat="server" onclick="retrieve_id(this)" />
                                <label for="K19" id="KL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="K20" runat="server" onclick="retrieve_id(this)" />
                                <label for="K20" id="KL20"></label>
                            </span>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="L" runat="server" Height="59px" ForeColor="White">
                        <div id="leftL">
                            <asp:Label ID="LLabel" runat="server" Text="L"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L1" runat="server" onclick="retrieve_id(this)" />
                                <label for="L1" id="LL1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L2" runat="server" onclick="retrieve_id(this)" />
                                <label for="L2" id="LL2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L3" runat="server" onclick="retrieve_id(this)" />
                                <label for="L3" id="LL3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L4" runat="server" onclick="retrieve_id(this)" />
                                <label for="L4" id="LL4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L5" runat="server" onclick="retrieve_id(this)" />
                                <label for="L5" id="LL5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L6" runat="server" onclick="retrieve_id(this)" />
                                <label for="L6" id="LL6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L7" runat="server" onclick="retrieve_id(this)" />
                                <label for="L7" id="LL7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L8" runat="server" onclick="retrieve_id(this)" />
                                <label for="L8" id="LL8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L9" runat="server" onclick="retrieve_id(this)" />
                                <label for="L9" id="LL9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L10" runat="server" onclick="retrieve_id(this)" />
                                <label for="L10" id="LL10"></label>
                            </span>
                        </div>
                        <div id="rightL">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L11" runat="server" onclick="retrieve_id(this)" />
                                <label for="L11" id="LL11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L12" runat="server" onclick="retrieve_id(this)" />
                                <label for="L12" id="LL12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L13" runat="server" onclick="retrieve_id(this)" />
                                <label for="L13" id="LL13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L14" runat="server" onclick="retrieve_id(this)" />
                                <label for="L14" id="LL14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L15" runat="server" onclick="retrieve_id(this)" />
                                <label for="L15" id="LL15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L16" runat="server" onclick="retrieve_id(this)" />
                                <label for="L16" id="LL16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L17" runat="server" onclick="retrieve_id(this)" />
                                <label for="L17" id="LL17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L18" runat="server" onclick="retrieve_id(this)" />
                                <label for="L18" id="LL18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L19" runat="server" onclick="retrieve_id(this)" />
                                <label for="L19" id="LL19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="L20" runat="server" onclick="retrieve_id(this)" />
                                <label for="L20" id="LL20"></label>
                            </span>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="M" runat="server" Height="59px" ForeColor="White">
                        <div id="leftM">
                            <asp:Label ID="MLabel" runat="server" Text="M"></asp:Label>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M1" runat="server" onclick="retrieve_id(this)" />
                                <label for="M1" id="MM1"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M2" runat="server" onclick="retrieve_id(this)" />
                                <label for="M2" id="MM2"></label>
                            </span>

                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M3" runat="server" onclick="retrieve_id(this)" />
                                <label for="M3" id="MM3"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M4" runat="server" onclick="retrieve_id(this)" />
                                <label for="M4" id="MM4"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M5" runat="server" onclick="retrieve_id(this)" />
                                <label for="M5" id="MM5"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M6" runat="server" onclick="retrieve_id(this)" />
                                <label for="M6" id="MM6"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M7" runat="server" onclick="retrieve_id(this)" />
                                <label for="M7" id="MM7"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M8" runat="server" onclick="retrieve_id(this)" />
                                <label for="M8" id="MM8"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M9" runat="server" onclick="retrieve_id(this)" />
                                <label for="M9" id="MM9"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M10" runat="server" onclick="retrieve_id(this)" />
                                <label for="M10" id="MM10"></label>
                            </span>
                        </div>
                        <div id="rightM">
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M11" runat="server" onclick="retrieve_id(this)" />
                                <label for="M11" id="MM11"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M12" runat="server" onclick="retrieve_id(this)" />
                                <label for="M12" id="MM12"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M13" runat="server" onclick="retrieve_id(this)" />
                                <label for="M13" id="MM13"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M14" runat="server" onclick="retrieve_id(this)" />
                                <label for="M14" id="MM14"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M15" runat="server" onclick="retrieve_id(this)" />
                                <label for="M15" id="MM15"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M16" runat="server" onclick="retrieve_id(this)" />
                                <label for="M16" id="MM16"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M17" runat="server" onclick="retrieve_id(this)" />
                                <label for="M17" id="MM17"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M18" runat="server" onclick="retrieve_id(this)" />
                                <label for="M18" id="MM18"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M19" runat="server" onclick="retrieve_id(this)" />
                                <label for="M19" id="MM19"></label>
                            </span>
                            <span class="seat eachSeat">
                                <asp:CheckBox ID="M20" runat="server" onclick="retrieve_id(this)" />
                                <label for="M20" id="MM20"></label>
                            </span>
                        </div>
                    </asp:Panel>
                </asp:Panel>


            </div>

            <div id="selectedSeatInfo">
                <asp:Label ID="SelectedTime" runat="server" Text="Time" CssClass="SelctedTime"></asp:Label>
                <div id="selectedTicektsDiv">
                    Tickets:
                    <span id="selectedTicekts">0</span>
                </div>
                <div id="ticketNoDiv">
                    Ticket Number:
                    <span id="ticketNo" runat="server"></span>
                </div>
                <div id="amountDiv">
                    ₹
                    <span id="amount" runat="server">0</span>
                   
                   
                </div>

                <div id="nextIcon">
                    <asp:LinkButton ID="CheckOut" runat="server" OnClick="Next_Click">
                    <iconify-icon icon="carbon:next-filled" style="color: #699bf7;" width="50" height="50"></iconify-icon>
                    </asp:LinkButton>
                </div>
            </div>


            <%--<asp:Label ID="Lable1" runat="server" Text="Label"></asp:Label>--%>
        </div>

    </form>
</body>
</html>
