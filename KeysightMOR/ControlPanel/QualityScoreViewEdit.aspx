<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="QualityScoreViewEdit.aspx.cs" Inherits="KeysightMOR.QualityScoreViewEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/QualityScoreViewEdit.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="this_box">       
        <h2>
            Score Settings
        </h2>

        <fieldset>
            <p class="p_validator"> <!--temporary-->

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" Font-Size="Small" ControlToValidate="Qualityscore" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
              
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="The value has to be between 0 to 4" Font-Size="Small" ControlToValidate="Qualityscore" Display="Dynamic" ForeColor="Red" MaximumValue="4" MinimumValue="0"></asp:RangeValidator>

                 <asp:Label ID="lblSubmitDbStatus" runat="server" ForeColor="Red" Font-Size="small"></asp:Label>
            </p>

             <div class="description">

                    <p class="title-description">Enter score for Quality</p>
                </div>

            <p>
                <asp:TextBox ID="qualityScore" runat="server" Width="80px" CssClass="txtbox"></asp:TextBox>
            </p>

            

           <div class="div_button">
                    <asp:Button ID="Save" runat="server" Text="Save" CssClass="action-button hvr-radial-out" OnClick="Save_Click1"/>
            &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/Quality.aspx" />
                     
            </div>

            </fieldset>
        </div>
        </center>
</asp:Content>
