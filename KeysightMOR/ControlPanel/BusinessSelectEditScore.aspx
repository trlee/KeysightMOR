<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="BusinessSelectEditScore.aspx.cs" Inherits="KeysightMOR.BusinessSelectEditScore" %>
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
    padding-bottom: 15px;
}

    </style>
    <center>
    <div class="this_box">       
        <h2>
            Edit Score
        </h2>

        <fieldset>

             <div class="description">
                    <p class="title-description">Edit scores for Business</p>
                </div>


<p>

                Contract Manufacturer 

                            <asp:DropDownList ID="CM" runat="server"  class="dropdown">
                                <asp:ListItem>Agilent</asp:ListItem>
                                <asp:ListItem>Jabil</asp:ListItem>
                                <asp:ListItem>Intel</asp:ListItem>
                                <asp:ListItem>Keysight</asp:ListItem>
                                <asp:ListItem>HP</asp:ListItem>
                            </asp:DropDownList>
              </p>

                        <p>
                             Month
                            
                            <asp:DropDownList ID="Month" runat="server" class="dropdown">
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                        
                            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
                           
                            Year
 
                            <asp:DropDownList ID="Year" runat="server" class="dropdown">
                                <asp:ListItem>2013</asp:ListItem>
                                <asp:ListItem>2014</asp:ListItem>
                                <asp:ListItem>2015</asp:ListItem>
                                <asp:ListItem>2016</asp:ListItem>
                            </asp:DropDownList>
                            </p>
            <p>
                <asp:Button ID="Select"  runat="server" Text="Select" CssClass="action-button hvr-radial-out" PostBackUrl="~/ControlPanel/BusinessEditScore.aspx"/>
                            &nbsp;&nbsp;
                            
                <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/Index.aspx"/>
            </p>

            </fieldset>
        </div>
        </center>
</asp:Content>
