<%@ Page Title="Responsiveness Score Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ResponsivenessScoreViewEdit.aspx.cs" Inherits="KeysightMOR.ControlPanel.ResponsivenessScoreViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/ResponsivenessScoreViewEdit.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="confR_box">
        <h2>Score Settings > Responsiveness</h2>

        <fieldset>
            <div class="description">
                <p class="title-description" style="text-align: center">View or edit current score settings for Responsiveness</p>

            </div>

            <table class="confR_table">
                <%-- <tr>
                        <td class="Rtable">
                            <h3>R1</h3>

                        </td>
                        <td>
                            <h3>Communication</h3>

                        </td>
                        <td>
                            <h3>MOR Target</h3>

                        </td>
                        
                    </tr>

                    <tr>
                        <td>1</td>
                        <td class="cell_comm">Responds to Keysight requests in a timely manner</td>
                        <td>
                            <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox1" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox2" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox3" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>

 
                    </tr>
                    <tr>
                        <td>2</td>
                        <td class="cell_comm">Adequately resourced in all areas (with assigned backups)</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox4" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox5" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                        </table>
                    </td>
                       
                    </tr>
                    <tr>
                        <td>3</td>
                        <td class="cell_comm">Proactively communicates manufacturing process changes, critical issues, or potential problems</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox7" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox8" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox9" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table> 

                        </td>
                     
                    </tr>
                    <tr>
                        <td>4</td>
                         <td class="cell_comm">Timely/Accurate communication within and between supplier plants - including best practice leverage</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox10" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox11" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox12" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                        </table>
                    </td>
                        
                    </tr>--%>

                <tr>
                    <td>
                        <h3>R2</h3>
                    </td>
                    <td>
                        <h3>Materials Management and Reporting</h3>

                    </td>
                    <td>
                        <h3>MOR Target</h3>
                    </td>

                </tr>

                <%--<tr>
                        <td>1</td>
                         <td class="cell_comm">Proactively manages shortage process e.g. no surprises</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox13" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox14" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox15" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                        </table>
                    </td>
                         
                    </tr>--%>

                <tr>
                    <td rowspan="2" class="cell_num" style="width: 250px">
                        <br />
                        Reacts appropriately to increases/decreases in Keysight demands in a timely manner
                        <br />
                    </td>
                    <td class="cell_comm">a) Fulfillment of LLM Safety Stock</td>
                    <td class="cell_num">Target:
                        <asp:TextBox ID="txtR2a" runat="server" Width="30px"></asp:TextBox>%
                    
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtR2a" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell_comm">b) Fulfillment of FG Safety Stock</td>
                    <td class="cell_num">Target:
                        <asp:TextBox ID="txtR2b" runat="server" Width="30px"></asp:TextBox>%

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtR2b" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td colspan="3" class="cell_button">
                        <a class="editR2_button" href="#popup1">Edit Scoring Range</a>
                    </td>

                </tr>
                <%--<tr>
                    <td rowspan="5" class="cell_num">3
                        <br />
                        Provides timely monthly reports</td>
                    <td class="cell_comm">a) AP/AR</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox16" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox17" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox18" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                        </table>
                    </td>
                        
                    </tr>
                    <tr>
                        <td class="cell_comm">b) ECN</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox19" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox20" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox21" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                        </table>
                    </td>
                        
                    </tr>
                    <tr>
                        <td class="cell_comm">c) E&O/Aging inventory & inventory profiling report</td>
                    <td>
                        <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox22" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox23" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox24" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                        </table>
                    </td>
                        
                    </tr>

                    <tr>
                        <td class="cell_comm">d) PPV monthly report</td>
                        <td>
                            <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox25" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox26" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox27" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                        </td>
                       
                    </tr>

                    <tr>
                        <td class="cell_comm">e) Stock On Hand revaluation report (inclusive quarterly PPV report)</td>
                        <td>
                            <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox28" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox29" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox30" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table> 

                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <h3>R3</h3>

                        </td>
                        <td>
                            <h3>Execution of Plans and Actions </h3>

                        </td>
                   <td>
                       <h3>MOR Target</h3>
                   </td>
                        
                    </tr>

                    <tr>
                        <td>1</td>
                        <td class="cell_comm">Improvement plans outlined and actioned within agreed timescale</td>
                        <td>
                            <table>
                                <tr>
                                <td class="cell_item">Y
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox31" runat="server" Width="30px"></asp:TextBox> 
                                    </td>
                                <td class="cell_item">P
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox32" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                <td class="cell_item">N
                                    </td>
                                    <td class="cell_item">
                                        <asp:TextBox ID="TextBox33" runat="server" Width="30px"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>

                        </td>
                        
                    </tr>--%>
            </table>

            <div class="div_button">
                <asp:Button ID="Save" runat="server" Text="Save" CssClass="action-button hvr-radial-out" />
                &nbsp;&nbsp;
                <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="cancel_button" />
            </div>

        </fieldset>
    </div>

    <!----Pop Up ----->

    <div id="popup1" class="overlay">
        <div class="popup">
            <a class="close" href="#">×</a>
            <br />
            <h2>Score Settings > Responsiveness</h2>

            <div class="content">
                <p class="title-description" style="text-align:center">Edit scoring range for R2</p>

                <table class="editR2_table">
                    <tr>
                        <td colspan="10">
                            <h3>Fulfillment of LLM Safety Stock</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td>Range</td>
                        <td><<asp:TextBox ID="txtLLM00" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLLM00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM05" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLLM05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM10" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtLLM10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM15" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtLLM15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM20" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLLM20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM25" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtLLM25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM30" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtLLM30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtLLM35" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtLLM35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><=<asp:TextBox ID="txtLLM40" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtLLM40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                    </tr>

                    <tr>
                        <td colspan="10">
                            <h3>Fulfillment of FG Safety Stock</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>Score</td>
                        <td>0</td>
                        <td>0.5</td>
                        <td>1</td>
                        <td>1.5</td>
                        <td>2</td>
                        <td>2.5</td>
                        <td>3</td>
                        <td>3.5</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td>Range</td>
                        <td><<asp:TextBox ID="txtFG00" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG00" runat="server" ControlToValidate="txtFG00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG05" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG05" runat="server" ControlToValidate="txtFG05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG10" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG10" runat="server" ControlToValidate="txtFG10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG15" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG15" runat="server" ControlToValidate="txtFG15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG20" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG20" runat="server" ControlToValidate="txtFG20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG25" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG25" runat="server" ControlToValidate="txtFG25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG30" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG30" runat="server" ControlToValidate="txtFG30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><<asp:TextBox ID="txtFG35" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG35" runat="server" ControlToValidate="txtFG35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                        <td><=<asp:TextBox ID="txtFG40" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvFG40" runat="server" ControlToValidate="txtFG40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
                <div class="div_button">
                    <asp:Button ID="btnSavePopup" runat="server" Text="Save" CssClass="action-button hvr-radial-out" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancelPopup" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="btnCancelPopup_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
