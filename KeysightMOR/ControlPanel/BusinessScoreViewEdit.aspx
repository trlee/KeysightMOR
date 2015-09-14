<%@ Page Title="Business Score Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessScoreViewEdit.aspx.cs" Inherits="KeysightMOR.ControlPanel.BusinessScoreViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/BusinessScoreViewEdit.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    </style>

    <div class="confB_box">
        <h2>Score Settings > Business
        </h2>

        <fieldset>
            <div class="description" style="text-align: center">
                <p class="title-description">View or edit current score settings for Business</p>
            </div>

            <%-- TODO: Include a div-class element for error messages --%>
            <div style="text-align: center">
            </div>

            <table class="confB_table">
                <tr>
                    <td>
                        <h3>B1</h3>
                    </td>
                    <td>
                        <h3 class="table-item-centered">Corporate Compliances</h3>
                    </td>
                    <td>
                        <h3 class="table-item-centered">MOR Target</h3>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" class="cell_num">1</td>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">a)
                                </td>

                                <td class="cell_item">Ability to follow preferred supply paths, including distributor and 3rd party supply channels. This includes following the Keysight negotiated business awards where multiple suppliers are listed on the AVL.
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB1_1aY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtB1_1aY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB1_1aP" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtB1_1aP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB1_1aN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtB1_1aN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>

                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">b)
                                </td>

                                <td class="cell_item">Adhere to standard setting requirements (timeline & data accuracy)
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB1_1bY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtB1_1bY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB1_1bP" runat="server" Width="30px"></asp:TextBox>

                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtB1_1bP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB1_1bN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtB1_1bN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td>
                        <h3>B2</h3>
                    </td>
                    <td>
                        <h3 class="table-item-centered">Data Integrity / Accuracy</h3>
                    </td>
                    <td>
                        <h3 class="table-item-centered">MOR Target</h3>
                    </td>
                </tr>
                <tr>
                    <td rowspan="5" class="cell_num">1<br />
                        <br />
                        Reporting
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">a)
                                </td>

                                <td class="cell_item">AP/AR
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1aY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1aY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1aP" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1aP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1aN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1aN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">b)
                                </td>

                                <td class="cell_item">ECN
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1bY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1bY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1bP" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1bP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1bN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1bN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">c)
                                </td>

                                <td class="cell_item">E & O / Aging inventory & inventory profiling report
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1cY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1cY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1cP" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1cP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1cN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1cN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">d)
                                </td>

                                <td class="cell_item">PPV monthly report
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1dY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1dY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1dP" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1dP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1dN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1dN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">e)
                                </td>

                                <td class="cell_item">Stock On Hand Revaluation report (Inclusive quarterly PPV report)
                                </td>
                            </tr>
                        </table>
                    </td>

                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_iteme">
                                    <asp:TextBox ID="txtB2_1eY" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1eY" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1eP" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1eP" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_1eN" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="*" ControlToValidate="txtB2_1eN" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr>
                    <td class="cell_num">2<br />
                        <br />
                        Quotation<br />
                        <br />
                    </td>
                    <td>Production Cost Model accuracy and transparency</td>
                    <td>
                        <table>
                            <tr>
                                <td class="cell_item">Y
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_2Y" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ErrorMessage="*" ControlToValidate="txtB2_2Y" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">P
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_2P" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ErrorMessage="*" ControlToValidate="txtB2_2P" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td class="cell_item">N
                                </td>

                                <td class="cell_item">
                                    <asp:TextBox ID="txtB2_2N" runat="server" Width="30px"></asp:TextBox>
                                </td>

                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ErrorMessage="*" ControlToValidate="txtB2_2N" ForeColor="Red"></asp:RequiredFieldValidator>
                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

            <div class="div_button">
                <table style="float: right">
                    <tr>
                        <td>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="action-button hvr-radial-out" OnClick="btnEdit_Click" />
                        </td>

                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="action-button hvr-radial-out" OnClick="btnSave_Click" />
                        </td>

                        <td>
                            <asp:HyperLink ID="hlCancel" runat="server" Text="Cancel" CssClass="cancel_button" NavigateUrl="~/ControlPanel/BusinessScore.aspx"></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </div>
        </fieldset>
    </div>
</asp:Content>
