<%@ Page Title="Add Contract Manufacturer | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="AddCM.aspx.cs" Inherits="KeysightMOR.ControlPanel.AddCM" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="box" style="text-align: center">
            <h2>Add Contract Manufacturers</h2>

            <fieldset>
                <p>Contract Manufacturer Name:</p>

                <p>
                    <asp:TextBox ID="txtAddCm" runat="server" class="txtbox"></asp:TextBox>
                </p>

                <p>
                    <asp:RequiredFieldValidator ID="valdtxtAddCm" runat="server" ControlToValidate="txtAddCm" ErrorMessage="You must enter a CM name!" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                </p>

                <p>
                    <asp:Label ID="lblAddCmStatus" runat="server"></asp:Label>
                </p>

                <p>
                    <asp:Button ID="btnCreateCm" runat="server" Text="Create" CssClass="action-button hvr-radial-out" OnClick="btnCreateCm_Click"
                        OnClientClick="return confirm('Are you sure you want to add this CM into the database?')" />
                    &nbsp;&nbsp;&nbsp;
                            
                    <asp:HyperLink ID="hlCancelCm" runat="server" Text="Cancel" CssClass="cancel_button" NavigateUrl="~/ControlPanel/Index.aspx"></asp:HyperLink>
                    <%-- <asp:Button ID="btnCancelCm" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>--%>
                </p>
            </fieldset>
        </div>
        <%--End of box div--%>
    </div>
    <%--End of Web form centering div--%>
</asp:Content>
