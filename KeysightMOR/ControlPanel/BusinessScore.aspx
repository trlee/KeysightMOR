<%@ Page Title="Business Score Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessScore.aspx.cs" Inherits="KeysightMOR.ControlPanel.BusinessScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:auto;margin-right:auto">
         <div class="box" style="text-align:center">       
            <h2>          
                Score Settings &gt;
                 Business
            </h2>

             <%-- Design code that fetches CM data from DB --%>

        <fieldset>
             <div class="description">
                 <p class="title-description">Configure score settings for Business</p>
             </div>

            <div style="margin-left: auto; margin-right: auto; width: 80%; text-align: center;">
                <table style="margin-left: auto; margin-right: auto; width: 80%; text-align:center">
                    <tr>
                        <td>Contract Manufacturer</td>

                        <td>
                            <asp:DropDownList ID="CM" runat="server" class="dropdown" OnSelectedIndexChanged="CM_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true">
                                <asp:ListItem Text="Pick CM" Value="-1" />
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
                            <asp:DropDownList ID="Month" runat="server" class="dropdown" OnSelectedIndexChanged="Month_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true">
                                <asp:ListItem Text="Pick Month" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvMonth" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Month" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>

                        <td>Year</td>
                        <td>
                            <asp:DropDownList ID="Year" runat="server" class="dropdown" OnSelectedIndexChanged="Year_SelectedIndexChanged" AutoPostBack="true" AppendDataBoundItems="true">
                                <asp:ListItem Text="Pick Year" Value="-1" />
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfvYear" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Year" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </div>
                
            <br /><br />

            <div style="margin-left:auto;margin-right:auto;width:75%">
                <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="action-button hvr-radial-out" OnClick="Submit_Click"/>
                            &nbsp;&nbsp;
                <asp:HyperLink ID="hlCancel" runat="server" Text="Cancel" CssClass="cancel_button" NavigateUrl="~/ControlPanel/Index.aspx"></asp:HyperLink>   
            </div>
          </fieldset>
    </div> 
     </div>       
</asp:Content>
