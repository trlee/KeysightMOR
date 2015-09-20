<%@ Page Title="Delvery Report | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Delivery.aspx.cs" Inherits="KeysightMOR.ReportView.Delivery1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ReportView/Delivery.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ReportView/Report.aspx" />
    <p style="text-align:center"><asp:Label runat="server" ID="error_Msg" CssClass="error_Msg" ForeColor="Red"/></p>
    <div class="container">
        <table style="width: 100%">
            <tr>
                <td style="width: 80%"><h1>Delivery Report</h1></td>
                <td style="width: 20%"><h1 style="text-align: center">
                    <asp:Label runat="server" ID="D_score" /></h1></td>
            </tr>
        </table>
        <br />

        <div id="dReport">
            <table style="width: 100%">
                <tr>
                    <td colspan="3"><h2>Delivery Template (BRP and Manual)</h2></td>
                    <td><asp:Label runat="server" ID="BRPWeightage" /></td>
                </tr>
                <tr>
                    <td colspan="2"><h2>Overall Delivery Score</h2></td>
                    <td colspan="2"><h2 style="text-align: center">
                        <asp:Label runat="server" ID="d1_score" /></h2></td>
                </tr>
            </table>
            <br />
         
            <table style="width: 100%" border="1" class="table1">
                <tr>
                    <td><h3></h3></td>
                    <td><h3>Score (%)</h3></td>
                    <td style="text-align: center"><h3>Score</h3></td>
                    <td style="text-align: center"><h3>Weighting</h3></td>
                </tr>
                <tr>
                    <td><h3>CRD % </h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_1_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_1_score" /></td>
                    <td style="text-align: center">50%</td>
                </tr>
                <tr>
                    <td><h3>OTD %</h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_2_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_2_score" /></td>
                    <td style="text-align: center">30%</td>
                </tr>
                <tr>
                    <td><h3>Commit %</h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_3_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_3_score" /></td>
                    <td style="text-align: center">20%</td>
                </tr>
                <tr>
                    <td><h3>Exception %</h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_4_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d1_4_score" /></td>
                    <td style="text-align: center">Bonus</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td colspan="3"><h2>Delivery Template (IODM)</h2></td>
                    <td><asp:Label runat="server" ID="IODMWeightage" /></td>
                </tr>
                <tr>
                    <td colspan="2"><h2>Overall Delivery Score</h2></td>
                    <td colspan="2"><h2 style="text-align: center">
                        <asp:Label runat="server" ID="d2_score" /></h2></td>
                </tr>
            </table>
            <br />
            <table style="width: 100%" border="1" class="table2">
                <tr>
                    <td><h3></h3></td>
                    <td><h3>Score (%)</h3></td>
                    <td style="text-align: center"><h3>Score</h3></td>
                    <td style="text-align: center"><h3>Weighting</h3></td>
                </tr>
                <tr>
                    <td><h3>CRD %</h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d2_1_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d2_1_score" /></td>
                    <td style="text-align: center">70%</td>
                </tr>
                <tr>
                    <td><h3>Commit %</h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d2_2_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d2_2_score" /></td>
                    <td style="text-align: center">30%</td>
                </tr>
                <tr>
                    <td><h3>Exception %</h3></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d2_3_percentage" /></td>
                    <td style="text-align: center"><asp:Label runat="server" ID="d2_3_score" /></td>
                    <td style="text-align: center">Bonus</td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
