<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Registration.Registration" MasterPageFile="~/LynxCinema.Master"%>
<asp:Content ContentPlaceHolderID="head" runat="server"  ID="Content2"></asp:Content>
<asp:Content ContentPlaceHolderID="LynxMasterPage" runat="server"  ID="Content1">

    
    <link href="css/registration.css" rel="stylesheet" />



    <section class="Registration-section">
        <div class="container">
            <asp:Label ID="Label1" runat="server" Text="Register Here!" CssClass="title"></asp:Label>
            <table class="table">
                <tr class="tr">
                    <td class="td"><asp:Label ID="Label2" runat="server" Text="Full Name :" CssClass="fullname"></asp:Label></td>
                    <td class="td"> <asp:TextBox ID="TextBox1" runat="server" MaxLength="50" TabIndex="1" CssClass="inputname"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is required" ControlToValidate="TextBox1" CssClass="rf1"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tr">
                    <td class="td"><asp:Label ID="Label8" runat="server" Text="Phone Number :" CssClass="phoneno"></asp:Label></td>
                    <td class="td"> <asp:TextBox ID="TextBox5" runat="server" MaxLength="50" TabIndex="2" CssClass="inputname"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is required" ControlToValidate="TextBox5" CssClass="rf1"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tr">
                    <td class="td"><asp:Label ID="Label3" runat="server" Text="Email Id :" CssClass="email"></asp:Label></td>
                    <td class="td"> <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" TabIndex="3" CssClass="inputemail"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="This Field is required" ControlToValidate="TextBox2" CssClass="rf2"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tr">
                    <td class="td"><asp:Label ID="Label4" runat="server" Text="Password :" CssClass="password1"></asp:Label></td>
                    <td class="td"> <asp:TextBox ID="TextBox3" runat="server"  TabIndex="4" CssClass="inputpassword"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox3" CssClass="rf3"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tr">
                    <td class="td"><asp:Label ID="Label5" runat="server" Text="Confirm Password :" CssClass="password2"></asp:Label></td>
                    <td class="td"> <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" ToolTip="Type same password as above" TabIndex="5" CssClass="inputpassword2"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="This field is required" ControlToValidate="TextBox4" CssClass="rf4"></asp:RequiredFieldValidator></td> 
                </tr>
            </table>
                       
            <asp:CompareValidator runat="server" ErrorMessage="Both Password must be same" ControlToCompare="TextBox3" ControlToValidate="TextBox4" SetFocusOnError="True" CssClass="compval"></asp:CompareValidator>
            
            <br />
            <asp:Label ID="Label7" runat="server" CssClass="errorinfo"></asp:Label>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must contain: 1 Alphabet, Number & Symbol and atleast 8 characters" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&amp;])[A-Za-z\d$@$!%*?&amp;]{8,}" CssClass="regex"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Next" CssClass="nextbtn" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label6" runat="server" Text="Already have an account?" CssClass="lastline"></asp:Label><asp:HyperLink ID="HyperLink1" runat="server" CssClass="hyperlink" NavigateUrl="~/Homepage.aspx">Login</asp:HyperLink>
        </div>
    </section>

</asp:Content>
