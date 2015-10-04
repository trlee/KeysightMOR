<%@ Page Title="Summary Page | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="KeysightMOR.ReportView.Summary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/ReportView/Summary.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">
       <asp:Button ID="back_to_report" runat="server" Text="Back" class="back_btn" OnClick="back_to_report_Click" />
       <p style="text-align:center"><asp:Label runat="server" ID="error_Msg" CssClass="error_Msg" /></p>
         
        <table class="summarysheet_table" cellspacing="0">
            <tr>
                <td id="head" colspan="4">Monthly/Annual Operational Review Scorecard<br />
                    Minimum Acceptable Target 3.3 by Scoring Category</td>
            </tr>
            <tr>
                <td colspan="4">SUPPLIER: 
                    <asp:Label runat="server" ID="Report_CM" /><br/>PLANT: 
                    <asp:Label runat="server" ID="Report_Plant" /></td>
            </tr>
            <tr>
                <td colspan="4">
                    <img class="logo" src="../Assets/Images/Keysight_Technologies_Logo.png" /></td>
            </tr>
            <tr>
                <td class="auto-style1">Evaluation Date</td>
                <td><asp:Label runat="server" ID="EvaluationDate" /></td>
            </tr>
            <tr>
                <td colspan="4">
                    <table cellspacing="0">
                        <tr>
                            <td class="clr_1">PROCESS AREA</td>
                            <td class="clr_2">NET SCORE FROM SECTIONS</td>
                            <td class="clr_1">WEIGHTING FACTOR</td>
                            <td class="clr_2">CUSTOMER SCORE</td>
                        </tr>
                        <tr>
                            <td class="q_clr">Quality</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="Q_Score" /></td>
                            <td style="text-align:center">28%</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="Q_FinalScore" /></td>
                        </tr>
                        <tr>
                            <td class="r_clr">Responsiveness</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="R_Score" /></td>
                            <td style="text-align:center">28%</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="R_FinalScore" /></td>
                        </tr>
                        <tr>
                            <td class="d_clr">Delivery</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="D_Score" /></td>
                            <td style="text-align:center">28%</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="D_FinalScore" /></td>
                        </tr>
                        <tr>
                            <td class="b_clr">Business</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="B_Score" /></td>
                            <td style="text-align:center">15%</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="B_FinalScore" /></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>

                            <td class="total_clr">Total</td>
                            <td style="text-align:center"><asp:Label runat="server" ID="Score" /></td>
                        </tr>
                    </table>
                    </td>
            </tr>
            <tr>
                <td colspan="4" class="evalteam_clr">
                    <center>EVALUATION TEAM (Monthly)</center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Responsiveness</td>
                <td colspan="3"><asp:Label runat="server" ID="R_Team" /></td>
            </tr>
            <tr>
                <td class="auto-style3">Delivery</td>
                <td colspan="3"><asp:Label runat="server" ID="D_Team" /></td>
            </tr>
            <tr>
                <td class="auto-style4">Business</td>
                <td colspan="3"><asp:Label runat="server" ID="B_Team" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

