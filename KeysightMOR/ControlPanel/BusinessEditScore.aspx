<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessEditScore1.aspx.cs" Inherits="KeysightMOR.BusinessEditScore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/BusinessEditScore.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:auto;margin-right:auto">
    <div class="confB_box" style="margin-left:auto;margin-right:auto">       
        <h2>Edit Score > Business</h2>

        <fieldset>
            <div class="description">
                <p class="title-description" style="text-align:center">Selected CM, Month, Year</p> 
                <p style="text-align:center">Score Edit Status: <asp:Label ID="lblEditStatus" runat="server" Font-Bold="true"></asp:Label></p>
            </div>
    
            <div class="buve_table">
                <table>
                    <tr>
                        <td style="width:100px"><h3>B1</h3></td>
                        <td style="width:60px"><h3>1(a)</h3></td>
                        <td></td>
                        <td style="width:60px"><h3>1(b)</h3></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="width:100px;text-align:left;">SCM</td>
                        <td><asp:TextBox ID="txtB1Scm1a" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtB1Scm1a" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB1Scm1b" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtB1Scm1b" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="text-align:left; width: 100px;">CM AOS</td>
                        <td><asp:TextBox ID="txtB1CmAos1a" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtB1CmAos1a" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB1CmAos1b" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtB1CmAos1b" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="text-align:left; width: 100px;">MSC</td>
                        <td><asp:TextBox ID="txtB1Msc1a" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtB1Msc1a" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB1Msc1b" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtB1Msc1b" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
                <br />
                <br />
                <table>
                    <tr>
                        <td><h3>B2</h3></td>
                            <td style="width:60px"><h3>1(a)</h3></td>
                            <td></td>
                            <td style="width:60px"><h3>1(b)</h3></td>
                            <td></td>
                            <td style="width:60px"><h3>1(c)</h3></td>
                            <td></td>
                            <td style="width:60px"><h3>1(d)</h3></td>
                            <td></td>
                            <td style="width:60px"><h3>1(e)</h3></td>
                            <td></td>
                            <td style="width:60px"><h3>2</h3></td>
                            <td></td>
                    </tr>
                    <tr>
                        <td style="width:100px; text-align:left;">SCM</td>
                        <td><asp:TextBox ID="txtB2Scm1a" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtB2Scm1a" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Scm1b" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtB2Scm1b" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Scm1c" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtB2Scm1c" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Scm1d" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtB2Scm1d" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Scm1e" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtB2Scm1e" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Scm2" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtB2Scm2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width:100px; text-align:left;">CM AOS</td>
                        <td><asp:TextBox ID="txtB2CmAos1a" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtB2CmAos1a" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2CmAos1b" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtB2CmAos1b" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2CmAos1c" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtB2CmAos1c" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2CmAos1d" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtB2CmAos1d" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2CmAos1e" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtB2CmAos1e" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2CmAos2" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtB2CmAos2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width:100px; text-align:left;">MSC</td>
                        <td><asp:TextBox ID="txtB2Msc1a" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtB2Msc1a" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Msc1b" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtB2Msc1b" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Msc1c" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="txtB2Msc1c" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Msc1d" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="txtB2Msc1d" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Msc1e" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="txtB2Msc1e" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                        <td><asp:TextBox ID="txtB2Msc2" runat="server" Text="4" Width="50"></asp:TextBox></td>
                        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="txtB2Msc2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator></td>
                    </tr>
                </table>
            </div>
            <br />

            <div class="div_button">
                <table style="float:right">
                    <tr>
                        <td>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit"  CssClass="action-button hvr-radial-out" OnClick="btnEdit_Click"/>
                        </td>

                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="action-button hvr-radial-out" OnClick="btnSave_Click" Visible="false" OnClientClick="return confirm('Are you sure you want to save the changes done?')"/>
                        </td>

                        <td>
                            <asp:HyperLink ID="hlCancelEdit" runat="server" Text="Cancel" CssClass="cancel_button" NavigateUrl="~/ControlPanel/Index.aspx"></asp:HyperLink>
                            <%--<asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>--%>
                        </td>
                    </tr>
                </table>               
            </div>
        </fieldset>
    </div>
    </div>
</asp:Content>
