<%@ Page Title="Log Out | Keysight Technologies" Language="C#" MasterPageFile="~/PreLoginTemplate.Master" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="KeysightMOR.LogOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .box_login {
            margin:30px auto 30px auto;
            width: 400px;
            overflow: auto;
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;
        }

        fieldset {
            background-color: #fff;
            border: none;
            padding: 20px 10px 10px 10px;
        }

        h2 {
            color: #fff;
            background-color: #d32f2f;
            font-size: 20px;
            height: 60px;
            line-height: 60px;
            text-align: center;
        }

        /*----------TextBox-------------*/
        .txtbox {
            padding: 10px;
            border: solid 5px #c9c9c9;
            transition: border 0.3s;
        }

            .txtbox:focus {
                border-radius: 20px 20px;
                border: solid 5px #808080;
            }

        /*-------------------------------------------*/

        /* ------------------- Buttons --------------*/
        .buttons {
            padding: 7px 15px 10px 15px;
            font-size: 16px;
            font-family: 'Lato', sans-serif;
            color: #e90029;
            border: solid 5px #e90029;
            text-decoration: none;
            background-color: transparent;
            cursor: pointer;
        }

            .buttons:hover {
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

        p {
            padding-bottom: 15px;
        }

        .log-out-msg {
            font-size: medium;
        }
    </style>
    <center>
    <div class="box_login">
        <h2>
            LOG OUT
        </h2>

            <fieldset>
                <p>
                    <strong>Log Out Successful</strong>
                </p>
                
                
                <p class="log-out-msg">
                    You have been successfully logged out.
                </p>


            </fieldset>
       
    </div>
     </center>
</asp:Content>
