<%@ Page Title="Business User Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessUserViewEdit.aspx.cs" Inherits="KeysightMOR.ControlPanel.BusinessUserViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         .confB_box
   {
            margin:30px 10% 30px 10%;
            align-content: center;
            background-color: #fff; 
            color: #000; 
            font-size: 16px;
            width: 80%; 
              height: auto;        
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;

   }
        .buve_table
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
 }

        td {
            background-color: #fff;
            border: 1px #e7e7e7;
            border-style: solid;
            
        }


        .cell_num
        {
            text-align:center;
        }

        .div_button
        {
            text-align: right;
        }
        h3
        {
            color: #fff;
            background-color: #6BB9F0;
            text-align: center;
            line-height: 30px;
            height: 30px;
            font-size:18px;
        }
         .edit_link
        {
            color:#36D7B7;
            text-decoration:none;
        }
        .edit_link:after {
	content: '';
	display: block;
	margin: auto;
	height: 3px;
	width: 0px;
	background: transparent;
	transition: width .5s ease, background-color .5s ease;
}
.edit_link:hover:after {
	width: 50px;
	background: #1BBC9B;
    
}
.edit_link:hover
{
    color: #1BBC9B;
}

/*-----PopUp styles----------*/
        .edituser_table
        {
           width:95%; 
            background-color: #fff;

            text-align: left;
			overflow: auto;
            margin-bottom: 10px;
            margin-top: 8px;
           margin-left: 22px;
            align-content: center;
            border-collapse: separate;
            border-spacing: 0px;
           
        }
.edituser_table td
{
    border:none;
}
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
  width: 900px;
  position: relative;
  transition: all .5s ease-in-out;
  
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

.td_h3
{
    width: 350px;
    text-align: center;
}
.popupButton
{
   
font-family: 'Lato', sans-serif;
font-size: 16px;
font-weight: 500;
            color: #fff;  
            background-color:#36D7B7;  
            border-color: #36D7B7;     
            text-decoration: none;
            cursor: pointer; 
         width:60px;
          height:40px ;  
          padding: 5px 5px 5px 5px;
}
.list_box
{
    font-family: 'Lato', sans-serif;
font-size: 16px;
border: solid #BDC3C7 2px;
}

.cell_buttons
{
    padding-left: 20px; 
    padding-right: 20px;
    text-align: center;
}
    </style>
    <center>
    <div class="confB_box">       
        <h2>
           
           Evaluation Settings > Business
        </h2>

        <fieldset>
            

                <div class="description">
                    <center><p class="title-description">View or edit current users for Business</p></center>
                    
                </div>
    
                
                <table class="buve_table">
                    <tr>
                        <td><h3>B1</h3></td>
                        <td><h3>Corporate Compliances</h3></td>
                        <td><h3 >Assigned Users</h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2" class="cell_num">1</td>
                        <td>a) Ability to follow preferred supply paths, including distributor and 3rd party supply channels. This includes following the Keysight negotiated business awards where multiple suppliers are listed on the AVL</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                     <tr>
                        <td>b) Adhere to standard setting requirements (timeline & data accuracy)</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link"> [Edit]</a></td>
                    </tr>
                    <tr>
                        <td><h3>B2</h3></td>
                        <td><h3>Data Integrity / Accuracy</h3></td>
                        <td><h3>Assigned Users</h3></td>
                    </tr>
                    <tr>
                        <td rowspan="5" class="cell_num">1 <br />Reporting</td>
                        <td>a) AP/AR</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>b) ECN</td>
                       <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>c) E&O/Aging inventory & inventory profiling report</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>d) PPV monthly report</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>e) Stock On Hand Revaluation report (Inclusive quarterly PPV report)</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td class="cell_num">2 <br />Quotation</td>
                        <td>Production Cost Model accuracy and transparency</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                </table> <br />
               

            <div class="div_button">
                <asp:Button ID="Save1" runat="server" Text="Save"  CssClass="action-button hvr-radial-out"/>
            &nbsp;&nbsp;
                            <asp:Button ID="Cancel1" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/BusinessUser.aspx"/>
            </div>
                            

        </fieldset>
        
    </div> 

        </center>  
           <!----POP UP--->
            <div id="editdialog" class="overlay">
                <div class="popup">
                    <a class="close" href="#">×</a>
                    <br />
                    <h2 >Edit Users</h2>
		
                <table class="edituser_table">
                    <tr>
                        <td align="center" class="td_h3">
                            <h3 >Available Users</h3>
                        </td>
                        <td></td>
                        <td align="center" class="td_h3">
                            <h3 >Assigned Users</h3>
                        </td>
                    </tr>
                    <tr>
                        <td><asp:ListBox ID="ListBox1" runat="server" Height="200px" Width="350px" CssClass="list_box">
                            <asp:ListItem>Art McLean (CTD)</asp:ListItem>
                            <asp:ListItem>Teoh TC (CTD)</asp:ListItem>
                            <asp:ListItem>HENG SY (CTD)</asp:ListItem>
                            <asp:ListItem>Art McLean (SA)</asp:ListItem>
                            <asp:ListItem>Lim Eng Chuan (SA)</asp:ListItem>
                            <asp:ListItem>Tan Hian See (SA)</asp:ListItem>
                            <asp:ListItem>Wong Weng Yew (SA)</asp:ListItem>
                            </asp:ListBox></td>
                        <td class="cell_buttons" >
                            <p>
                                <asp:Button ID="Button1" runat="server" Text=">>"  CssClass="popupButton"/>
                            </p>
                            <p>
                                <asp:Button ID="Button2" runat="server" Text="<<" CssClass="popupButton"/>
                            </p>
                           <p>
                                <asp:Button ID="Save" runat="server" Text="Save" CssClass="popupButton"/>
                           </p>
                           <p>
                               <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="popupButton"/>
                           </p>
                            
                        </td>
                        <td><asp:ListBox ID="ListBox2" runat="server"  Height="200px" Width="350px" CssClass="list_box">
                             <asp:ListItem>Lim Eng Chuan (MBO)</asp:ListItem>
                            <asp:ListItem>Tan Hian See (MBO)</asp:ListItem>
                            <asp:ListItem>Wong Bee (MMA)</asp:ListItem>
                            <asp:ListItem>Tan Chin Sian (MMA)</asp:ListItem>
                            <asp:ListItem>Lim Kin Moon (MMA)</asp:ListItem>
                            <asp:ListItem>Leong Wai Meng (MMA)</asp:ListItem>

                        </asp:ListBox></td>
                    </tr>
                </table>
            </div> 
                </div>  
                      
</asp:Content>
