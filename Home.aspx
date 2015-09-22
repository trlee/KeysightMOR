<%@ Page Title="Home | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="KeysightMOR.Home" %>

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
                        <table id="tblTableEvaluate" class="table_evaluate">
                            <tr>
                                <th class="ht-month">Month</th>
                                <th class="ht-status">Status</th>
                                <th class="ht-progress">Progress</th>
                            </tr>
                    </HeaderTemplate>
                
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%--<%#Eval("") %>--%>
                            </td>

                            <td>
                                
                            </td>

                            <td>
                                <table>
                                    <tr>
                                        <td class="td_criteria" width="80%">Responsiveness</td>
                                        <td width="20%">
                                            <asp:HyperLink ID="hlResponsiveness" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Responsiveness/R1TabEntry.aspx"></asp:HyperLink>
                                        </td>
                                    </tr>
                                        <td class="td_criteria">Delivery</td>
                                        <td>
                                            <asp:HyperLink ID="hlDelivery" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Delivery/DTabEntry.aspx"></asp:HyperLink>
                                        </td>
                                    <tr>

                                    </tr>

                                    <tr>
                                        <td class="td_criteria">Business</td>
                                        <td>
                                            <asp:HyperLink ID="hlBusiness" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Business/B1TabEntry.aspx"></asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

            </fieldset>
        </div>
    </div>
</asp:Content>

