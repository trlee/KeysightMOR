<%@ Page Title="Home | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EP_GUI.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="Assets/Stylesheets/Home.css" />
    <link rel="stylesheet" href="style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="wrapper">

        <div class="evaluate_box">
            <h2>EVALUATE</h2>

            <fieldset>
                <asp:Table ID="Table1" CssClass="table_evaluate" CellSpacing="0" runat="server">
                    <asp:TableRow>
                        <asp:TableHeaderCell Width="100px">Month</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="100px">Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="300px">Progress</asp:TableHeaderCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label1" runat="server"></asp:Label></asp:TableCell>
                        <asp:TableCell>Open</asp:TableCell>
                        <asp:TableCell>
                            <asp:Table ID="Table2" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Responsiveness<asp:HyperLink ID="HyperLink1" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Responsiveness/R1TabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Delivery<asp:HyperLink ID="HyperLink2" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Delivery/DTabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Business<asp:HyperLink ID="HyperLink3" Text=" New" ForeColor="Green" runat="server" NavigateUrl="~/DataEntry/Business/B1TabEntry.aspx"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="Label2" runat="server"></asp:Label></asp:TableCell>
                        <asp:TableCell>Closed</asp:TableCell>
                        <asp:TableCell>
                            <asp:Table ID="Table3" runat="server">
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Responsiveness<asp:HyperLink ID="HyperLink4" Text=" Closed" ForeColor="Red" runat="server"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Delivery<asp:HyperLink ID="HyperLink5" Text=" Closed" ForeColor="Red" runat="server"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell CssClass="td_criteria">Business<asp:HyperLink ID="HyperLink6" Text=" Closed" ForeColor="Red" runat="server"></asp:HyperLink></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>

                </asp:Table>
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </fieldset>
        </div>
    </div>
</asp:Content>
