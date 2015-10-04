<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="R3TabEntry.aspx.cs" Inherits="KeysightMOR.DataEntry.Responsiveness.R3TabEntry1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
     <style>
         .this_box
   {
            margin:30px 20% 30px 20%;
            align-content: center;
            background-color: #fff; 
            color: #000; 
            font-size: 16px;
            width: 60%; 
              height: auto;        
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;

   }
     h3
        {
            color: #fff;
            background-color: #6BB9F0;
            text-align: center;
            line-height: 40px;
            padding: 5px;
        }
     .selectCM_table td
     {
 
            background-color: #fff;
            text-overflow: initial;
            text-align: center;
			overflow: auto;
            align-content: center;
          
            border: none;
     }
     .this_table
 {
     width:95%; 
            background-color: #fff;
            text-overflow: initial;
            text-align: left;
			overflow: auto;
            margin-bottom: 10px;
            margin-top: 10px;
           margin-left: 20px;
            align-content: center;
            border-collapse: separate;
            border-spacing: 0px;
            border: none;
 }
     .cell_item
        {
            text-align:center;
            padding: 3px;
           
        }

        td {
            background-color: #fff;
            border: 1px #e7e7e7;
            border-style: solid;   
        }
        .cell_score
        {
            width: 80px;
            
        }
        .comm_link
        {
            color:#36D7B7;
            text-decoration:none;
        }
        .comm_link:after {
	content: '';
	display: block;
	margin: auto;
	height: 3px;
	width: 0px;
	background: transparent;
	transition: width .5s ease, background-color .5s ease;
}
.comm_link:hover:after {
	width: 120px;
	background: #1BBC9B;
    
}
.comm_link:hover
{
    color: #1BBC9B;
}
.auto-style1 {
            height: 46px;
            font-size: 18px;
            color: #2C3E50;
            border: none;
        }
     /*-----Pop Up Styles-----*/
        .overlay {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 50%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #fff;
             background-color: #D64541; 
            font-size: 20px; 
            height: 60px; 
            line-height: 60px; 
            text-align: center;
}
.popup .close {
  position: absolute;
  top: 0px;
  right: 5px;
  transition: all 200ms;
  font-size: 40px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: gray;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
  padding: 8px;
}
        .auto-style1 {
            height: 46px;
            font-size: 18px;
            color: #2C3E50;
             border: 1px #e7e7e7;
            border-style: solid;
            padding-left: 3px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
     <div class="this_box">       
        <h2 class="title">
           Responsiveness Data Entry
        </h2>

        <fieldset>
              
         <table class="selectCM_table">
                        <tr>

                            <td style="width:10%" class="cell_item">
                                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="dropdown">
                                    <asp:ListItem>CTD</asp:ListItem>
                                    <asp:ListItem>SA</asp:ListItem>
                                    <asp:ListItem>MBO</asp:ListItem>
                                    <asp:ListItem>OPD</asp:ListItem>
                                </asp:DropDownList>
                        
                            </td>
                        </tr>
                    </table>
  

            
                <table class="this_table">
                    <tr>
                        <td class="item-title">
                            <h3>R3</h3>
                        </td>
                        <td class="item-score">
                            <h3>Score</h3>
                        </td>
                        <td class="item-comment">
                            <h3>Comment</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                <table>
                                    <tr>
                                        <td class="item-description">
                                            a)
                                        </td>

                                        <td class="item-description">
                                            Improvement plans outlined and actioned within agreed timescale
                                        </td>
                                    </tr>
                                </table>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        </td>
                        <td class="cell_item">
                            <a href="#popup1"class="comm_link">Add a comment...</a>
                        </td>
                    </tr>
                    
                </table>

            <br />
            <div class="div_button">
                <asp:Button ID="Save1" runat="server" Text="Save as Draft"  CssClass="action-button hvr-radial-out"/>
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="action-button hvr-radial-out"/>
                &nbsp;&nbsp;
                            <asp:Button ID="Cancel1" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>
            </div>    
            </fieldset>
                </div>
        </center>
                
     <!---Pop Up (a)--->
                <div id="popup1" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </p>
                         <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                    </center>
                </div>
                </div>
    </div> 
</asp:Content>
