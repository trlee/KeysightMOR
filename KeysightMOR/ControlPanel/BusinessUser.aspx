<%@ Page Title="Business User Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessUser.aspx.cs" Inherits="KeysightMOR.ControlPanel.BusinessUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
    <div class="box">       
        <h2>
           
           Evaluation Settings > Business
        </h2>

        <fieldset>
                
                <p>
                    Contract Manufacturer : 
                </p>
            <p>
   <asp:DropDownList ID="CM" runat="server" class="dropdown">
                            <asp:ListItem>Agilent</asp:ListItem>
                            <asp:ListItem>Jabil</asp:ListItem>
                            <asp:ListItem>Intel</asp:ListItem>
                            <asp:ListItem>Keysight</asp:ListItem>
                            <asp:ListItem>HP</asp:ListItem>
                            </asp:DropDownList></p>
                <p><asp:Button ID="Submit" runat="server" Text="Submit" class="action-button hvr-radial-out" PostBackUrl="~/ControlPanel/BusinessUserViewEdit.aspx"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" class="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>
                </p>
                           </fieldset>
    </div>
        </center>           
</asp:Content>
