<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="under_development.aspx.cs" Inherits="CinemaTicketBooking.WebForm2" MasterPageFile="~/LynxCinema.Master"%>

<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
        <style>

        .container {
            height: 85vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: #1b1b1b;
            background-color: #1b1b1bf7;
        }
        .heading {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        .animation-gears {
                display: flex;
                flex-direction: row;
                justify-content: center;
                align-items: center;
                /* position: relative; */
                margin-bottom: 50px;
                margin-top: 135px;
                /* top: 17px; */
        }

        #gear1, #gear2, #gear3 {
                color: #ffce26;
                /* display: block; */
                /* float: left; */
                /* position: absolute; */
                font-size: 135px;
        }
            
        #gear1 {
                position: relative;
                /* top: 45px; */
                left: 42px;
        }
            
        #gear2 {
                position: relative;
                /* left: 60px; */
                bottom: 100px;
        }

        #gear3 {
                position: relative;
                /* top: 45px; */
                right: 42px;
        }

        .spin {
            -webkit-animation:spin 4s linear infinite;
            -moz-animation:spin 4s linear infinite;
            animation:spin 4s linear infinite;
        }

        .spin-back {
            -webkit-animation:spin-back 4s linear infinite;
            -moz-animation:spin-back 4s linear infinite;
            animation:spin-back 4s linear infinite;
        }

        @-moz-keyframes spin { 100% { -moz-transform: rotate(360deg); } }
        @-webkit-keyframes spin { 100% { -webkit-transform: rotate(360deg); } }
        @keyframes spin { 100% { -webkit-transform: rotate(360deg); transform:rotate(360deg); } }

        @-moz-keyframes spin-back { 100% { -moz-transform: rotate(-360deg); } }
        @-webkit-keyframes spin-back { 100% { -webkit-transform: rotate(-360deg); } }
        @keyframes spin-back { 100% { -webkit-transform: rotate(-360deg); transform:rotate(-360deg); } }
        
        </style>

    <div class="container">
    <div class="heading">
        <h1>This Page is under Developement</h1>
        <h2>Coming Soon!!!</h2>
    </div>
        <div class="animation-gears">
            <i id="gear1" class="fa-solid fa-gear spin"></i>
            <i id="gear2" class="fa-solid fa-gear spin-back"></i>
            <i id="gear3" class="fa-solid fa-gear spin"></i>
        </div>
        </div>
</asp:Content>



