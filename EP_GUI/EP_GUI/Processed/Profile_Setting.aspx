<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Profile_Setting.aspx.cs" Inherits="EP_GUI.Profile_Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css"/>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style>
    .content {
        width: 90%;
    }
        .mainbox
        {
            position:absolute; 
            left: 35%;
            top: 140px;
            background-color: #fff; 
            color: #000; 
            font-size: 24px;
            width: 600px;
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;

        }
        fieldset
        {
            background-color: #fff;
            border: none;
            margin: auto;
            color: #000;
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
</style>

    <div class="mainbox">
	<h2> 
		PROFILE SETTINGS
	</h2>
	<fieldset>

    <p style="text-align:center">Current email: abc_123@gmail.com</p>        
  <div data-role="main" class="content">
    <div data-role="collapsible">
      <h1>Edit email</h1>
      <p>
      	New email:

          <asp:TextBox CssClass="txtbox" ID="txtbox_newemail" runat="server"  Font-Size="Medium"></asp:TextBox> 
        <!-- Add regular expression vaildators! -->  
      	<asp:Button ID="change_button" runat="server" Text="Change" CssClass="buttons hvr-radial-out"></asp:Button>
      </p>
    </div>



     <div data-role="collapsible">
      <h1>Edit Password</h1>
      <p>
      	Old password:
<asp:TextBox CssClass="txtbox" ID="txtbox_oldpassw" runat="server" Font-Size="Medium"></asp:TextBox> 
      	New password:
<asp:TextBox CssClass="txtbox" ID="txtbox_newpassw" runat="server" Font-Size="Medium"></asp:TextBox> 
      	Confirm new password:
<asp:TextBox CssClass="txtbox" ID="txtbox_confirmnewpassw" runat="server" Font-Size="Medium"></asp:TextBox> 
      	<!-- Add Validators to compare and match both new and confirm new passw-->
      	<asp:Button ID="Button1" runat="server" Text="Change" CssClass="buttons hvr-radial-out"></asp:Button>

      </p>
    </div>
      </div>
    </fieldset>
</div> 
</asp:Content>
