<%@ Page Title="Home | Keysight Technologies" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="KeysightMOR.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Assets/Stylesheets/dataentry.css" />
    <link rel="stylesheet" href="../../Assets/Stylesheets/Home.css" />
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
                <table id="tblEvaluate" runat="server" class="table_evaluate">
                    <tr>
                        <th class="ht-month">Month</th>
                        <th class="ht-status">Status</th>
                        <th class="ht-progress">Progress</th>
                    </tr>
                </table>
            </fieldset>
        </div>
    </div>
</asp:Content>

