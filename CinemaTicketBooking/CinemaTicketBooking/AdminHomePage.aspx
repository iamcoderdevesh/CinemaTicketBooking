<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="CinemaTicketBooking.AdminHomePage" MasterPageFile="~/LynxCinemaAdmin.Master" %>
<asp:Content ContentPlaceHolderID="head" runat="server" ID="Content1"></asp:Content>
<asp:Content ContentPlaceHolderID="AdminMasterPage" runat="server" ID="Content2">
  <link rel="stylesheet" href="css/AdminHomePage.css" />
<div id="PageFullBody">
  <div class="loginFrame">
      <asp:Image ID="Image1" runat="server" CssClass="adminImage" ImageUrl="~/images/personal-security.png" Height="100px" Width="100px" />
      <asp:Label ID="Label1" runat="server" Text="Admin Login" CssClass="AdminLoginText"></asp:Label>
      <div class="username">
          <asp:TextBox ID="AdminUserName" runat="server" placeholder="Username" CssClass="UsernameTextBox"></asp:TextBox><br />
          <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ErrorMessage="Enter Username" ControlToValidate="AdminUserName" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
       <div class="Password">
         
          <asp:TextBox ID="AdminPasswordTextBox" runat="server" placeholder="Password" CssClass="PasswordTextBox" TextMode="Password"></asp:TextBox><br />
               <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Enter Password" ControlToValidate="AdminPasswordTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
      <asp:Button ID="SubmitLogin" runat="server" Text="Submit" CssClass="submitButton" OnClick="SubmitLogin_Click" />
  </div>

</div>
</asp:Content>

