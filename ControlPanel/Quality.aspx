<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Quality.aspx.cs" Inherits="KeysightMOR.Quality" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style>
         .this_box {
            margin: 30px auto 30px auto;
            background-color: #fff; 
            color: #000; 
            font-size: 16px;
            width: 600px; 
              height: auto;        
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;
        }
                 fieldset
        {
            background-color: #fff;
            border: none;
            padding: 20px 10px 10px 10px;
        }

        h2
        {
            color:#fff; 
            background-color: #D64541; 
            font-size: 20px; 
            
            height: 60px; 
            line-height: 60px; 
            text-align: center;
        }
   
         /* ------------------- Buttons --------------*/
        .cancel_button {
            padding: 7px 10px 10px 10px;
            font-size: 16px;
            font-family: 'Lato', sans-serif;
            color: #fff;
            border: solid 5px #e90029;
            text-decoration: none;
            background-color: #e90029;
            cursor: pointer;
        }

            .cancel_button:hover {
                background-color: #b71c1c;
                border-color: #b71c1c;
            }

        .action-button {
            padding: 7px 10px 10px 10px;
            font-size: 16px;
            font-family: 'Lato', sans-serif;
            color: #e90029;
            border: solid 5px #e90029;
            text-decoration: none;
            background-color: transparent;
            cursor: pointer;
        }

            .action-button:hover {
                border-radius: 20px 20px;
            }

        .hvr-radial-out {
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: translateZ(0);
            transform: translateZ(0);
            box-shadow: 0 0 1px rgba(0, 0, 0, 0);
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            -moz-osx-font-smoothing: grayscale;
            position: relative;
            overflow: hidden;
            background: #fff;
            -webkit-transition-property: color;
            transition-property: color;
            -webkit-transition-duration: 0.3s;
            transition-duration: 0.3s;
        }

            .hvr-radial-out:before {
                content: "";
                position: absolute;
                z-index: -1;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: #fff;
                border-radius: 100%;
                -webkit-transform: scale(0);
                transform: scale(0);
                -webkit-transition-property: transform;
                transition-property: transform;
                -webkit-transition-duration: 0.3s;
                transition-duration: 0.3s;
                -webkit-transition-timing-function: ease-out;
                transition-timing-function: ease-out;
            }

            .hvr-radial-out:hover, .hvr-radial-out:focus, .hvr-radial-out:active {
                color: #fff;
                background: #e90029;
            }

                .hvr-radial-out:hover:before, .hvr-radial-out:focus:before, .hvr-radial-out:active:before {
                    -webkit-transform: scale(2);
                    transform: scale(2);
                }
        /*------------------------------------------*/
         .dropdown
        {
            width: 120px;
           height: 37px;
           overflow: hidden;     
           border: 2px solid #808080;
           -webkit-appearance: none;
           -moz-appearance: none;
           padding: 5px;
           font-size: 16px;
           
        }
         p
        {
             padding-top: 15px;
            padding-bottom: 15px;
        }

    </style>
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
