<%@ Page Title="Delivery Score Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DeliveryScoreViewEdit.aspx.cs" Inherits="KeysightMOR.ControlPanel.DeliveryScoreViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/DeliveryScoreViewEdit.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="confD_box">
        <h2>Score Settings > Delivery</h2>

        <fieldset>
            <div class="description">
                <p class="title-description" style="text-align:center">View or edit current score settings for Delivery</p>
            </div>

            <table class="confD_table">
                <tr>
                    <td colspan="7">
                        <h3>Delivery Template (BRP and Manual)</h3>
                    </td>
                    <td colspan="3">
                        <h3>Weightage:
                            <asp:TextBox runat="server" ID="BRPWeightage" Width="20"></asp:TextBox>%

                            <asp:RequiredFieldValidator ID="rfvBRPWeightage" runat="server" ControlToValidate="BRPWeightage" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Actual Delivery vs Requirement</td>
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
                    <td>
                        <asp:TextBox ID="txtADR00" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR00" runat="server" ControlToValidate="txtADR00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR05" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtADR05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR10" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator56" runat="server" ControlToValidate="txtADR10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR15" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtADR15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR20" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtADR20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR25" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtADR25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR30" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtADR30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR35" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtADR35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtADR40" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtADR40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Actual Delivery vs Commitment</td>
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
                    <td>
                        <asp:TextBox ID="txtADC00" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtADC00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC05" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtADC05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC10" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtADC10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC15" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtADC15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC20" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtADC20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC25" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtADC25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC30" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtADC30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC35" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtADC35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtADC40" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtADC40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Commitment vs Requirement</td>
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
                    <td>
                        <asp:TextBox ID="txtCR100" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtCR100" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR105" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtCR105" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR110" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtCR110" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR115" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtCR115" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR120" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtCR120" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR125" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtCR125" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR130" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtCR130" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR135" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtCR135" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtCR140" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="txtCR140" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Exception Commit</td>
                    <td>0</td>
                    <td>0.1</td>
                    <td>0.2</td>
                    <td>0.3</td>
                    <td>0.35</td>
                    <td>0.4</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEC100" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="txtEC100" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC101" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="txtEC101" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC102" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="txtEC102" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC103" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="txtEC103" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC1035" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="txtEC1035" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtEC104" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="txtEC104" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        <h3>Delivery Template (IODM)</h3>
                    </td>
                    <td colspan="3">
                        <h3>Weightage:
                            <asp:TextBox runat="server" ID="IODMWeightage" Width="20"></asp:TextBox>%

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator57" runat="server" ControlToValidate="IODMWeightage" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Actual vs Po</td>
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
                    <td>
                        <asp:TextBox ID="txtAP00" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="txtAP00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP05" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="txtAP05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP10" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="txtAP10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP15" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="txtAP15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP20" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="txtAP20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP25" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="txtAP25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP30" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="txtAP30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP35" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="txtAP35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtAP40" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="txtAP40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Commitment vs Requirement</td>
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
                    <td>
                        <asp:TextBox ID="txtCR200" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="txtCR200" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR205" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="txtCR205" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR210" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="txtCR210" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR215" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="txtCR215" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR220" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ControlToValidate="txtCR220" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR225" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator46" runat="server" ControlToValidate="txtCR225" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR230" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator47" runat="server" ControlToValidate="txtCR230" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR235" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator48" runat="server" ControlToValidate="txtCR235" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtCR240" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator49" runat="server" ControlToValidate="txtCR240" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2">Exception Commit</td>
                    <td>0</td>
                    <td>0.1</td>
                    <td>0.2</td>
                    <td>0.3</td>
                    <td>0.35</td>
                    <td>0.4</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEC200" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator50" runat="server" ControlToValidate="txtEC200" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC201" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator51" runat="server" ControlToValidate="txtEC201" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC202" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator52" runat="server" ControlToValidate="txtEC202" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC203" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator53" runat="server" ControlToValidate="txtEC203" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC2035" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator54" runat="server" ControlToValidate="txtEC2035" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtEC204" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator55" runat="server" ControlToValidate="txtEC204" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                    </td>
                </tr>

            </table>

            <div class="div_button">
                <asp:Button ID="Save" runat="server" Text="Save" CssClass="action-button hvr-radial-out" />
                &nbsp;&nbsp;
                <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="Cancel_Click" />
            </div>


        </fieldset>

    </div>
</asp:Content>
