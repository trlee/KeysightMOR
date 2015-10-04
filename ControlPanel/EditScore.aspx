<%@ Page Title="Edit Score | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="EditScore.aspx.cs" Inherits="KeysightMOR.ControlPanel.DeliveryUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="box">
            <h2>Edit Score</h2>

            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="upEditScore" runat="server">
                <ContentTemplate>
                    <fieldset>
                        <table style="width: 70%; margin-left: auto; margin-right: auto">
                            <tr>
                                <td>Contract Manufacturer</td>
                                <td>
                                    <asp:DropDownList ID="CM" runat="server" class="dropdown" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick CM" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvCM" runat="server" ControlToValidate="CM" ErrorMessage="*" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <table style="width: 70%; margin-left: auto; margin-right: auto; text-align: center">
                            <tr>
                                <td>Month</td>
                                <td>
                                    <asp:DropDownList ID="Month" runat="server" class="dropdown" OnSelectedIndexChanged="Month_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Month" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlMonth" runat="server" ControlToValidate="Month" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                                </td>

                                <td>&nbsp;&nbsp;</td>

                                <td>Year</td>
                                <td>
                                    <asp:DropDownList ID="Year" runat="server" class="dropdown" OnSelectedIndexChanged="Year_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                        <asp:ListItem Text="Pick Year" Value="-1"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvDdlYear" runat="server" ControlToValidate="Year" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        <table>

                            <tr>
                                <td colspan="2">
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <td colspan="2">
                                    <table style="float: right">
                                        <tr>
                                            <td>
                                                <asp:Button ID="Select" runat="server" Text="Select" class="action-button hvr-radial-out" OnClick="Select_Click" /></td>
                                            <td>
                                                <asp:Button ID="Cancel" runat="server" Text="Cancel" class="cancel_button" OnClick="Cancel_Click" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
