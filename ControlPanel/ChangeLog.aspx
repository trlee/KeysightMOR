<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChangeLog.aspx.cs" Inherits="KeysightMOR.ChangeLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

          .container
        {
            margin: 10px 50px 50px 50px;
        }
         .this_box
   {
            margin:30px 10% 30px 10%;
            align-content: center;
            background-color: #fff; 
            color: #000; 
            font-size: 16px;
            width: 70%; 
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

        .editR2_table {
            width: 95%;
            background-color: #fff;
            text-align: left;
			overflow: auto;
            margin-bottom: 10px;
            margin-top: 8px;
           margin-left: 20px;
            align-content: center;
            border-collapse: separate;
            border-spacing: 0px;
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

     <center>
         <div class="container">
    <div class="this_box">       
        <h2>
           
           Change Log <!-- for Responsiveness *temporary*--->
        </h2>

        <fieldset>

            <!-- temporary*
            <p>
   <asp:DropDownList ID="CM" runat="server" class="dropdown">
                            <asp:ListItem>Responsiveness</asp:ListItem>
                            <asp:ListItem>Delivery</asp:ListItem>
                            
                            </asp:DropDownList>

            </p>
            --->

            <div class="description">
                    <center><p class="title-description">Latest changes occured for Responsiveness*examples*</p></center>                    
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
                        <td>
                            <h3>R2</h3>

                        </td>
                    <td>
                            <h3>Materials Management and Reporting</h3>

                        </td>
                        <td>
                            <h3>MOR Target</h3>
                        </td>

                    </tr>

                    <tr  >
                    <td rowspan="2" class="cell_num" style="width:250px">
                        <br />
                        Reacts appropriately to increases/decreases in Keysight demands in a timely manner
                    </td>
                    <td class="cell_comm">a) Fulfillment of LLM Safety Stock</td>
                    <td class="cell_num">Target:
                       83%
                    </td>
                    </tr>
                
                    <tr>
                        <td class="cell_comm">b) Fulfillment of FG Safety Stock</td>
                    <td class="cell_num">Target:
                        86%</td>
                        
                    </tr>
                    <tr>
                       <table class="editR2_table">
            <tr>
                        <td colspan="10">
                            <h3>Fulfillment of LLM Safety Stock</h3>
                        </td>
            </tr>
            <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
            </tr>
            <tr>
                 <td>Range</td>
                        <td>
                            < 10%</td>
                        <td>
                            < 30%</td>
                        <td>
                            < 50%</td>
                        <td>
                            < 60%</td>
                        <td>
                            < 70%</td>
                        <td>
                            < 80%</td>
                        <td>
                            < 90%</td>
                        <td>
                            < 95%</td>
                        <td>
                            <= 100%</td>
            </tr>

            <tr>
                        <td colspan="10">
                            <h3>Fulfillment of FG Safety Stock</h3>
                        </td>
            </tr>
            <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
            </tr>
            <tr>
                 <td>Range</td>
                       <td>
                            < 10%</td>
                        <td>
                            < 30%</td>
                        <td>
                            < 50%</td>
                        <td>
                            < 60%</td>
                        <td>
                            < 70%</td>
                        <td>
                            < 80%</td>
                        <td>
                            < 90%</td>
                        <td>
                            < 95%</td>
                        <td>
                            <= 100%</td>
            </tr>
        </table>
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
                        <td>
                            <h3>R2</h3>

                        </td>
                    <td>
                            <h3>Materials Management and Reporting</h3>

                        </td>
                        <td>
                            <h3>MOR Target</h3>
                        </td>

                    </tr>

                    <tr  >
                    <td rowspan="2" class="cell_num" style="width:250px">
                        <br />
                        Reacts appropriately to increases/decreases in Keysight demands in a timely manner
                    </td>
                    <td class="cell_comm">a) Fulfillment of LLM Safety Stock</td>
                    <td class="cell_num">Target:
                       83%
                    </td>
                    </tr>
                
                    <tr>
                        <td class="cell_comm">b) Fulfillment of FG Safety Stock</td>
                    <td class="cell_num">Target:
                        86%</td>
                        
                    </tr>
                    <tr>
                       <table class="editR2_table">
            <tr>
                        <td colspan="10">
                            <h3>Fulfillment of LLM Safety Stock</h3>
                        </td>
            </tr>
            <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
            </tr>
            <tr>
                 <td>Range</td>
                        <td>
                            < 10%</td>
                        <td>
                            < 30%</td>
                        <td>
                            < 50%</td>
                        <td>
                            < 60%</td>
                        <td>
                            < 70%</td>
                        <td>
                            < 80%</td>
                        <td>
                            < 90%</td>
                        <td>
                            < 95%</td>
                        <td>
                            <= 100%</td>
            </tr>

            <tr>
                        <td colspan="10">
                            <h3>Fulfillment of FG Safety Stock</h3>
                        </td>
            </tr>
            <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
            </tr>
            <tr>
                 <td>Range</td>
                       <td>
                            < 10%</td>
                        <td>
                            < 30%</td>
                        <td>
                            < 50%</td>
                        <td>
                            < 60%</td>
                        <td>
                            < 70%</td>
                        <td>
                            < 80%</td>
                        <td>
                            < 90%</td>
                        <td>
                            < 95%</td>
                        <td>
                            <= 100%</td>
            </tr>
        </table>
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
                        <td>
                            <h3>R2</h3>

                        </td>
                    <td>
                            <h3>Materials Management and Reporting</h3>

                        </td>
                        <td>
                            <h3>MOR Target</h3>
                        </td>

                    </tr>

                    <tr  >
                    <td rowspan="2" class="cell_num" style="width:250px">
                        <br />
                        Reacts appropriately to increases/decreases in Keysight demands in a timely manner
                    </td>
                    <td class="cell_comm">a) Fulfillment of LLM Safety Stock</td>
                    <td class="cell_num">Target:
                       83%
                    </td>
                    </tr>
                
                    <tr>
                        <td class="cell_comm">b) Fulfillment of FG Safety Stock</td>
                    <td class="cell_num">Target:
                        86%</td>
                        
                    </tr>
                    <tr>
                       <table class="editR2_table">
            <tr>
                        <td colspan="10">
                            <h3>Fulfillment of LLM Safety Stock</h3>
                        </td>
            </tr>
            <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
            </tr>
            <tr>
                 <td>Range</td>
                        <td>
                            < 10%</td>
                        <td>
                            < 30%</td>
                        <td>
                            < 50%</td>
                        <td>
                            < 60%</td>
                        <td>
                            < 70%</td>
                        <td>
                            < 80%</td>
                        <td>
                            < 90%</td>
                        <td>
                            < 95%</td>
                        <td>
                            <= 100%</td>
            </tr>

            <tr>
                        <td colspan="10">
                            <h3>Fulfillment of FG Safety Stock</h3>
                        </td>
            </tr>
            <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
            </tr>
            <tr>
                 <td>Range</td>
                       <td>
                            < 10%</td>
                        <td>
                            < 30%</td>
                        <td>
                            < 50%</td>
                        <td>
                            < 60%</td>
                        <td>
                            < 70%</td>
                        <td>
                            < 80%</td>
                        <td>
                            < 90%</td>
                        <td>
                            < 95%</td>
                        <td>
                            <= 100%</td>
            </tr>
        </table>
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
