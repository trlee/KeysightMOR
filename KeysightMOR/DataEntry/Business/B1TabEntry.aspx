<%@ Page Title="Business (B1) Data Entry" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="B1TabEntry.aspx.cs" Inherits="KeysightMOR.DataEntry.Business.B1TabEntry1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         .this_box
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
	width: 80px;
	background: #1BBC9B;
    
}
.comm_link:hover
{
    color: #1BBC9B;
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
        .auto-style1 {
            height: 46px;
            font-size: 18px;
            color: #2C3E50;
        }
        .auto-style2 {
            width: 188px;
        }
    </style>

    <center>
    <div class="this_box">       
        <h2 class="title">
           Business Data Entry
        </h2>

        <fieldset>
              
         <table class="selectCM_table">
                        <tr>
                            <td style="width:50px; text-align:left;padding-left:30px">CM : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                            <td style="width:10%" class="cell_item">Division : <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </table>
                            <p>
                                <asp:Label ID="lblSubmitDbStatusTrue" runat="server" ForeColor="Green" Font-Size="Medium"></asp:Label>
                                <asp:Label ID="lblSubmitDbStatusFalse" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="lblValidMsg" runat="server" ForeColor="Green" Font-Size="Medium"></asp:Label>
                                <asp:Label ID="lblValidInMsg" runat="server" ForeColor="Red" Font-Size="Medium"></asp:Label>
                            </p>
            <asp:Table ID="Table1" CssClass="this_table" runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="head"><h3>B1</h3></asp:TableCell>
                    <asp:TableCell Width="120px"><h3>Score</h3></asp:TableCell>
                    <asp:TableCell CssClass="cell_score"><h3>Comment</h3></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" CssClass="auto-style1">1) Corporate Compliances</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table2" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">i)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">
                                    Ability to follow preferred supply paths, including distributor and 3rd party supply channels. This includes following the Keysight negotiated business awards where multiple suppliers are listed on the AVL.
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B1_1_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="B1_1_1" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment1" NavigateUrl="#popup1" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table3" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">ii)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">
                                    Adhere to standard setting requirements (timeline & data accuracy)
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B1_1_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="B1_1_2" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment2" NavigateUrl="#popup2" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>    
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table4" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">iii)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">
                                    Quarterly PPV INV Assessment
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B1_1_3" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator9" ControlToValidate="B1_1_3" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment9" NavigateUrl="#popup9" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>    
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="head"><h3>B2</h3></asp:TableCell>
                    <asp:TableCell Width="120px"><h3>Score</h3></asp:TableCell>
                    <asp:TableCell CssClass="cell_score"><h3>Comment</h3></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" CssClass="auto-style1">a) Reporting</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>i) AP/AR</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B2_1_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator3" ControlToValidate="B2_1_1" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment3" NavigateUrl="#popup3" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>ii) ECN &nbsp; <a href="#" title="0-3 cases=Y;" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B2_1_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator4" ControlToValidate="B2_1_2" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>                       
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment4" NavigateUrl="#popup4" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>iii) E&O/Aging inventory & inventory profiling report &nbsp; <a href="#" title="1~2 cases=P; >2 cases=N;" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B2_1_3" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator5" ControlToValidate="B2_1_3" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:HyperLink ID="Comment5" NavigateUrl="#popup5" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>iv) PPV monthly report &nbsp; <a href="#" title="+PPV not return to Keysight= N; Late PPV returns= P; Resubmit non approve PPV claims= N; Data error submission= N" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B2_1_4" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator6" ControlToValidate="B2_1_4" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:HyperLink ID="Comment6" NavigateUrl="#popup6" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>v) Stock On Hand Revaluation report (inclusive quarterly PPV report)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B2_1_5" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator7" ControlToValidate="B2_1_5" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:HyperLink ID="Comment7" NavigateUrl="#popup7" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="3" CssClass="auto-style1">b) Quotation</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>i) Production Cost Model accuracy and transparency. &nbsp; <a href="#" title="1 case= P; >1 =N" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="B2_2_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator8" ControlToValidate="B2_2_1" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:HyperLink ID="Comment8" NavigateUrl="#popup8" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />   

            <div class="div_button">
                <asp:Button ID="Save_Draft" runat="server" Text="Save as Draft"  CssClass="action-button hvr-radial-out" OnClick="Save_Draft_Click"/>
            &nbsp;&nbsp;
                <asp:Button ID="Save_Submit" runat="server" Text="Submit"  CssClass="action-button hvr-radial-out" OnClick="Save_Submit_Click"/>
                &nbsp;&nbsp;
                            <asp:Button ID="Cancel1" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>
            </div>
                        
                   
            </fieldset>
                </div>
        </center>
                    <!---Pop Up (i)--->
                <div id="popup1" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B1_1_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b1_1_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b1_1_1_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b1_1_1_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b1_1_1_comment_Click" />
                    </center>
                </div>
                </div>
               
    <div id="popup2" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B1_1_2C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b1_1_2_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b1_1_2_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b1_1_2_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b1_1_2_comment_Click"/>
                    </center>
                </div>
     </div>
     <div id="popup3" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B2_1_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b2_1_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b2_1_1_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b2_1_1_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b2_1_1_comment_Click" />
                    </center>
                </div>
     </div>
     <div id="popup4" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B2_1_2C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload4" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b2_1_2_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b2_1_2_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b2_1_2_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b2_1_2_comment_Click" />
                    </center>
                </div>
      </div>
      <div id="popup5" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B2_1_3C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload5" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b2_1_3_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b2_1_3_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b2_1_3_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b2_1_3_comment_Click" />
                    </center>
                </div>
     </div>
     <div id="popup6" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B2_1_4C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload6" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b2_1_4_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b2_1_4_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b2_1_4_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b2_1_4_comment_Click" />
                    </center>
                </div>
     </div>
     <div id="popup7" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B2_1_5C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload7" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b2_1_5_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b2_1_5_comment_Click" />
                        <asp:Button runat="server" ID="cancel_b2_1_5_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b2_1_5_comment_Click" />
                    </center>
                </div>
      </div>
      <div id="popup8" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B2_2_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload8" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b2_2_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b2_2_1_comment_Click"/>
                        <asp:Button runat="server" ID="cancel_b2_2_1_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b2_2_1_comment_Click" />
                    </center>
                </div>
      </div>
    <div id="popup9" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		<h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="B1_1_3C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="FileUpload9" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_b1_1_3_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_b1_1_3_comment_Click"/>
                        <asp:Button runat="server" ID="cancel_b1_1_3_comment" Text="Cancel" widht="80px" Height="20px" OnClick="cancel_b1_1_3_comment_Click" />
                    </center>
                </div>
      </div>    
</asp:Content>
