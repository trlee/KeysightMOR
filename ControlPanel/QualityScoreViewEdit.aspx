<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="QualityScoreViewEdit.aspx.cs" Inherits="KeysightMOR.QualityScoreViewEdit" %>
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
            width: 500px; 
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
        
         p
{
    padding-bottom: 15px;
}

        p_validation
        {
            padding-bottom: 3px;

        }

    </style>
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
