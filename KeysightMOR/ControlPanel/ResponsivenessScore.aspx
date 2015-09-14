<%@ Page Title="Responsiveness Score Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ResponsivenessScore.aspx.cs" Inherits="KeysightMOR.ControlPanel.ResponsivenessScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="box">
            <h2>Score Settings &gt; Responsiveness</h2>

            <fieldset>
                <div class="description">
                    <p class="title-description" style="text-align:center">Configure score settings for Responsiveness</p>
                </div>

                <asp:ScriptManager runat="server" />
                <asp:UpdatePanel ID="upDeliveryScore" runat="server">
                    <ContentTemplate>
                        <table style="width: 70%; margin-left: auto; margin-right: auto; text-align: center">
                            <tr>
                                <td colspan="2">CM</td>
                                <td colspan="2">
                                    <asp:DropDownList ID="ddlCM" runat="server" class="dropdown" OnSelectedIndexChanged="ddlCM_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick CM" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlCM" runat="server" ControlToValidate="ddlCM" ErrorMessage="*" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>

                        <br />

                        <table style="width: 70%; margin-left: auto; margin-right: auto; text-align: center">
                            <tr>
                                <td>Month</td>
                                <td>
                                    <asp:DropDownList ID="ddlMonth" runat="server" class="dropdown" OnSelectedIndexChanged="ddlMonth_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Month" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlMonth" runat="server" ControlToValidate="ddlMonth" ErrorMessage="*" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>

                                <td>&nbsp;&nbsp;</td>

                                <td>Year</td>
                                <td>
                                    <asp:DropDownList ID="ddlYear" runat="server" class="dropdown" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Year" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlYear" runat="server" ControlToValidate="ddlYear" ErrorMessage="*" InitialValue="-1" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="btnCancel_Click"/>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </fieldset>

        </div>
    </div>
</asp:Content>
