<%@ Page Title="Responsiveness Evaluation Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ResponsivenessUser.aspx.cs" Inherits="KeysightMOR.ControlPanel.ResponsivenessUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="box">
            <h2>Evaluation Settings > Responsiveness
            </h2>

            <fieldset>
                <asp:ScriptManager runat="server" />
                <asp:UpdatePanel ID="UPResponsivenessUser" runat="server">
                    <ContentTemplate>
                        <table style="width: 70%; margin-left: auto; margin-right: auto">
                            <tr>
                                <td>Contract Manufacturer: </td>
                                <td>
                                    <asp:DropDownList ID="ddlCm" runat="server" class="dropdown" OnSelectedIndexChanged="ddlCm_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick CM" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="2">
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <td style="text-align: right" colspan="2">
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="action-button hvr-radial-out" OnClick="btnSubmit_Click" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="cancel_button" OnClick="btnCancel_Click" />
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </fieldset>
        </div>
    </div>
</asp:Content>
