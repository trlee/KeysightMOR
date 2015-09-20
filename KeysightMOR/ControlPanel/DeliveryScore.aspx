<%@ Page Title="Delivery Score Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DeliveryScore.aspx.cs" Inherits="KeysightMOR.ControlPanel.DeliveryScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" />
    <div style="margin-left: auto; margin-right: auto">
        <div class="box">
            <h2>Score Settings &gt; Delivery</h2>

            <fieldset>
                <div class="description">
                    <p class="title-description" style="text-align: center">Configure score settings for Delivery</p>
                </div>

                <asp:UpdatePanel ID="upDeliveryScore" runat="server">
                    <ContentTemplate>
                        <table style="width: 70%; margin-left: auto; margin-right: auto; text-align: center">
                            <tr>
                                <td>Contract Manufacturer</td>
                                <td>
                                    <asp:DropDownList ID="ddlCM" runat="server" class="dropdown" OnSelectedIndexChanged="CM_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick CM" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlCM" runat="server" ControlToValidate="ddlCM" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table style="width: 70%; margin-left: auto; margin-right: auto; text-align: center">
                            <tr>
                                <td>Month</td>
                                <td>
                                    <asp:DropDownList ID="ddlMonth" runat="server" class="dropdown" OnSelectedIndexChanged="Month_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Month" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlMonth" runat="server" ControlToValidate="ddlMonth" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                                </td>

                                <td>&nbsp;&nbsp;</td>

                                <td>Year</td>
                                <td>
                                    <asp:DropDownList ID="ddlYear" runat="server" class="dropdown" OnSelectedIndexChanged="Year_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Year" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="5">
                                    <%-- Empty space intended --%>
                                    <br />
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <td colspan="5" style="text-align: right">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="action-button hvr-radial-out" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="Cancel_Click" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </fieldset>
        </div>
    </div>
</asp:Content>
