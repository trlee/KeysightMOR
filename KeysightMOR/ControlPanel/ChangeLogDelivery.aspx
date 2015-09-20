<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChangeLogDelivery.aspx.cs" Inherits="KeysightMOR.ChangeLogDelivery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
          .container
        {
            margin: 5px 50px 50px 50px;
        }
     .this_box
   {
            margin:30px 10% 30px 10%;
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
 }

        td {
            background-color: #fff;
            border: 1px #e7e7e7;
            border-style: solid;
           
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

        .dropdown
        {
            width: 160px;
        }

         .back_btn
        {
           padding: 3px 3px 3px 3px;
            margin-top: 20px;
            margin-left: 50px;                   
            text-align: center;
            display:inline-block;            
            font-size: 15px;
            font-family: 'Lato', sans-serif;
            color: #fff;
            background-color: #22A7F0;
            border: solid 5px #22A7F0;
            text-decoration: none;            
            cursor: pointer; 
            vertical-align: middle;     
        }
        .back_btn:hover
        {
            background-color: #3498DB;
            border: solid 5px #3498DB;
        }
    </style>

    
     <asp:Button ID="Button1" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ControlPanel/ChangeLogSelectCM.aspx"/>  
    <div class="container">
     <center>
    <div class="this_box">       
        <h2>
           Change Log <!--- for Delivery *temporary*--->
        </h2>
        
        <fieldset>
             <div class="description">
                    <center><p class="title-description">Latest changes occured for Delivery*examples*</p></center>
             </div>
             <div class="collapsibles">
                <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="">
                                Month 1
                              </a>
                            </h4>
                    </div>
               </div> 
                    <div id="collapseOne" class="panel-collapse collapse">
                        <div class="panel-body">
                        <table class="this_table">
                    <tr>
                        <td colspan="7"><h3>Delivery Template (BRP and Manual)</h3></td>
                        <td colspan="3"><h3>Weightage: <asp:Label ID="BRPWeight" runat="server"></asp:Label></h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual Delivery vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Score0101" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0102" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0103" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0104" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0105" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0106" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0107" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0108" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0109" runat="server"></asp:Label>%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual Delivery vs Commitment</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                  <tr>
                        <td> <asp:Label ID="Score0201" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0202" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0203" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0204" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0205" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0206" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0207" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0208" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0209" runat="server"></asp:Label>%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Commitment vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Score0301" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0302" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0303" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0304" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0305" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0306" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0307" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0308" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0309" runat="server"></asp:Label>%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Exception Commit</td>
                        <td>0</td><td>0.1</td><td>0.2</td><td>0.3</td><td>0.35</td><td>0.4</td>
                    </tr>
                   <tr>
                        <td> <asp:Label ID="Score0401" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0402" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0403" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0404" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0405" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0406" runat="server"></asp:Label>%</td>
                    </tr>
                    <tr>
                        <td colspan="7"><h3>Delivery Template (IODM)</h3></td>
                        <td colspan="3"><h3>Weightage: <asp:Label ID="IODMWeight" runat="server"></asp:Label></h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual vs po</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                   <tr>
                        <td> <asp:Label ID="Score0501" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0502" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0503" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0504" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0505" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0506" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0507" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0508" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0509" runat="server"></asp:Label>%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Commitment vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                   <tr>
                        <td> <asp:Label ID="Score0601" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0602" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0603" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0604" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0605" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0606" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0607" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0608" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0609" runat="server"></asp:Label>%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Exception Commit</td>
                        <td>0</td><td>0.1</td><td>0.2</td><td>0.3</td><td>0.35</td><td>0.4</td>
                    </tr>
                    <tr>
                        <td> <asp:Label ID="Score0701" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0702" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0703" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0704" runat="server"></asp:Label>%</td>
                        <td> < <asp:Label ID="Score0705" runat="server"></asp:Label>%</td>
                        <td> <= <asp:Label ID="Score0706" runat="server"></asp:Label>%</td>
                    </tr>
                    
                </table>
                        </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="">
                                Month 2
                              </a>
                         </h4>
                </div>
                </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                <table class="this_table">
                    <tr>
                        <td colspan="7"><h3>Delivery Template (BRP and Manual)</h3></td>
                        <td colspan="3"><h3>Weightage: 3.95%</h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual Delivery vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                    <tr>
                        <td> 10 %</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual Delivery vs Commitment</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                  <tr>
                        <td> 10%</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Commitment vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                    <tr>
                        <td> 10%</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Exception Commit</td>
                        <td>0</td><td>0.1</td><td>0.2</td><td>0.3</td><td>0.35</td><td>0.4</td>
                    </tr>
                   <tr>
                        <td> 10%</td>
                        <td> < 20%</td>
                        <td> < 40%</td>
                        <td> < 60%</td>
                        <td> < 80%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td colspan="7"><h3>Delivery Template (IODM)</h3></td>
                        <td colspan="3"><h3>Weightage: 4%</h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual vs po</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                   <tr>
                        <td> 10%</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Commitment vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                   <tr>
                        <td> 10 %</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Exception Commit</td>
                        <td>0</td><td>0.1</td><td>0.2</td><td>0.3</td><td>0.35</td><td>0.4</td>
                    </tr>
                    <tr>
                        <td> 10%</td>
                        <td> < 20%</td>
                        <td> < 40%</td>
                        <td> < 60%</td>
                        <td> < 80%</td>
                        <td> <= 100%</td>
                    </tr>
                   
                </table>
                        </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                         <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="">
                                Month 3
                              </a>
                            </h4>

                    </div>
                </div>
                    <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                    <table class="this_table">
                    <tr>
                        <td colspan="7"><h3>Delivery Template (BRP and Manual)</h3></td>
                        <td colspan="3"><h3>Weightage: 3.95%</h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual Delivery vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                    <tr>
                        <td> 10 %</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual Delivery vs Commitment</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                  <tr>
                        <td> 10%</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Commitment vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                    <tr>
                        <td> 10%</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Exception Commit</td>
                        <td>0</td><td>0.1</td><td>0.2</td><td>0.3</td><td>0.35</td><td>0.4</td>
                    </tr>
                   <tr>
                        <td> 10%</td>
                        <td> < 20%</td>
                        <td> < 40%</td>
                        <td> < 60%</td>
                        <td> < 80%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td colspan="7"><h3>Delivery Template (IODM)</h3></td>
                        <td colspan="3"><h3>Weightage: 4%</h3></td>
                    </tr>
                    <tr>
                        <td rowspan="2">Actual vs po</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                   <tr>
                        <td> 10%</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Commitment vs Requirement</td>
                        <td>0</td><td>0.5</td><td>1</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td><td>4</td>
                    </tr>
                   <tr>
                        <td> 10 %</td>
                        <td> < 30%</td>
                        <td> < 50%</td>
                        <td> < 60%</td>
                        <td> < 70%</td>
                        <td> < 80%</td>
                        <td> < 90%</td>
                        <td> < 95%</td>
                        <td> <= 100%</td>
                    </tr>
                    <tr>
                        <td rowspan="2">Exception Commit</td>
                        <td>0</td><td>0.1</td><td>0.2</td><td>0.3</td><td>0.35</td><td>0.4</td>
                    </tr>
                    <tr>
                        <td> 10%</td>
                        <td> < 20%</td>
                        <td> < 40%</td>
                        <td> < 60%</td>
                        <td> < 80%</td>
                        <td> <= 100%</td>
                    </tr>
                   
                </table>
                        </div>
                    </div>
                
            </div>
        </div>
             
            </fieldset>
        </div>
         </div>
         </center>
</asp:Content>
