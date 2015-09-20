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

            <div style="text-align:center">
                <asp:Label ID="lblStatusMsg" runat="server"></asp:Label>
            </div>

            <table class="confR_table">
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

                <tr>
                    <td rowspan="2" class="cell_num" style="width: 250px">
                        <br />
                        Reacts appropriately to increases/decreases in Keysight demands in a timely manner
                        <br />
                    </td>
                    <td class="cell_comm">a) Fulfillment of LLM Safety Stock</td>
                    <td class="cell_num">Target:
                        <asp:TextBox ID="txtR2a" runat="server" Width="30px"></asp:TextBox>%
                    
                        <asp:RequiredFieldValidator ID="rfvtxtR2a" runat="server" ControlToValidate="txtR2a" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtR2a" runat="server" ControlToValidate="txtR2a" Type="Integer" Font-Size="XX-Small" ForeColor="Red" ErrorMessage="Value must be between 0-100" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="cell_comm">b) Fulfillment of FG Safety Stock</td>
                    <td class="cell_num">Target:
                        <asp:TextBox ID="txtR2b" runat="server" Width="30px"></asp:TextBox>%

                        <asp:RequiredFieldValidator ID="rfvtxtR2b" runat="server" ControlToValidate="txtR2b" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtR2b" runat="server" ControlToValidate="txtR2b" Type="Integer" Font-Size="XX-Small" ForeColor="Red" ErrorMessage="Value must be between 0-100" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>

                </tr>
                <tr>
                    <td colspan="3" class="cell_button">
                        <a class="editR2_button" href="#popup1">Edit Scoring Range</a>
                    </td>

                </tr>
            </table>

            <div class="div_button">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="action-button hvr-radial-out" OnClick="btnSave_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="btnCancel_Click" />
            </div>

        </fieldset>
        <asp:HiddenField ID="hfLastUpdated" runat="server" />
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
                        <td><<asp:TextBox ID="txtLLM00" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM00" runat="server" ControlToValidate="txtLLM00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM00" runat="server" ForeColor="Red" Font-Size="XX-Small" ></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM05" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM05" runat="server" ControlToValidate="txtLLM05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM05" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM10" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM10" runat="server" ControlToValidate="txtLLM10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM10" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM15" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM15" runat="server" ControlToValidate="txtLLM15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM15" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM20" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM20" runat="server" ControlToValidate="txtLLM20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM20" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM25" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM25" runat="server" ControlToValidate="txtLLM25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM25" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM30" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM30" runat="server" ControlToValidate="txtLLM30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM30" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtLLM35" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM35" runat="server" ControlToValidate="txtLLM35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM35" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><=<asp:TextBox ID="txtLLM40" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtLLM40" runat="server" ControlToValidate="txtLLM40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtLLM40" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
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
                        <td><<asp:TextBox ID="txtFG00" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG00" runat="server" ControlToValidate="txtFG00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG00" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG05" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG05" runat="server" ControlToValidate="txtFG05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG05" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG10" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG10" runat="server" ControlToValidate="txtFG10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG10" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG15" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG15" runat="server" ControlToValidate="txtFG15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG15" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG20" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG20" runat="server" ControlToValidate="txtFG20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG20" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG25" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG25" runat="server" ControlToValidate="txtFG25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG25" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG30" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG30" runat="server" ControlToValidate="txtFG30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG30" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><<asp:TextBox ID="txtFG35" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG35" runat="server" ControlToValidate="txtFG35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG35" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                        <td><=<asp:TextBox ID="txtFG40" runat="server" Width="25px"></asp:TextBox>%<asp:RequiredFieldValidator ID="rfvtxtFG40" runat="server" ControlToValidate="txtFG40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator><asp:RangeValidator ID="rvtxtFG40" runat="server" ForeColor="Red" Font-Size="XX-Small"></asp:RangeValidator></td>
                    </tr>
                </table>
                <div class="div_button">
                    <asp:Button ID="btnSavePopup" runat="server" Text="Save" CssClass="action-button hvr-radial-out" OnClick="btnSavePopup_Click" />
                    &nbsp;&nbsp;
                </div>
            </div>
        </div>
    </div>
</asp:Content>
