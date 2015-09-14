<%@ Page Title="Graph Report | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="KeysightMOR.ReportView.Graph1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #table{
            
            background-color:white;
            border-collapse: separate;
            border-spacing: 0px;
           border: 1px #e7e7e7;
            border-style: solid;  
        }
        #table tr,td,th{
            padding:5px;
            border: 1px #e7e7e7;
            border-style: solid;   
        }
        #table th{
            color:#fff;
            background-color: #6BB9F0;
        }
        #ReportG
        {
            margin-top: 20px;
            width: 80%;
            margin-left: 10%;
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

             <asp:Button ID="Button1" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ReportView/Report.aspx"/>       
<div id="ReportG">
   
    <p>
            *INSERT GRAPH GENERATION CODES ETC. HERE*
    </p>
    <br />
    <table style="width:100%; text-align:center" id="table">
        <tr>
            <th>Criteria</th>
            <th>Month 1</th>
            <th>Month 2</th>
            <th>Month 3</th>
            <th>Month 4</th>
            <th>Month 5</th>
            <th>Month 6</th>
            <th>Month 7</th>
            <th>Month 8</th>
            <th>Month 9</th>
            <th>Month 10</th>
            <th>Month 11</th>
            <th>Month 12</th>
        </tr>
        <tr>
            <th>Quality - PCA</th>
            <td>Month 1</td>
            <td>Month 2</td>
            <td>Month 3</td>
            <td>Month 4</td>
            <td>Month 5</td>
            <td>Month 6</td>
            <td>Month 7</td>
            <td>Month 8</td>
            <td>Month 9</td>
            <td>Month 10</td>
            <td>Month 11</td>
            <td>Month 12</td>
        </tr>
        <tr>
            <th>Quality - HCA</th>
            <td>Month 1</td>
            <td>Month 2</td>
            <td>Month 3</td>
            <td>Month 4</td>
            <td>Month 5</td>
            <td>Month 6</td>
            <td>Month 7</td>
            <td>Month 8</td>
            <td>Month 9</td>
            <td>Month 10</td>
            <td>Month 11</td>
            <td>Month 12</td>
        </tr>
        <tr>
            <th>Responsiveness</th>
            <td>Month 1</td>
            <td>Month 2</td>
            <td>Month 3</td>
            <td>Month 4</td>
            <td>Month 5</td>
            <td>Month 6</td>
            <td>Month 7</td>
            <td>Month 8</td>
            <td>Month 9</td>
            <td>Month 10</td>
            <td>Month 11</td>
            <td>Month 12</td>
        </tr>
        <tr>
            <th>Delivery</th>
            <td>Month 1</td>
            <td>Month 2</td>
            <td>Month 3</td>
            <td>Month 4</td>
            <td>Month 5</td>
            <td>Month 6</td>
            <td>Month 7</td>
            <td>Month 8</td>
            <td>Month 9</td>
            <td>Month 10</td>
            <td>Month 11</td>
            <td>Month 12</td>
        </tr>
        <tr>
            <th>Business</th>
            <td>Month 1</td>
            <td>Month 2</td>
            <td>Month 3</td>
            <td>Month 4</td>
            <td>Month 5</td>
            <td>Month 6</td>
            <td>Month 7</td>
            <td>Month 8</td>
            <td>Month 9</td>
            <td>Month 10</td>
            <td>Month 11</td>
            <td>Month 12</td>
        </tr>
    </table>  
</div>
           
</asp:Content>
