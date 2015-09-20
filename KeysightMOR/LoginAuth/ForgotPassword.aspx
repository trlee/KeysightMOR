<%@ Page Title="Forgot Password | Keysight Technologies" Language="C#" MasterPageFile="~/PreLoginTemplate.master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="KeysightMOR.Login.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/LoginAuth/ForgotPassword.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="box_forgotPassw">       
        <h2>FORGOT PASSWORD</h2>

        <fieldset>
            <table>
                <tr>
                    <td>
                        Current email: <asp:Label ID="lblCurrentEmail" runat="server" Font-Bold="true"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        Please enter your email in the space below.
                        <br />
                        We will send you a link to reset your password. 
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox CssClass="txtbox" ID="txtEmail" runat="server" placeholder="Email" Font-Size="Medium"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvtxtEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="You must enter your email address" ForeColor="Red" Font-Bold="true" Font-Size="Small"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter the email in correct format (johnsmith@example.com)" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Bold="true" Font-Size="Small"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="send_button" runat="server" Text="Send" CssClass="send_button hvr-radial-out"></asp:Button>

                        &nbsp; &nbsp; &nbsp; 
                        <asp:Button ID="cancel_button" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/SignIn.aspx"></asp:Button>  
                    </td>
                </tr>
            </table>                  
        </fieldset>
    </div>
        </center>
</asp:Content>

