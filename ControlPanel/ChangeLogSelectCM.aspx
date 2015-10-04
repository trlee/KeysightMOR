<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ChangeLogSelectCM.aspx.cs" Inherits="KeysightMOR.ChangeLogSelectCM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .dropdown_2
        {
            height: 37px;
           overflow: hidden;     
           border: 2px solid #808080;
           -webkit-appearance: none;
           -moz-appearance: none;
           padding: 5px;
           font-size: 16px;
            width: 160px;
        }
    </style>
    <center>
    <div class="box">       
        <h2>
           
           Change Log
        </h2>

        <fieldset>
            <p>
                <asp:Label ID="lblStatus" runat="server" Text="" ForeColor="Red"></asp:Label>
            </p>
                
                <p>
                    Contract Manufacturer : 
                </p>
            <p>
                            <asp:DropDownList ID="CM" runat="server" class="dropdown">
                            </asp:DropDownList>

            </p>
            <p> <!--- temporary solution until further decisions are made--->
   <asp:DropDownList ID="RespDev" runat="server" class="dropdown" AutoPostBack="true" OnSelectedIndexChanged="RespDev_Changed">                            
                            </asp:DropDownList>

            </p>
                <p>
                    <asp:Button ID="Submit" runat="server" Text="Submit" class="action-button hvr-radial-out" OnClick="Submit_Click"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" class="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>
                </p>
                           </fieldset>
    </div>
        </center>           
</asp:Content>
