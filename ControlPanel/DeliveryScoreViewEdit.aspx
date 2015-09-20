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

            <div style="text-align:center">
                <asp:Label ID="lblStatusMsg" runat="server" Font-Bold="true"></asp:Label>
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
                            <asp:RangeValidator ID="rvBRPWeightage" runat="server" ControlToValidate="BRPWeightage" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Double" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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
                        <asp:RangeValidator ID="rvtxtADR00" runat="server" ControlToValidate="txtADR00" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR05" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR05" runat="server" ControlToValidate="txtADR05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR05" runat="server" ControlToValidate="txtADR05" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR10" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR10" runat="server" ControlToValidate="txtADR10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR10" runat="server" ControlToValidate="txtADR10" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR15" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR15" runat="server" ControlToValidate="txtADR15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR15" runat="server" ControlToValidate="txtADR15" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR20" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR20" runat="server" ControlToValidate="txtADR20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR0020" runat="server" ControlToValidate="txtADR20" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR25" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR25" runat="server" ControlToValidate="txtADR25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR25" runat="server" ControlToValidate="txtADR25" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR30" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR30" runat="server" ControlToValidate="txtADR30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR30" runat="server" ControlToValidate="txtADR30" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADR35" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR35" runat="server" ControlToValidate="txtADR35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR35" runat="server" ControlToValidate="txtADR35" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtADR40" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADR40" runat="server" ControlToValidate="txtADR40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADR40" runat="server" ControlToValidate="txtADR40" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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

                        <asp:RequiredFieldValidator ID="rfvtxtADC00" runat="server" ControlToValidate="txtADC00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC00" runat="server" ControlToValidate="txtADC00" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC05" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC05" runat="server" ControlToValidate="txtADC00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC05" runat="server" ControlToValidate="txtADC00" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC10" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC10" runat="server" ControlToValidate="txtADC10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC10" runat="server" ControlToValidate="txtADC10" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC15" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC15" runat="server" ControlToValidate="txtADC15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC15" runat="server" ControlToValidate="txtADC15" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC20" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC20" runat="server" ControlToValidate="txtADC20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC20" runat="server" ControlToValidate="txtADC20" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC25" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC25" runat="server" ControlToValidate="txtADC25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC25" runat="server" ControlToValidate="txtADC25" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC30" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC30" runat="server" ControlToValidate="txtADC30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC30" runat="server" ControlToValidate="txtADC30" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtADC35" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC35" runat="server" ControlToValidate="txtADC35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC35" runat="server" ControlToValidate="txtADC35" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtADC40" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtADC40" runat="server" ControlToValidate="txtADC40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtADC40" runat="server" ControlToValidate="txtADC40" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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

                        <asp:RequiredFieldValidator ID="rfvtxtCR100" runat="server" ControlToValidate="txtCR100" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR100" runat="server" ControlToValidate="txtCR100" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR105" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR105" runat="server" ControlToValidate="txtCR105" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        v<asp:RangeValidator ID="rvtxtCR105" runat="server" ControlToValidate="txtCR105" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR110" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR110" runat="server" ControlToValidate="txtCR110" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR110" runat="server" ControlToValidate="txtCR110" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR115" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR115" runat="server" ControlToValidate="txtCR115" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR115" runat="server" ControlToValidate="txtCR115" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR120" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR120" runat="server" ControlToValidate="txtCR120" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR120" runat="server" ControlToValidate="txtCR120" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR125" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR125" runat="server" ControlToValidate="txtCR125" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR125" runat="server" ControlToValidate="txtCR125" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR130" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR130" runat="server" ControlToValidate="txtCR130" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR130" runat="server" ControlToValidate="txtCR130" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR135" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR135" runat="server" ControlToValidate="txtCR135" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR135" runat="server" ControlToValidate="txtCR135" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtCR140" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR140" runat="server" ControlToValidate="txtCR140" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR140" runat="server" ControlToValidate="txtCR140" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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

                        <asp:RequiredFieldValidator ID="rfvtxtEC100" runat="server" ControlToValidate="txtEC100" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC100" runat="server" ControlToValidate="txtEC100" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC101" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC101" runat="server" ControlToValidate="txtEC101" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC101" runat="server" ControlToValidate="txtEC101" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC102" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC102" runat="server" ControlToValidate="txtEC102" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC102" runat="server" ControlToValidate="txtEC102" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC103" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC103" runat="server" ControlToValidate="txtEC103" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC103" runat="server" ControlToValidate="txtEC103" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC1035" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC1035" runat="server" ControlToValidate="txtEC1035" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC1035" runat="server" ControlToValidate="txtEC1035" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtEC104" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC104" runat="server" ControlToValidate="txtEC104" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC104" runat="server" ControlToValidate="txtEC104" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="7">
                        <h3>Delivery Template (IODM)</h3>
                    </td>
                    <td colspan="3">
                        <h3>Weightage:
                            <asp:TextBox runat="server" ID="IODMWeightage" Width="20"></asp:TextBox>%

                            <asp:RequiredFieldValidator ID="rfvIODMWeightage" runat="server" ControlToValidate="IODMWeightage" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvIODMWeightage" runat="server" ControlToValidate="IODMWeightage" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Double" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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

                        <asp:RequiredFieldValidator ID="rfvtxtAP00" runat="server" ControlToValidate="txtAP00" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP00" runat="server" ControlToValidate="txtAP00" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP05" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP05" runat="server" ControlToValidate="txtAP05" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP05" runat="server" ControlToValidate="txtAP05" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP10" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP10" runat="server" ControlToValidate="txtAP10" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP10" runat="server" ControlToValidate="txtAP10" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP15" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP15" runat="server" ControlToValidate="txtAP15" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP15" runat="server" ControlToValidate="txtAP15" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP20" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP20" runat="server" ControlToValidate="txtAP20" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP20" runat="server" ControlToValidate="txtAP20" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP25" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP25" runat="server" ControlToValidate="txtAP25" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP25" runat="server" ControlToValidate="txtAP25" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP30" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP30" runat="server" ControlToValidate="txtAP30" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP30" runat="server" ControlToValidate="txtAP30" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtAP35" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP35" runat="server" ControlToValidate="txtAP35" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP35" runat="server" ControlToValidate="txtAP35" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtAP40" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtAP40" runat="server" ControlToValidate="txtAP40" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtAP40" runat="server" ControlToValidate="txtAP40" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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

                        <asp:RequiredFieldValidator ID="rfvtxtCR200" runat="server" ControlToValidate="txtCR200" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR200" runat="server" ControlToValidate="txtCR200" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR205" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR205" runat="server" ControlToValidate="txtCR205" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR205" runat="server" ControlToValidate="txtCR205" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR210" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR210" runat="server" ControlToValidate="txtCR210" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR210" runat="server" ControlToValidate="txtCR210" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR215" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR215" runat="server" ControlToValidate="txtCR215" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR215" runat="server" ControlToValidate="txtCR215" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR220" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR220" runat="server" ControlToValidate="txtCR220" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR220" runat="server" ControlToValidate="txtCR220" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR225" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR225" runat="server" ControlToValidate="txtCR225" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR225" runat="server" ControlToValidate="txtCR225" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR230" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR230" runat="server" ControlToValidate="txtCR230" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR230" runat="server" ControlToValidate="txtCR230" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtCR235" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR235" runat="server" ControlToValidate="txtCR235" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR235" runat="server" ControlToValidate="txtCR235" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtCR240" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtCR240" runat="server" ControlToValidate="txtCR240" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtCR240" runat="server" ControlToValidate="txtCR240" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
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

                        <asp:RequiredFieldValidator ID="rfvtxtEC200" runat="server" ControlToValidate="txtEC200" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC200" runat="server" ControlToValidate="txtEC200" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC201" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC201" runat="server" ControlToValidate="txtEC201" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC201" runat="server" ControlToValidate="txtEC201" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC202" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC202" runat="server" ControlToValidate="txtEC202" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC202" runat="server" ControlToValidate="txtEC202" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC203" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC203" runat="server" ControlToValidate="txtEC203" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC203" runat="server" ControlToValidate="txtEC203" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><<asp:TextBox ID="txtEC2035" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC2035" runat="server" ControlToValidate="txtEC2035" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC2035" runat="server" ControlToValidate="txtEC2035" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                    <td><=<asp:TextBox ID="txtEC204" runat="server" Width="20"></asp:TextBox>
                        %

                        <asp:RequiredFieldValidator ID="rfvtxtEC204" runat="server" ControlToValidate="txtEC204" ErrorMessage="*" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvtxtEC204" runat="server" ControlToValidate="txtEC204" ErrorMessage="Value must be between 0-100" Font-Size="XX-Small" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="100"></asp:RangeValidator>
                    </td>
                </tr>

            </table>

            <div class="div_button">
                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="action-button hvr-radial-out" OnClick="btnSave_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="Cancel_Click" />
            </div>

            <asp:HiddenField ID="hfLastUpdate" runat="server" />
        </fieldset>

    </div>
</asp:Content>
