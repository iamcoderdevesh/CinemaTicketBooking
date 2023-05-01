<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="Registration.Verification" MasterPageFile="~/LynxCinema.Master"%>
<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">



    <link href="css/verification.css" rel="stylesheet" />

    <section class="verification-section">
        <div class="container">

            <asp:MultiView ID="MultiView1" runat="server">

                <asp:View ID="View1" runat="server">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="upperlbl"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Verification Code : " CssClass="vercode"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="4" CssClass="inputcode"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" CssClass="lowerlbl"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back" CssClass="backbtn" />
         
                    <asp:Button ID="Button1" runat="server" Text="Verify" OnClick="Button1_Click" CssClass="verifybtn" />
                    <br />
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Welcome to the LYNX Cinema!" CssClass="toplbl"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="" CssClass="msglbl"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Continue to login" OnClick="Button2_Click" CssClass="continuebtn" />
                    <br />
                    <br />
                </asp:View>
            </asp:MultiView>
        </div>
    </section>

</asp:Content>
