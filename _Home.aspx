<%@ Page Title="Home | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="_Home.aspx.cs" Inherits="EP_GUI.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="Assets/Stylesheets/Home.css" />
    <link rel="stylesheet" href="style.css" />

    <style>
        .ht-month {
            width:20%;
        }
        .ht-status {
            width:20%;
        }
        .ht-progress {
            width:60%;
        }
    </style>
</asp:Content>

<asp:Content ID="cphHome" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:SqlDataSource ID="sqlEvalTableFetchData" runat="server"></asp:SqlDataSource>

    <div id="wrapper">
        <div class="evaluate_box">
            <h2>EVALUATE</h2>

            <fieldset>
                <asp:Repeater ID="rpEvalTable" runat="server" DataSourceID="sqlEvalTableFetchData">
                    <HeaderTemplate>
                        <table id="tblTableEvaluate" class="table_evaluate" runat="server">
                            <tr>
                                <th class="ht-month">Month</th>
                                <th class="ht-status">Status</th>
                                <th class="ht-progress">Progress</th>
                            </tr>
                        
                    </HeaderTemplate>
                
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="lblCurrentMonth" runat="server"></asp:Label>
                            </td>

                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>







                        <asp:TableRow>
                            <asp:TableCell>
                                
                            <asp:TableCell>Open</asp:TableCell>
                            <asp:TableCell>
                                <asp:Table ID="Table2" runat="server">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="td_criteria" Width="80%">Responsiveness</asp:TableCell>
                                        <asp:TableCell Width="20%"><asp:HyperLink ID="HyperLink1" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Responsiveness/R1TabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="td_criteria">Delivery</asp:TableCell>
                                        <asp:TableCell><asp:HyperLink ID="HyperLink2" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Delivery/DTabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="td_criteria">Business</asp:TableCell>
                                        <asp:TableCell><asp:HyperLink ID="HyperLink3" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Business/B1TabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                    </asp:TableRow>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

                <asp:Label ID="Label4" runat="server"></asp:Label>
            </fieldset>
        </div>
    </div>
</asp:Content>
