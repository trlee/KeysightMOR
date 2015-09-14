<%@ Page Title="Forgot Password | Keysight Technologies" Language="C#" MasterPageFile="~/PreLoginTemplate.master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="KeysightMOR.Login.ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">

        .box_forgotPassw
        {
            margin:30px auto 30px auto; 
            background-color: #fff; 
            color: #000; 
            font-size: 16px;
            width: 600px; 
                      
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
            font-size: 20px; 
            
            height: 60px; 
            line-height: 60px; 
            text-align: center;
        }
        /*-----------TextBoxes----------*/
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
        /*---------------------------------------*/

        /* ------------------- Buttons --------------*/
        .cancel_button
        {
            padding: 7px 15px 10px 15px;               
            font-size: 16px;
            font-family: 'Lato', sans-serif;
            color: #fff;
            border: solid 5px #e90029;
            text-decoration: none;
            background-color: #e90029;
            cursor: pointer; 
        }

        .cancel_button:hover
        {
            background-color: #b71c1c;
            border-color: #b71c1c;
        }
        .send_button
        {
            padding: 7px 15px 10px 15px;               
            font-size: 16px;
            font-family: 'Lato', sans-serif;
            color: #e90029;
            border: solid 5px #e90029;
            text-decoration: none;
            background-color: transparent;
            cursor: pointer; 
        }

        .send_button:hover 
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
 p
{
    padding-bottom: 15px;
}
    </style>

    <center>
    <div class="box_forgotPassw">       
        <h2>
           
            FORGOT PASSWORD
        </h2>

        <fieldset>
            <p>
Please enter your email in the space below.
            <br />
             We will send you a link to reset your password. 
            </p>
            
            
            <p>
                         <asp:TextBox CssClass="txtbox" ID="txtbox_email" runat="server" placeholder="Email" Font-Size="Medium"></asp:TextBox>
            </p>

            <p>
                <!-- Add validators---->
            </p>
        
            <p>
               
                <asp:Button ID="send_button" runat="server" Text="Send" CssClass="send_button hvr-radial-out"></asp:Button>

                &nbsp; &nbsp; &nbsp; 
                     <asp:Button ID="cancel_button" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/SignIn.aspx"></asp:Button>        
            </p>
                   
        </fieldset>
    </div>
        </center>
</asp:Content>

