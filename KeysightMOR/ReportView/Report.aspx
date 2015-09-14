<%@ Page Title="Report Page | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="KeysightMOR.Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ReportView/Report.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button4" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ReportView/SelectReport.aspx" />
    <div class="container">
        <div class="this_box">
            <h2>Report
            </h2>
            <fieldset>

                <table style="border-spacing: 10px">
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server">
                                <asp:Button ID="Button1" runat="server" Text="Summary Sheet" class="btn" PostBackUrl="~/ReportView/Summary.aspx"/>
                            </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="">
                                <asp:Button ID="Button2" runat="server" Text="Graph" class="btn" PostBackUrl="~/ReportView/Graph.aspx" />
                            </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink3" runat="server">
                                <asp:Button ID="Button3" runat="server" Text="Responsiveness" class="btn" PostBackUrl="~/ReportView/Responsiveness.aspx" />
                            </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink4" runat="server">
                                <asp:Button ID="Button5" runat="server" Text="Delivery" class="btn" PostBackUrl="~/ReportView/Delivery.aspx" />
                            </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink5" runat="server">
                                <asp:Button ID="Button6" runat="server" Text="Business" class="btn" PostBackUrl="~/ReportView/Business.aspx" />
                            </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button8" runat="server" Text="Export" CssClass="btnExport" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>
</asp:Content>

