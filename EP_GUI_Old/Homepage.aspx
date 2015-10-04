<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="EP_GUI.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style.css" />
    <style>
        .evaluate_box
        {          
            position: absolute;
            left: 20%;            
            top: 15%; 
            width: 60%;
            height: auto;
            font-size: 22px;
            overflow:auto;
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

        .p_selectCM
        {
            color:#000;
            font-family: 'Lato', sans-serif;
            font-size: 20px;
            text-align: center;
        }

        .dropdown_selectCM
        {
            width: 240px;
           height: 37px;
           overflow: hidden;     
           border: 2px solid #808080;
           -webkit-appearance: none;
           -moz-appearance: none;
           padding: 5px;
           font-size: 16px;
           
        }
        .table_evaluate
       {
            background-color: #fff;
            border:none;
            text-align: center;
			width: auto;
			overflow: auto;
			display: block;
        }
        td
        {
	        background-color: #fff;
            border:1px #e7e7e7; 
            border-style: solid;
            padding: 5px 5px 5px 5px;
            text-align: center;
            width: auto;
        }
        .td_criteria
        {
            border: none;
        }
        th
        {
            background-color: #f1d3d3;
            color: #000;
            border:1px #e7e7e7; 
            border-style: solid;
            padding: 5px 5px 5px 5px;
        }
    </style>
    <div id="wrap">         

 
                  <div class="evaluate_box">
                       <h2>
           EVALUATE
        </h2>

            <fieldset>
                  <p class="p_selectCM">
                      Select your CM &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" class="dropdown_selectCM">
                          <asp:ListItem>CM1</asp:ListItem>
                          <asp:ListItem>CM2</asp:ListItem>
                          <asp:ListItem>CM3</asp:ListItem>
                      </asp:DropDownList>
                  </p>
                  <br />

                  <table class="table_evaluate" cellspacing="0">
                      <tr>
                          <th>Month</th>
                          <th>Status</th>
                          <th>Progress</th>
                      </tr>
                      <tr>
                          <td>Jan</td>
                          <td>Open</td>
                          <td>
                              <table>
                                  <tr>
                                  <td class="td_criteria">Responsive <a href="#"><asp:Label ID="Label4" runat="server" Text="New" ForeColor="Green"></asp:Label></a></td>
                              </tr>  
                                  <tr >
                                    <td class="td_criteria">Business <a href="#"><asp:Label ID="Label5" runat="server" Text="Draft" ForeColor="Orange"></asp:Label></a></td>
                                  </tr>
                                  <tr>
                                      <td class="td_criteria">Delivery <a href="#"><asp:Label ID="Label6" runat="server" Text="Closed" ForeColor="Red"></asp:Label></a></td>
                                  
                                  </tr>
                              </table>
                              
                          </td>
                      </tr>
                      <tr>
                          <td>Feb</td>
                          <td>Closed</td>
                          <td>
                              <table>
                                  <tr>
                                  <td class="td_criteria">Responsive <a href="#"><asp:Label ID="Label1" runat="server" Text="New" ForeColor="Green"></asp:Label></a></td>
                              </tr>  
                                  <tr >
                                    <td class="td_criteria">Business <a href="#"><asp:Label ID="Label2" runat="server" Text="Draft" ForeColor="Orange"></asp:Label></a></td>
                                  </tr>
                                  <tr>
                                      <td class="td_criteria">Delivery <a href="#"><asp:Label ID="Label3" runat="server" Text="Closed" ForeColor="Red"></asp:Label></a></td>
                                  
                                  </tr>
                              </table>
                              
                          </td>
                      </tr>
                  </table>
                </fieldset>
              </div>  
         </div>   
         

                  
</asp:Content>
