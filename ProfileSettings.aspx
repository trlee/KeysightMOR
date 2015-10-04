<%@ Page Title="Profile Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ProfileSettings.aspx.cs" Inherits="KeysightMOR.ProfileSettings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .mainbox {
            background-color: #fff;
            color: #000;
            font-size: 16px;
            width: 600px;
            -moz-box-shadow: 0px 3px 6px #c9c9c9;
            -webkit-box-shadow: 0px 3px 6px #c9c9c9;
            box-shadow: 0px 3px 6px #c9c9c9;
            margin:30px auto 30px auto;
        }

        fieldset {
            background-color: #fff;
            border: none;
            margin: auto;
        }

        h2 {
            color: #fff;
            background-color: #d32f2f;
            font-size: 20px;
            letter-spacing: 1px;
            height: 60px;
            line-height: 60px;
            text-align: center;
        }
        /*-----Buttons----------*/
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
                border: solid 5px #b71c1c;
            }

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
        /*----------------------------------*/


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

        .title_edit {
            color: #fff;
            background-color: #6BB9F0;
            font-size: 20px;
            padding: 5px;
            text-align: center;
            padding: 10px 10px 10px 10px;
        }

        table {
            border-collapse: separate;
            padding: 5px;
            text-align: center;
        }

        .cell_item {
            border-spacing: 20px 20px 20px 20px;
            text-align: left;
        }

        .cell_buttons {
            border-spacing: 20px 20px 20px 20px;
            text-align: center;
        }

        ._container {
            margin-left: 120px;
            margin-top: 15px;
        }
    </style>
    <div class="wrapper">
        <div class="mainbox" style="word-spacing: normal">
            <h2>PROFILE SETTINGS</h2>
            <fieldset>
                <div class="_container">


                    <table>
                        <tr>
                            <td colspan="2" style="text-align: center">Current Name: <strong>ABC123</strong></td>
                        </tr>
                        <tr>
                            
                            <td colspan="2" style="text-align: center">Current Email: <strong>abc_123@gmail.com</strong>
                                <br />
                                <br />
                            </td>

                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center" class="title_edit">Edit Name</td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="cell_item">New Name </td>
                            <td>
                                <asp:TextBox ID="TextBox1" class="txtbox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>

                        </tr>
                        <tr>
                            <td class="cell_buttons" colspan="2">
                                <br />
                                    <asp:Button ID="Button5" runat="server" class="buttons hvr-radial-out" Text="Change" />
                                    <asp:Button ID="Button6" runat="server" class="cancel_button" Text="Cancel" PostBackUrl="~/Home.aspx" OnClick="Button3_Click"/>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center" class="title_edit">Edit Email</td>

                        </tr>
                        <tr>
                            <td colspan="2"></td>

                        </tr>
                        <tr>
                            <td class="cell_item">New Email </td>
                            <td>
                                <asp:TextBox ID="newEmail" class="txtbox" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>

                        </tr>
                        <tr>
                            <td class="cell_buttons" colspan="2">
                                <br />
                                    <asp:Button ID="Button1" runat="server" class="buttons hvr-radial-out" Text="Change" />
                                    <asp:Button ID="Button3" runat="server" class="cancel_button" Text="Cancel" PostBackUrl="~/Home.aspx" OnClick="Button3_Click"/>
                                <br />
                                <br />
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2"></td>

                        </tr>

                        <tr>
                            <td colspan="2" style="text-align: center" class="title_edit">Edit Password</td>

                        </tr>

                        <tr>
                            <td colspan="2"></td>

                        </tr>

                        <tr>
                            <td class="cell_item">Old Password </td>
                            <td>
                                <asp:TextBox ID="oldPw" class="txtbox" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="cell_item">New Password </td>
                            <td>
                                <asp:TextBox ID="newPw" class="txtbox" runat="server" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td class="cell_item">Repeat new password</td>
                            <td>
                                <asp:TextBox ID="newPw2" class="txtbox" runat="server" TextMode="Password" /></td>
                        </tr>
                        <tr>
                            <td class="cell_buttons" colspan="2">
                                <br />
                                <asp:Button ID="Button2" runat="server" class="buttons hvr-radial-out" Text="Change" />
                                <asp:Button ID="Button4" runat="server" class="cancel_button" Text="Cancel" PostBackUrl="~/Home.aspx"/>
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>

                </div>
            </fieldset>
        </div>
    </div>

</asp:Content>
