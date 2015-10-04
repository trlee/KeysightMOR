﻿<%@ Page Title="Delivery User Settings | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="DeliveryUser.aspx.cs" Inherits="KeysightMOR.ControlPanel.DeliveryUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Assets/Stylesheets/controlpanel.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left: auto; margin-right: auto">
        <div class="box">
            <h2>Evaluation Settings > Delivery</h2>

            <fieldset>
                <asp:Table ID="Table1" runat="server" style="width: 70%; margin-left: auto; margin-right: auto">
                    <asp:TableRow>
                        <asp:TableCell>Contract Manufacturer: </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="ddlcm" runat="server" class="dropdown"></asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow Height="40px">
                        <asp:TableCell HorizontalAlign="Center" ColumnSpan="2"><asp:Label ID="SelectCMStatus" runat="server" ForeColor="Red"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow >
                        <asp:TableCell style="text-align: right" ColumnSpan="2">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="action-button hvr-radial-out" OnClick="btnSubmit_Click" />
                            &nbsp;&nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="cancel_button" OnClick="btnCancel_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </fieldset>
        </div>
    </div>
</asp:Content>
