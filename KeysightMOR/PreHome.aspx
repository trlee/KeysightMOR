<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="PreHome.aspx.cs" Inherits="KeysightMOR.PreHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Assets/Stylesheets/PreHome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="this_box">       
        <h2>Evaluate</h2>

        <fieldset>
            <div class="description">
                <p class="title-description">Select CM and Division Representing to Evaluate</p>
            </div>

            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <table>
                <tr>
                    <td>Contract Manufacturer</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="CM" runat="server"  CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="CM_Changed">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Division
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="Division" runat="server" CssClass="dropdown">
                        </asp:DropDownList>
                    </td>
                </tr>

            </table>

                                            
                </ContentTemplate>
            </asp:UpdatePanel>


            <p><asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label></p>
            <p>    <asp:Button ID="Select"  runat="server" Text="Select" CssClass="action-button hvr-radial-out" OnClick="Select_Click"/>&nbsp;&nbsp;
            </p>
        </fieldset>
        </div>
    </center>
</asp:Content>
