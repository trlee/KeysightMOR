<%@ Page Title="" Language="C#" MasterPageFile="~/PreLogin_Template.Master" AutoEventWireup="true" CodeBehind="HomePage(PreLogin).aspx.cs" Inherits="EP_GUI.HomePage_PreLogin_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        
        .box_login
        {          
            position: absolute;
            left: 40%;            
            top: 15%; 
            width: 400px;
            overflow: auto;
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;
       }
        fieldset
        {
            background-color: #fff;
            border: none;
            padding: 20px 10px 10px 10px;
        }

        h2
        {
            color:#fff; 
            background-color: #d32f2f; 
            font-size: 32px; 
            letter-spacing: 1px; 
            height: 100px; 
            line-height: 100px; 
            text-align: center;
        }

/*----------TextBox-------------*/
        .txtbox
        {
              padding: 10px;
              border: solid 5px #c9c9c9;
              transition: border 0.3s;
        }

        .txtbox:focus
         {
                border-radius: 20px 20px;
                border: solid 5px #808080;
        }

/*-------------------------------------------*/

/* ------------------- Buttons --------------*/
.buttons
{
    padding: 7px 15px 10px 15px;               
    font-size: 24px;
    font-family: 'Lato', sans-serif;
    color: #e90029;
    border: solid 5px #e90029;
    text-decoration: none;
    background-color: transparent;
    cursor: pointer; 
}

.buttons:hover 
{   
    border-radius: 20px 20px;  
           
}

.hvr-radial-out {
  display: inline-block;
  vertical-align: middle;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 0);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -moz-osx-font-smoothing: grayscale;
  position: relative;
  overflow: hidden;
  background: #fff;
  -webkit-transition-property: color;
  transition-property: color;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
}
.hvr-radial-out:before {
  content: "";
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: #fff;
  border-radius: 100%;
  -webkit-transform: scale(0);
  transform: scale(0);
  -webkit-transition-property: transform;
  transition-property: transform;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease-out;
  transition-timing-function: ease-out;
}

.hvr-radial-out:hover, .hvr-radial-out:focus, .hvr-radial-out:active {
  color: #fff;
  background: #e90029;
}

.hvr-radial-out:hover:before, .hvr-radial-out:focus:before, .hvr-radial-out:active:before {
  -webkit-transform: scale(2);
  transform: scale(2);
}
/*------------------------------------------*/

.forgot_pass_msg a 
{
    color: blue; 
    cursor: pointer;
     font-family: "Lato Light", sans-serif;
     font-size: 20px;
     text-decoration: none;
}
.forgot_passw_msg
{
    font-family: "Lato Light", sans-serif;
    font-size: 20px;
    color: #000;
}
    </style>
    <center>
    <div class="box_login">
        <h2>
            LOG IN
        </h2>

            <fieldset>
                <p>
                    <asp:TextBox CssClass="txtbox" ID="txtbox_email" runat="server" placeholder="Email" Font-Size="Medium"></asp:TextBox> 
                </p>

                <p>
                    <!--validators-->
                    
                   
                </p>
                
                <p>
                    <asp:TextBox CssClass="txtbox" ID="txtbox_passw" runat="server" placeholder="Password" Font-Size="Medium" TextMode="Password"></asp:TextBox>        
                </p>

                <p>
                    <!--validators----->
                </p>

                <p class="forgot_passw_msg">
                    Forgot your password? Click <a href="ForgotPassword.aspx"> here </a>.  
                </p>
                <p>
                    <asp:Button ID="login_button" runat="server" Text="Log In" CssClass="buttons hvr-radial-out"></asp:Button>
                </p>


            </fieldset>
       
    </div>
     </center>
</asp:Content>
