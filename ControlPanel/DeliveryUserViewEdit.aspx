<%@ Page Title="Delivery User Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DeliveryUserViewEdit.aspx.cs" Inherits="KeysightMOR.ControlPanel.DeliveryUserViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/DeliveryUserViewEdit.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div >
        <div class="confD_box" style="margin-left: auto; margin-right: auto">
            <h2>Evaluation Settings > Delivery</h2>

            <fieldset>
                <div class="description">
                    <p class="title-description" style="text-align:center">View or edit current users for Delivery</p>
                </div>

                <table class="duve_table">
                    <tr>
                        <td>
                            <h3>Delivery Template (BRP and Manual)</h3>
                        </td>
                        <td>
                            <h3>Assigned Users</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>Actual Delivery vs Requirement</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>Actual Delivery vs Commitment</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>

                    <tr>
                        <td>Commitment vs Requirement</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>Exception Commit</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Delivery Template (IODM)</h3>
                        </td>
                        <td>
                            <h3>Assigned Users</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>Actual vs po</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>Commitment vs Requirement</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>Exception Commit</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                </table>

                <br />

                <div class="div_button">
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="action-button hvr-radial-out" OnClick="btnSave_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="btnCancel_Click"/>
                </div>
            </fieldset>

        </div>
    </div>

    <!----POP UP--->
    <div id="editdialog" class="overlay" style="margin-left: auto; margin-right: auto; text-align:center">
        <div class="popup">
            <a class="close" href="#">×</a>
            <br />
            <h2>Edit Users</h2>

            <table class="edituser_table">
                <tr>
                    <td align="center" class="td_h3">
                        <h3>Available Users</h3>
                    </td>
                    <td></td>
                    <td align="center" class="td_h3">
                        <h3>Assigned Users</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="lbAvailableUsers" runat="server" Height="200px" Width="350px" CssClass="list_box">
                            <asp:ListItem>Art McLean (CTD)</asp:ListItem>
                            <asp:ListItem>Teoh TC (CTD)</asp:ListItem>
                            <asp:ListItem>HENG SY (CTD)</asp:ListItem>
                            <asp:ListItem>Art McLean (SA)</asp:ListItem>
                            <asp:ListItem>Lim Eng Chuan (SA)</asp:ListItem>
                            <asp:ListItem>Tan Hian See (SA)</asp:ListItem>
                            <asp:ListItem>Wong Weng Yew (SA)</asp:ListItem>
                        </asp:ListBox>
                    </td>

                    <td class="cell_buttons">
                        <p>
                            <asp:Button ID="btnAssignUser" runat="server" Text=">>" CssClass="popupButton" />
                        </p>
                        <p>
                            <asp:Button ID="btnRemoveUser" runat="server" Text="<<" CssClass="popupButton" />
                        </p>
                        <p>
                            <asp:Button ID="btnSaveChanges" runat="server" Text="Save" CssClass="popupButton" />
                        </p>
                        <p>
                            <asp:Button ID="btnCancelChanges" runat="server" Text="Cancel" CssClass="popupButton" />
                        </p>
                    </td>

                    <td>
                        <asp:ListBox ID="lbAssignedUsers" runat="server" Height="200px" Width="350px" CssClass="list_box">
                            <asp:ListItem>Lim Eng Chuan (MBO)</asp:ListItem>
                            <asp:ListItem>Tan Hian See (MBO)</asp:ListItem>
                            <asp:ListItem>Wong Bee (MMA)</asp:ListItem>
                            <asp:ListItem>Tan Chin Sian (MMA)</asp:ListItem>
                            <asp:ListItem>Lim Kin Moon (MMA)</asp:ListItem>
                            <asp:ListItem>Leong Wai Meng (MMA)</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</asp:Content>
