<%@ Page Title="Home | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EP_GUI.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="style.css" />
     <style>
        .evaluate_box
        {          
            margin:30px auto 30px auto;
            margin-top: 30px;
            width:40%;
            height: auto;
            font-size: 16px;
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
            font-size: 20px; 
            letter-spacing: 1px; 
            height: 60px; 
            line-height:60px;
            text-align: center;
        }

        .p_selectCM
        {
            color:#000;
            font-family: 'Lato', sans-serif;
          
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
            text-align:left;
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
    <div id="wrapper">         

                  <div class="evaluate_box">
                       <h2>
           EVALUATE
        </h2>

            <fieldset>
                <asp:Table ID="Table1" CssClass="table_evaluate" CellSpacing="0" runat="server">
                    <asp:TableRow>
                        <asp:TableHeaderCell Width="100px">Month</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="100px">Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="300px">Progress</asp:TableHeaderCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label ID="Label1" runat="server"></asp:Label></asp:TableCell>
                        <asp:TableCell>Open</asp:TableCell>
                        <asp:TableCell>
                            <asp:Table ID="Table2" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Responsiveness<asp:HyperLink ID="HyperLink1" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Responsiveness/R1TabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Delivery<asp:HyperLink ID="HyperLink2" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Delivery/DTabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Business<asp:HyperLink ID="HyperLink3" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Business/B1TabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell><asp:Label ID="Label2" runat="server"></asp:Label></asp:TableCell>
                        <asp:TableCell>Closed</asp:TableCell>
                        <asp:TableCell>
                            <asp:Table ID="Table3" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Responsiveness<asp:HyperLink ID="HyperLink4" Text=" Closed" ForeColor="Red" runat="server"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Delivery<asp:HyperLink ID="HyperLink5" Text=" Closed" ForeColor="Red" runat="server"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Business<asp:HyperLink ID="HyperLink6" Text=" Closed" ForeColor="Red" runat="server"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>     
                <asp:Label ID="Label4" runat="server"></asp:Label>
                </fieldset>
              </div>          
         </div>   
</asp:Content>
