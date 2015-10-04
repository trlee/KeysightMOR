<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="R1TabEntry.aspx.cs" Inherits="KeysightMOR.DataEntry.Responsiveness.R1TabEntry1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="../../Assets/Stylesheets/DataEntry/R1TabEntry.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
         
    </style>

    <center>
    <div class="this_box">       
        <h2 class="title">
           Responsiveness Data Entry
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
                    <asp:TableCell><h3>R1</h3></asp:TableCell>
                    <asp:TableCell><h3>Score</h3></asp:TableCell>
                    <asp:TableCell><h3>Comment</h3></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table2" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">a)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">How many cases of delay in responds that you experienced within the month of under review? (Response within 1 business day min) &nbsp; <a href="#" title="0 case=4; 1-2 case=2; >2 case=0;" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>                                
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R1_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="R1_1" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment1" NavigateUrl="#popup1" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table3" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">b)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">No/delay in response due to unavailability of backup? &nbsp; <a href="#" title="0 case=4; 1-2 case=2; >2 case=0;" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R1_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="R1_2" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment2" NavigateUrl="#popup2" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table4" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">c)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Proactively communicate process changes, critical issues or potential problems internally/with suppliers/with Keysight accurately in a timely manner &nbsp; <a href="#" title="0 case=4; 1-2 case=2; >2 case=0;" style="font-size:xx-small; color:blue;">(?)</a></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R1_3" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator3" ControlToValidate="R1_3" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink  ID="Comment3" NavigateUrl="#popup3" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>              
                <asp:TableRow>
                    <asp:TableCell ><h3>R2</h3></asp:TableCell>
                    <asp:TableCell><h3>Score</h3></asp:TableCell>
                    <asp:TableCell><h3>Comment</h3></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table5" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">a)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Proactively manages shortages process  &nbsp; <a href="#" title="Zero AOS cases=4; 1~2 AOS cases (Exclude big deal)=2; >2 AOS cases (Exclude big deal)=0;" style="font-size:xx-small; color:blue;">(?)</a> &nbsp; <a href="#" title="Zero AOS cases=4; 1~2 AOS cases =2; >2 AOS cases =0;" style="font-size:xx-small; color:blue;">(For MMA cases only)</a></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator4" ControlToValidate="R2_1" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment4" NavigateUrl="#popup4" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style1" ColumnSpan="3">
                        b) Reacts appropriately to increases/decreases in Keysight Demand in a timely manner.
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table6" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">i)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Fulfillment of LLM Safety Stock</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_2_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator5" ControlToValidate="R2_2_1" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment5" NavigateUrl="#popup5" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table7" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">ii)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Fulfillment of FG Safety Stock</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_2_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator6" ControlToValidate="R2_2_2" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment6" NavigateUrl="#popup6" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="auto-style1" ColumnSpan="3">c) Provides timely monthly reports</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table8" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">i)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">AP/AR</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_3_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator7" ControlToValidate="R2_3_1" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment7" NavigateUrl="#popup7" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table9" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">ii)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Inventory</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_3_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator8" ControlToValidate="R2_3_2" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment8" NavigateUrl="#popup8" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table10" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">iii)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Inventory</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_3_3" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator9" ControlToValidate="R2_3_3" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment9" NavigateUrl="#popup9" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table11" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">iv)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">PPV monthly report</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_3_4" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator10" ControlToValidate="R2_3_4" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment10" NavigateUrl="#popup10" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table12" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">v)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Stock On Hand revaluation report (inclusive quarterly PPV report)</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_3_5" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator11" ControlToValidate="R2_3_5" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment11" NavigateUrl="#popup11" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Table ID="Table13" runat="server">
                            <asp:TableRow>
                                <asp:TableCell CssClass="item-description">vi)</asp:TableCell>
                                <asp:TableCell CssClass="item-description">Reports related to your area/portfolio</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table> 
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="R2_3_6" runat="server" CssClass="txtbox" Width="50"></asp:TextBox><br />
                        <asp:RangeValidator ID="RangeValidator12" ControlToValidate="R2_3_6" MinimumValue="0" MaximumValue="4" Type="Double" runat="server" ErrorMessage="Enter a value from 0 to 4" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:HyperLink ID="Comment12" NavigateUrl="#popup12" CssClass="comm_link" runat="server">Add a comment...</asp:HyperLink>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lblSubmitDbStatus" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>          
            <br />
            <div class="div_button">
                <asp:Button ID="SaveDraft" runat="server" Text="Save as Draft"  CssClass="action-button hvr-radial-out" OnClick="SaveDraft_Click" CausesValidation="false"/>
            &nbsp;&nbsp;
                <asp:Button ID="SaveSubmit" runat="server" Text="Submit"  CssClass="action-button hvr-radial-out" OnClick="SaveSubmit_Click"/>
                &nbsp;&nbsp;
                            <asp:Button ID="btnCancelEntry" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="btnCancelEntry_Click"/>
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
                        <asp:TextBox ID="R1_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R1_1A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r1_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r1_1_comment_Click"/>&nbsp
                        
                    </center>
                </div>
                </div>

    <!---Pop Up (b)--->
                <div id="popup2" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		            <h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="R1_2C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R1_2A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r1_2_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r1_2_comment_Click"/>&nbsp
                    </center>
                </div>
                </div>

    <!---Pop Up (c)--->
                <div id="popup3" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		            <h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="R1_3C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R1_3A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r1_3_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r1_3_comment_Click"/>&nbsp
                    </center>
                </div>
                </div>
                
    <!---Pop Up (d)--->                

                <div id="popup4" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		            <h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="R2_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_1A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_1_comment_Click"/>&nbsp
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
                        <asp:TextBox ID="R2_2_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_2_1A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_2_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_2_1_comment_Click"/>&nbsp
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
                        <asp:TextBox ID="R2_2_2C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_2_2A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_2_2_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_2_2_comment_Click"/>&nbsp;
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
                        <asp:TextBox ID="R2_3_1C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_3_1A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_3_1_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_3_1_comment_Click"/>&nbsp
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
                        <asp:TextBox ID="R2_3_2C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_3_2A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_3_2_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_3_2_comment_Click"/>&nbsp
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
                        <asp:TextBox ID="R2_3_3C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_3_3A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_3_3_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_3_3_comment_Click"/>&nbsp
                    </center>
                </div>
                </div>

                <div id="popup10" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		            <h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="R2_3_4C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_3_4A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_3_4_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_3_4_comment_Click"/>&nbsp;
                    </center>
                </div>
                </div>

                <div id="popup11" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		            <h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="R2_3_5C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_3_5A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_3_5_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_3_5_comment_Click"/>&nbsp;
                    </center>
                </div>
                </div>

                <div id="popup12" class="overlay">
	            <div class="popup">

                    <a class="close" href="#">×</a>
                    <br />
		            <h2 >Add a Comment</h2>
                    <center><p class="title-description">Add a comment and/or attachment</p>
		
                    <p>
                        <asp:TextBox ID="R2_3_6C" runat="server" CssClass="textbox-comment" TextMode="MultiLine"></asp:TextBox>
                    </p>
		
                    
                    <p>
                        <asp:FileUpload ID="R2_3_6A" runat="server" />
                    </p>
                        <p>Maximum up to 5 files (Total size not more than 10MB)</p>
                        <asp:Button runat="server" ID="submit_r2_3_6_comment" Text="Submit" Width="80px" Height="20px" OnClick="submit_r2_3_6_comment_Click"/>&nbsp
                    </center>
                </div>
                </div>

</asp:Content>
