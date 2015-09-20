<%@ Page Title="Graph Report | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="KeysightMOR.ReportView.Graph1" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/ReportView/Graph.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ReportView/Report.aspx" />
    <p style="text-align:center"><asp:Label runat="server" ID="error_Msg" CssClass="error_Msg" /></p>
    <div id="ReportG">
    <div>
        <br />
        <asp:GridView ID="Graph" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" HorizontalAlign="Center" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" HorizontalAlign="Center" ForeColor="Black"/>
            <RowStyle BackColor="#EEEEEE" HorizontalAlign="Center" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <div >
            <asp:Chart ID="Chart1" runat="server" Width="1000px" Height="500px"></asp:Chart>
        </div>
        
    </div></div>
</asp:Content>
