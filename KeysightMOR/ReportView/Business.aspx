<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Business.aspx.cs" Inherits="KeysightMOR.ReportView.Business1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ReportView/Business.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Button ID="Button1" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ReportView/Report.aspx" />
    <div class="container">
        <table>
            <tr>
                <td style="width: 80%"><h1>Business Report</h1></td>
                <td style="width: 20%"><h1 style="text-align: center">
                    <asp:Label runat="server" ID="B_score" /></h1></td> 
            </tr>
        </table>

        <div id="bReport">
            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">Overall Report</a></li>
                    <li><a href="#tabs-2">Data Entry Report</a></li>
                    <li><a href="#tabs-3">Comments</a></li>
                </ul>
                <div id="tabs-1">
                    <table style="width: 100%" cellspacing="0">
                        <tr>
                            <td style="text-align: center; "><h3>B1</h3></td>
                            <td style="text-align: center;width:100px"><h3>
                                <asp:Label runat="server" ID="b1_totalscorelbl" /></h3></td>
                            <td style="text-align: center; min-width: 400px"><h3>-</h3></td>
                            <td style="text-align: center;"><h3>Achieved (Y/N/P)</h3></td>
                            <td style="text-align: center;"><h3>Score</h3></td>
                            <td style="text-align: center;"><h3>Weight</h3></td>
                        </tr>
                        <tr>
                            <td colspan="6" class="num">1) Corporate Compliances</td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">a)</td>
                            <td colspan="2" style="width: 400px">Ability to follow preferred supply paths, including distributor and 3rd party supply channels. 
                                This includes following the Keysight negotiated business awards where multiple suppliers are listed on the AVL.
                            </td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b1_1_1" /></td>
                            <td rowspan="2" style="text-align: center"><asp:Label runat="server" ID="b1_scorelbl" /></td>
                            <td rowspan="2" style="text-align: center">50%</td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">b)</td>
                            <td colspan="2">Adhere to standard setting requirements (timeline & data accuracy)</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b1_1_2" /></td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <table style="width: 100%" cellspacing="0">
                        <tr>
                            <td style="text-align: center;"><h3>B2</h3></td>
                            <td style="text-align: center; width:100px"><h3>
                                    <asp:Label runat="server" ID="b2_totalscorelbl" /></h3></td>
                            <td style="text-align: center; min-width: 400px"><h3>Data Integrity/Accuracy</h3></td>
                            <td style="text-align: center;"><h3>Achieved (Y/N/P)</h3></td>
                            <td style="text-align: center;"><h3>Score</h3></td>
                            <td style="text-align: center;"><h3>Weight</h3></td>
                        </tr>
                        <tr>
                            <td colspan="6" class="num">1) Reporting</td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">a)</td>
                            <td colspan="2">AP/AR</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b2_1_1" /></td>
                            <td rowspan="7" style="text-align: center">
                                <asp:Label runat="server" ID="b2_scorelbl" /></td>
                            <td rowspan="7" style="text-align: center">50%</td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">b)</td>
                            <td colspan="2">ECN</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b2_1_2" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">c)</td>
                            <td colspan="2">E&O/Aging invertory & inventory profiling report</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b2_1_3" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">d)</td>
                            <td colspan="2">PPV monthly report</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b2_1_4" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top">e)</td>
                            <td colspan="2">Stock On Hand Revaluation report (inclusive quarterly PPV report)</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b2_1_5" /></td>
                        </tr>
                        <tr>
                            <td colspan="4" class="num">2) Quotation</td>
                        </tr>
                        <tr>
                            <td colspan="3">Production Cost Model accuracy and transparency</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="b2_2_1" /></td>
                        </tr>
                    </table>
                </div>

                <div id="tabs-2">
                    <asp:GridView runat="server" ID="BusinessReport2" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b1_1_1" HeaderText="B1-1a" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b1_1_2" HeaderText="B1-1b" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b2_1_1" HeaderText="B2-1a" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b2_1_2" HeaderText="B2-1b" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b2_1_3" HeaderText="B2-1c" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b2_1_4" HeaderText="B2-1d" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b2_1_5" HeaderText="B2-1e" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="b2_2_1" HeaderText="B2-2" />
                        </Columns>
                    </asp:GridView>
                </div>

                <div id="tabs-3">
                    <div id="accordion">
                        <h3>Section B1-1(a)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B1_1_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC1_1_1" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B1-1(b)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B1_1_2_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC1_1_2" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B2-1(a)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B2_1_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC2_1_1" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B2-1(b)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B2_1_2_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC2_1_2" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B2-1(c)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B2_1_3_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC2_1_3" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B2-1(d)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B2_1_4_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC2_1_4" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B2-1(e)</h3>
                        <div>
                            <asp:GridView runat="server" ID="B2_1_5_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC2_1_5" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section B2-2</h3>
                        <div>
                            <asp:GridView runat="server" ID="B2_2_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="BC2_2_1" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
