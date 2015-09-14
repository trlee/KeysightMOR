<%@ Page Title="Delivery User Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DeliveryUser.aspx.cs" Inherits="KeysightMOR.ControlPanel.DeliveryUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="box">
            <h2>Evaluation Settings > Delivery</h2>

            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="upDeliveryUser" runat="server">
                <ContentTemplate>
                    <fieldset>
                <table style="width:70%;margin-left:auto;margin-right:auto">
                    <tr>
                        <td>Contract Manufacturer</td>
                        <td>
                            <asp:DropDownList ID="CM" runat="server" class="dropdown" AppendDataBoundItems="true" AutoPostBack="true">
                                <asp:ListItem Text="Pick CM" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvCM" runat="server" ControlToValidate="CM" ErrorMessage="*" ForeColor="Red" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <table style="float:right">
                                <tr>
                                    <td><asp:Button ID="Submit" runat="server" Text="Submit" class="action-button hvr-radial-out" OnClick="Submit_Click" /></td>
                                    <td><asp:Button ID="Cancel" runat="server" Text="Cancel" class="cancel_button" OnClick="Cancel_Click" /></td>
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
