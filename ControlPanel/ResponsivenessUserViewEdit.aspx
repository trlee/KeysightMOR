<%@ Page Title="Responsiveness User Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="ResponsivenessUserViewEdit.aspx.cs" Inherits="KeysightMOR.ControlPanel.ResponsivenessUserViewEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
    <link rel="stylesheet" href="../Assets/Stylesheets/ControlPanel/ResponsivenessUserViewEdit.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:auto;margin-right:auto">
        <div class="confR_box">       
        <h2>Evaluation Settings > Responsiveness</h2>

        <fieldset>
                <div class="description">
                    <p class="title-description" style="text-align:center">View or edit current users for Responsiveness</p>
                   </div>
         
                <table cellspacing="0">
                    <tr>
                        <td class="Rtable" style="width:50px"><h3>R1</h3></td><td><h3>Communication</h3></td><td><h3>Assigned Users</h3></td>
                    </tr>
                    <tr>
                        <td class="cell_num">1</td>
                        <td>Responds to Keysight requests in a timely manner</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td class="cell_num">2</td>
                        <td>Adequately resourced in all areas (with assigned backups)</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td class="cell_num">3</td>
                        <td>Proactively communicates manufacturing process changes, critical issues, or potential problems</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td class="cell_num">4</td>
                         <td>Timely/Accurate communication within and between supplier plants - including best practice leverage</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td><h3>R2</h3></td><td><h3>Materials Management and Reporting</h3></td><td><h3>Assigned Users</h3></td>
                    </tr>
                     <tr>
                        <td class="cell_num">1</td>
                         <td>Proactively manages shortage process e.g. no surprises</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td rowspan="2" class="cell_num" style="padding:0 10px 0 10px">2 <br /> Reacts appropriately to increases/decreases in Keysight Demand in a timely manner</td>
                        <td>a) Fulfillment of LLM Safety Stock</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    
                    <tr>
                        <td >b) Fulfillment of FG Safety Stock</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td rowspan="5" class="cell_num">3 <br />Provides TIMELY monthly reports</td>
                        <td>a) AP/AR</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>b) ECN</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>c) E&O/Aging inventory & inventory profiling report</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>d) PPV monthly report</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td>e) Stock On Hand revaluation report (inclusive quarterly PPV report)</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                    <tr>
                        <td><h3>R3</h3></td><td><h3>Execution of Plans and Actions </h3></td><td><h3>Assigned Users</h3></td>
                    </tr>
                    <tr>
                        <td class="cell_num">1</td>
                        <td>Improvement plans outlined and actioned within agreed timescale</td>
                        <td class="cell_num"><a href="#editdialog" id="edit" class="edit_link">[Edit]</a></td>
                    </tr>
                </table>
            <br />
                              <div class="div_button">
                <asp:Button ID="Save1" runat="server" Text="Save"  CssClass="action-button hvr-radial-out"/>
            &nbsp;&nbsp;
                            <asp:Button ID="Cancel1" runat="server" Text="Cancel" CssClass="cancel_button" PostBackUrl="~/ControlPanel/ResponsivenessUser.aspx"/>
            </div>

        </fieldset>
    </div> 
    </div>

    <!----POP UP--->
    <div id="editdialog" class="overlay">
        <div class="popup">
            <a class="close" href="#">×</a>
            <br />
            <h2>Edit Users</h2>

            <table class="edituser_table">
                <tr>
                    <td align="center" class="td_h3">
                        <h3>Available Users</h3>
                    </td>
                    <td></td>
                    <td align="center" class="td_h3">
                        <h3>Assigned Users</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="lbUsers" runat="server" Height="200px" Width="350px" CssClass="list_box">
                            <asp:ListItem>Art McLean (CTD)</asp:ListItem>
                            <asp:ListItem>Teoh TC (CTD)</asp:ListItem>
                            <asp:ListItem>HENG SY (CTD)</asp:ListItem>
                            <asp:ListItem>Art McLean (SA)</asp:ListItem>
                            <asp:ListItem>Lim Eng Chuan (SA)</asp:ListItem>
                            <asp:ListItem>Tan Hian See (SA)</asp:ListItem>
                            <asp:ListItem>Wong Weng Yew (SA)</asp:ListItem>
                        </asp:ListBox></td>
                    <td class="cell_buttons">
                        <p>
                            <asp:Button ID="Button1" runat="server" Text=">>" CssClass="popupButton" />
                        </p>
                        <p>
                            <asp:Button ID="Button2" runat="server" Text="<<" CssClass="popupButton" />
                        </p>
                        <p>
                            <asp:Button ID="Save" runat="server" Text="Save" CssClass="popupButton" />
                        </p>
                        <p>
                            <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="popupButton" />
                        </p>

                    </td>
                    <td>
                        <asp:ListBox ID="ListBox2" runat="server" Height="200px" Width="350px" CssClass="list_box">
                            <asp:ListItem>Lim Eng Chuan (MBO)</asp:ListItem>
                            <asp:ListItem>Tan Hian See (MBO)</asp:ListItem>
                            <asp:ListItem>Wong Bee (MMA)</asp:ListItem>
                            <asp:ListItem>Tan Chin Sian (MMA)</asp:ListItem>
                            <asp:ListItem>Lim Kin Moon (MMA)</asp:ListItem>
                            <asp:ListItem>Leong Wai Meng (MMA)</asp:ListItem>

                        </asp:ListBox></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
