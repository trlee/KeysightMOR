<%@ Page Title="Edit Score | Delivery | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DeliveryEditScore1.aspx.cs" Inherits="KeysightMOR.DeliveryEditScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/DeliveryEditScore.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="this_box">
            <h2 class="title">Edit Score > Delivery</h2>

            <fieldset>
                <div class="description">
                    <p class="title-description" style="text-align: center">
                        <asp:Label ID="lblCm" runat="server" Text="Selected CM" Font-Bold="true"></asp:Label>&nbsp;|&nbsp; 
                        <asp:Label ID="lblMonth" runat="server" Text="Month"></asp:Label>&nbsp;&nbsp;
                        <asp:Label ID="lblYear" runat="server" Text="Year"></asp:Label>
                    </p>
                </div>

                <br /><br />

                <div style="width:70%;margin-left:auto;margin-right:auto">
                    <asp:Label ID="lblStatus" runat="server" Font-Bold="true"></asp:Label>
                </div>

                <table class="this_table">
                    <tr>
                        <td class="item-title">
                            <h3 style="text-align: center">BRP & Manual</h3>
                        </td>
                        <td class="item-title">
                            <h3 style="text-align: center">Division</h3>
                        </td>
                        <td class="item-score">
                            <h3 style="text-align: center">Score (%)</h3>
                        </td>
                    </tr>

                    <tr>
                        <td>a) Act del vs req (CRD %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivBMa" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtBMa" runat="server" CssClass="txtbox" Width="50" Text="94"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtBMa" runat="server" ControlToValidate="txtBMa" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtBMa" runat="server" ControlToValidate="txtBMa" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>b) Act del vs comm (OTD %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivBMb" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtBMb" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtBMb" runat="server" ControlToValidate="txtBMb" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtBMb" runat="server" ControlToValidate="txtBMb" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>c) Commit vs req (Commit %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivBMc" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtBMc" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtBMc" runat="server" ControlToValidate="txtBMc" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtBMc" runat="server" ControlToValidate="txtBMc" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>d) Exception Commit (Exception %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivBMd" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtBMd" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtBMd" runat="server" ControlToValidate="txtBMd" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtBMd" runat="server" ControlToValidate="txtBMd" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>IODM</h3>
                        </td>
                        <td class="item-title">
                            <h3 style="text-align: center">Division</h3>
                        </td>
                        <td style="text-align: center">
                            <h3>Score</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>a) Act del vs po (CRD %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivIODMa" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtIODMa" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtIODMa" runat="server" ControlToValidate="txtIODMa" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtIODMa" runat="server" ControlToValidate="txtIODMa" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>b) Commit vs req (Commit %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivIODMb" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtIODMb" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtIODMb" runat="server" ControlToValidate="txtIODMb" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtIODMb" runat="server" ControlToValidate="txtIODMb" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>c) Exception Commit (Exception %)
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="lblDivIODMc" runat="server" Text="Division"></asp:Label>
                        </td>
                        <td class="cell_item">
                            <asp:TextBox ID="txtIODMc" runat="server" CssClass="txtbox" Width="50"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtIODMc" runat="server" ControlToValidate="txtIODMc" ErrorMessage="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="rvtxtIODMc" runat="server" ControlToValidate="txtIODMc" Type="Integer" ErrorMessage="Accepted Value: 0 - 100" MinimumValue="0" MaximumValue="100" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                        </td> 
                    </tr>

                </table>
                <br />

                <div class="div_button">
                    <table style="float: right">
                        <tr>
                            <td>
                                <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="action-button hvr-radial-out" OnClick="btnSave_Click" /></td>
                            <td>&nbsp;&nbsp;</td>
                            <td>
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="btnCancel_Click" /></td>
                        </tr>
                    </table>
                </div>

            </fieldset>
        </div>
    </div>
</asp:Content>
