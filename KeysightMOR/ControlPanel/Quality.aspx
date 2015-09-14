<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Quality.aspx.cs" Inherits="KeysightMOR.Quality" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/Quality.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="this_box">       
        <h2>
            Score Settings
        </h2>

        <fieldset>

             <div class="description">
                    <p class="title-description">Configure score settings for Quality</p>
                </div>


<div style="margin-left: auto; margin-right: auto; width: 80%; text-align: center;">
                <table style="margin-left: auto; margin-right: auto; width: 80%; text-align:center">
                    <tr>
                        <td>Contract Manufacturer</td>

                        <td>
                            <asp:DropDownList ID="CM" runat="server" class="dropdown" OnSelectedIndexChanged="CM_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Pick CM" Value="-1" />
                                <asp:ListItem Text="Agilent" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Jabil" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Intel" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Keysight" Value="4"></asp:ListItem>
                                <asp:ListItem Text="HP" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                        </td>

                        <td>
                            <asp:RequiredFieldValidator ID="rfvCM" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="CM" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>

                <br />

                <table style="margin-left: auto; margin-right: auto; width: 80%; text-align:center">
                    <tr>
                        <td>Month</td>
                        <td>
                            <asp:DropDownList ID="Month" runat="server" class="dropdown" OnSelectedIndexChanged="Month_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Pick Month" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                <asp:ListItem Text="March" Value="3"></asp:ListItem>
                                <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                <asp:ListItem Text="November" Value="11"></asp:ListItem>
                                <asp:ListItem Text="December" Value="12"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvMonth" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Month" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>

                        <td>Year</td>
                        <td>
                            <asp:DropDownList ID="Year" runat="server" class="dropdown" OnSelectedIndexChanged="Year_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem Text="Pick Year" Value="-1" />
                                <asp:ListItem Text="2013" Value="2013"></asp:ListItem>
                                <asp:ListItem Text="2014" Value="2014"></asp:ListItem>
                                <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
                                <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvYear" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Year" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                </table>

    <p><asp:Button ID="Submit" runat="server" Text="Submit" class="action-button hvr-radial-out" OnClick="Submit_Click"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" class="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>
                </p>
            </div>

            </fieldset>
        </div>
        </center>
</asp:Content>
