<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DTabEntry.aspx.cs" Inherits="KeysightMOR.DataEntry.Delivery.DTabEntry1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Delivery Tab Entry | Keysight Technologies</title>
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
            text-align: center;
          
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
    </style>
     <center>
    <div class="this_box">       
        <h2 class="title">
           Delivery Data Entry
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
                    <asp:TableCell CssClass="item-title" HorizontalAlign="Center">
                        <h3>BRP & Manual</h3>
                    </asp:TableCell>
                    <asp:TableCell CssClass="item-title" HorizontalAlign="Center">
                        <h3>Score</h3>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>a) Act del vs req (CRD %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D1_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>                            
                        <asp:RangeValidator ID="RangeValidator1" ControlToValidate="D1_1" MinimumValue="0" MaximumValue="100" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>b) Act del vs comm (OTD %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D1_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" ControlToValidate="D1_2" MinimumValue="0" MaximumValue="100" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>                      
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>c) Commit vs req (Commit %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D1_3" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator3" ControlToValidate="D1_3" MinimumValue="0" MaximumValue="100" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>               
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>d) Exception Commit (Exception %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D1_4" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator4" ControlToValidate="D1_4" MinimumValue="0" MaximumValue="100" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><h3>IDOM</h3></asp:TableCell>
                    <asp:TableCell HorizontalAlign="Center"><h3>Score</h3></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>a) Act del vs po (CRD %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D2_1" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator5" ControlToValidate="D2_1" MinimumValue="0" MaximumValue="100" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>b) Commit vs req (Commit %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D2_2" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator6" ControlToValidate="D2_2" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>c) Exception Commit (Exception %)</asp:TableCell>
                    <asp:TableCell CssClass="cell_item">
                        <asp:TextBox ID="D2_3" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator7" ControlToValidate="D2_3" MinimumValue="0" MaximumValue="4" Type="Integer" runat="server" ErrorMessage="Enter a value from 0 to 100" ForeColor="Red" Font-Size="X-Small"></asp:RangeValidator>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                          <br />
            <div class="div_button">
                <asp:Button ID="SaveDraft" runat="server" Text="Save as Draft"  CssClass="action-button hvr-radial-out" OnClick="SaveDraft_Click"/>
                &nbsp;&nbsp;
                <asp:Button ID="SaveSubmit" runat="server" Text="Submit"  CssClass="action-button hvr-radial-out" OnClick="SaveSubmit_Click"/>
                &nbsp;&nbsp;
                <asp:Button ID="Cancel1" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="Cancel1_Click"/>
            </div>
              
            </fieldset>
                </div>
        </center>
</asp:Content>
