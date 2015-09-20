<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessSelectEditScore.aspx.cs" Inherits="KeysightMOR.BusinessSelectEditScore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/EditScore/BusinessSelectEditScore.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager runat="server" />
    <div class="this_box">
        <h2>Edit Score > Business</h2>
        <fieldset>
            <div class="description">
                <p class="title-description">Edit scores for Business</p>
            </div>

            <asp:UpdatePanel ID="upBusinessEditScore" runat="server">
                <ContentTemplate>
                    <p>
                        Month
                        <asp:DropDownList ID="Month" runat="server" class="dropdown" OnSelectedIndexChanged="Year_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                            <asp:ListItem Text="Pick Month" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDdlMonth" runat="server" ControlToValidate="Month" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        Year
                        <asp:DropDownList ID="Year" runat="server" class="dropdown" OnSelectedIndexChanged="Year_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                            <asp:ListItem Text="Pick Year" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDdlYear" runat="server" ControlToValidate="Year" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        Contract Manufacturer 
                            <asp:DropDownList ID="CM" runat="server" class="dropdown" OnSelectedIndexChanged="CM_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                                <asp:ListItem Text="Pick CM" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvDdlCM" runat="server" ControlToValidate="CM" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        Division
                        <asp:DropDownList ID="Division" runat="server" class="dropdown" OnSelectedIndexChanged="Division_SelectedIndexChanged" AppendDataBoundItems="true" AutoPostBack="true">
                            <asp:ListItem Text="Pick Division" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDdlDiv" runat="server" ControlToValidate="Division" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                        &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        User
                        <asp:DropDownList ID="User" runat="server" class="dropdown">
                            <asp:ListItem Text="Pick User" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvDdlUser" runat="server" ControlToValidate="User" ErrorMessage="*" InitialValue="-1"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Button ID="Select" runat="server" Text="Select" CssClass="action-button hvr-radial-out" OnClick="Select_Click" />
                        &nbsp;&nbsp;            
                        <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="cancel_button" OnClick="Cancel_Click"/>
                    </p>
                </ContentTemplate>
            </asp:UpdatePanel>
        </fieldset>
    </div>
</asp:Content>
