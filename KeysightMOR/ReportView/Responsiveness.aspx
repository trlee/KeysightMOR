<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Responsiveness.aspx.cs" Inherits="KeysightMOR.ReportView.Responsiveness1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/ReportView/Responsiveness.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Back" class="back_btn" PostBackUrl="~/ReportView/Report.aspx" />
    <div class="container">
        <table>
            <tr>
                <td style="width: 80%"><h1>Responsiveness Report</h1></td>
                <td style="width: 20%"><h1 style="text-align: center">
                    <asp:Label runat="server" ID="R_Score" /></h1></td>
            </tr>
        </table>

        <div id="rReport">
            <div id="tabs">
                <ul>
                    <li><a href="#tabs-1">Overall Report</a></li>
                    <li><a href="#tabs-2">Data Entry Report</a></li>
                    <li><a href="#tabs-3">Comments</a></li>
                </ul>
                <div id="tabs-1">
                    <table style="width: 100%" cellspacing="0">
                        <tr>
                            <td><h3>R1</h3></td>
                            <td style="text-align: center; width:100px"><h3>
                                <asp:Label runat="server" ID="r1_totalscorelbl" /></h3></td>
                            <td style="text-align: center;"><h3>Communication</h3></td>
                            <td style="text-align: center; width: 200px"><h3>Achieved (Y/N/P)</h3></td>
                            <td style="text-align: center; width: 80px"><h3>Score</h3></td>
                            <td style="text-align: center; width: 80px"><h3>Weight</h3></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">1)</td>
                            <td colspan="2">Responds to Keysight requests in a timely manner</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r1_1" /></td>
                            <td rowspan="3" style="text-align: center">
                                <asp:Label runat="server" ID="r1_scorelbl" /></td>
                            <td rowspan="3" style="text-align: center">50%</td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">2)</td>
                            <td colspan="2">Adequately resourced in all areas (with assigned backups)</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r1_2" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">3)</td>
                            <td colspan="2">Proactively communicates manufacturing process changes, critical issues or potential problems</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r1_3" /></td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <table style="width: 100%" cellspacing="0">
                        <tr>
                            <td><h3>R2</h3></td>
                            <td style="text-align: center; width:100px"><h3>
                                <asp:Label runat="server" ID="r2_totalscorelbl" /></h3></td>
                            <td style="text-align: center;"><h3>Materials Management and Reporting</h3></td>
                            <td style="text-align: center; width: 100px"><h3>Target</h3></td>
                            <td style="text-align: center; width: 200px"><h3>Achieved (Y/N/P)</h3></td>
                            <td style="text-align: center; width: 80px"><h3>Score</h3></td>
                            <td style="text-align: center; width: 80px"><h3>Weight</h3></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">1)</td>
                            <td colspan="3">Proactively manages shortage processes e.g no suprises</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_1" /></td>
                            <td rowspan="11" style="text-align: center">
                                <asp:Label runat="server" ID="r2_scorelbl" /></td>
                            <td rowspan="11" style="text-align: center">50%</td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">2)</td>
                            <td colspan="4">Reacts appropriately to increases/decreases in Keysight Demand in a timely manner</td>
                            <td style="text-align: center"></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">a)</td>
                            <td colspan="2">Fulfillment of LLM Safety Stock</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="LLMTarget" /></td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_2_1" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">b)</td>
                            <td colspan="2">Fulfillment of FG Safety Stock</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="FGTarget" /></td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_2_2" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">3)</td>
                            <td colspan="4">Provides TIMELY monthly reports</td>
                            <td style="text-align: center"></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">a)</td>
                            <td colspan="3">AP/AR</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_3_1" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">b)</td>
                            <td colspan="3">ECN</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_3_2" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">c)</td>
                            <td colspan="3">E&O / Aging inventory & inventory profiling report</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_3_3" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">d)</td>
                            <td colspan="3">PPV monthly report</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_3_4" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">e)</td>
                            <td colspan="3">Stock On Hand revaluation report (inclusive quarterly PPV report)</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_3_5" /></td>
                        </tr>
                        <tr>
                            <td style="width: 10px; vertical-align: top;">f)</td>
                            <td colspan="3">Stock On Hand revaluation report (inclusive quarterly PPV report)</td>
                            <td style="text-align: center">
                                <asp:Label runat="server" ID="r2_3_6" /></td>
                        </tr>
                    </table>
                </div>

                <div id="tabs-2">
                    <asp:GridView runat="server" ID="ResponsivenessReport2" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R1_1" HeaderText="R1-1" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R1_2" HeaderText="R1-2" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R1_3" HeaderText="R1_3" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_1" HeaderText="R2_1" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_2_1" HeaderText="R2_2_1" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_2_2" HeaderText="R2_2_2" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_3_1" HeaderText="R2_3_1" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_3_2" HeaderText="R2_3_2" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_3_3" HeaderText="R2_3_3" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_3_4" HeaderText="R2_3_4" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_3_5" HeaderText="R2_3_5" />
                            <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="R2_3_6" HeaderText="R2_3_6" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="tabs-3">
                    <div id="accordion">
                        <h3>Section R1-i</h3>
                        <div>
                            <asp:GridView runat="server" ID="R1_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC1_1" HeaderText="Comment"/>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>

                        <h3>Section R1-ii</h3>
                        <div>
                            <asp:GridView runat="server" ID="R1_2_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC1_2" HeaderText="Comment"/>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R1-iii</h3>
                        <div>
                            <asp:GridView runat="server" ID="R1_3_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC1_3" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R1-iv</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_1" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-i</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_2_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_2_1" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-ii(a)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_2_2_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_2_2" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-ii(b)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_3_1_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_3_1" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-iii(a)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_3_2_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_3_2" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-iii(b)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_3_3_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_3_3" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-iii(c)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_3_4_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_3_4" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-iii(d)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_3_5_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_3_5" HeaderText="Comment" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="" HeaderText="Attachment" />
                                </Columns>
                            </asp:GridView>
                        </div>
                        <h3>Section R2-iii(e)</h3>
                        <div>
                            <asp:GridView runat="server" ID="R2_3_6_Comment" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="DivName" HeaderText="Division" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewItem" HeaderStyle-CssClass="gridViewHeader" DataField="UserName" HeaderText="Employee" />
                                    <asp:BoundField ItemStyle-CssClass="gridViewComment" HeaderStyle-CssClass="gridViewHeader" DataField="RC2_3_6" HeaderText="Comment" />
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
