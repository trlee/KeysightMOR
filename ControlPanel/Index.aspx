<%@ Page Title="Control Panel | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="KeysightMOR.ControlPanel.ControlPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="../Assets/Stylesheets/demo.css" />
    <link rel="stylesheet" type="text/css" href="../Assets/Stylesheets/set2.css" />
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainbox">
        <h2 class="h2_title">Administrator Control Panel
        </h2>
       <!-- <fieldset> -->
            <div class="container">
                <div class="index_content">
                    <div class="grid">
                        <table style="text-align: center;">
                            <tr>
                                <td>

                                    <figure class="effect-julia">
                                        <img src="../Assets/Images/ControlPanel/UserSettings.png" />
                                        <figcaption>
                                            <h2>User<br />
                                                <span>Settings</span> </h2>
                                            <div>
                                                <p>
                                                    <asp:HyperLink ID="hlAddUser" runat="server" NavigateUrl="~/ControlPanel/AddUser.aspx">Add Users</asp:HyperLink>


                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlEditUserDiv" runat="server" NavigateUrl="~/ControlPanel/EditUser.aspx">Edit Users' Division</asp:HyperLink>


                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlViewDeleteUser" runat="server" NavigateUrl="~/ControlPanel/ViewDeleteUsers.aspx">View & Delete Users</asp:HyperLink>

                                                </p>
                                            </div>

                                        </figcaption>
                                    </figure>
                                </td>
                                <td>

                                    <figure class="effect-julia">
                                        <img src="../Assets/Images/ControlPanel/DivSettings.png" />
                                        <figcaption>
                                            <h2>Division<br />
                                                <span>Settings</span></h2>
                                            <div>
                                                <p>
                                                    <asp:HyperLink ID="hlAddDiv" runat="server" NavigateUrl="~/ControlPanel/AddDivision.aspx">Add Division</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlViewDeleteDiv" runat="server" NavigateUrl="~/ControlPanel/ViewDeleteDivision.aspx">View & Delete Division</asp:HyperLink>
                                                    
                                                </p>
                                            </div>

                                        </figcaption>
                                    </figure>
                                </td>
                                <td>

                                    <figure class="effect-julia">
                                        <img src="../Assets/Images/ControlPanel/DivSettings.png" />
                                        <figcaption>
                                            <h2>Edit<br />
                                                <span>Score</span></h2>
                                            <div>
                                                <p>
                                                    <asp:HyperLink ID="EditResponsivenessScore" runat="server" NavigateUrl="#">Responsiveness</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="EditDeliveryScore" runat="server" NavigateUrl="#">Delivery</asp:HyperLink>
                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="EditBusinessScore" runat="server" NavigateUrl="#">Business</asp:HyperLink>
                                                </p>
                                            </div>

                                        </figcaption>
                                    </figure>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <figure class="effect-julia">
                                        <img src="../Assets/Images/ControlPanel/CMSettings.png" />
                                        <figcaption>
                                            <h2>CM<br />
                                                <span>Settings</span></h2>
                                            <div>
                                                <p>
                                                    <asp:HyperLink ID="hlAddCm" runat="server" NavigateUrl="~/ControlPanel/AddCM.aspx">Add CM</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlAddUsers" runat="server" NavigateUrl="~/ControlPanel/ViewDeleteCM.aspx">View & Delete CM</asp:HyperLink>

                                                </p>
                                            </div>

                                        </figcaption>
                                    </figure>

                                </td>
                                <td>
                                    <figure class="effect-julia">
                                        <img src="../Assets/Images/ControlPanel/Evaluation Settings.png" />
                                        <figcaption>
                                            <h2>Evaluation<br />
                                                <span>Settings</span></h2>
                                            <div>
                                                <p>
                                                    <asp:HyperLink ID="hlResponsiveness" runat="server" NavigateUrl="~/ControlPanel/ResponsivenessUser.aspx">Responsiveness</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlDelivery" runat="server" NavigateUrl="~/ControlPanel/DeliveryUser.aspx">Delivery</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlBusiness" runat="server" NavigateUrl="~/ControlPanel/BusinessUser.aspx">Business</asp:HyperLink>

                                                </p>
                                            </div>

                                        </figcaption>
                                    </figure>

                                </td>
                                <td>
                                    <figure class="effect-julia">
                                        <img src="../Assets/Images/ControlPanel/ScoreSettings.png" />
                                        <figcaption>
                                            <h2>Scoring<br />
                                                <span>Settings</span></h2>
                                            <div>
                                                <p>
                                                    <asp:HyperLink ID="hlResponsivenessScoring" runat="server" NavigateUrl="~/ControlPanel/ResponsivenessScore.aspx">Responsiveness</asp:HyperLink>
                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlDeliveryScoring" runat="server" NavigateUrl="~/ControlPanel/DeliveryScore.aspx">Delivery</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="hlBusinessScoring" runat="server" NavigateUrl="~/ControlPanel/Quality.aspx">Quality</asp:HyperLink>

                                                </p>
                                                <br />
                                                <p>
                                                    <asp:HyperLink ID="ScoreSettingChangeLog" runat="server" NavigateUrl="~/ControlPanel/ChangeLogSelectCM.aspx">Change Log</asp:HyperLink>
                                                </p>
                                            </div>

                                        </figcaption>
                                    </figure>
                                </td>
                            </tr>
                        </table>

                    </div>
                </div>


            </div>
            <!-- /container -->
            <script>
                // For Demo purposes only (show hover effect on mobile devices)
                [].slice.call(document.querySelectorAll('a[href="#"')).forEach(function (el) {
                    el.addEventListener('click', function (ev) { ev.preventDefault(); });
                });
            </script>
        <!--</fieldset>-->
    </div>
</asp:Content>
