<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="PreHome.aspx.cs" Inherits="KeysightMOR.PreHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .this_box 
        {
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
        .cancel_button:hover 
        {
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
        .action-button:hover 
        {
            border-radius: 20px 20px;
        }
        .hvr-radial-out 
        {
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
        .hvr-radial-out:before 
        {
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
        .hvr-radial-out:hover, .hvr-radial-out:focus, .hvr-radial-out:active 
        {
            color: #fff;
            background: #e90029;
        }
        .hvr-radial-out:hover:before, .hvr-radial-out:focus:before, .hvr-radial-out:active:before 
        {
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
        <h2>Evaluate</h2>
        <fieldset>
            <div class="description">
                <p class="title-description">Select CM and Division Representing to Evaluate</p>
            </div>
            <asp:scriptmanager runat="server" />
            <asp:UpdatePanel runat="server"><ContentTemplate>
            <p>Contract Manufacturer<br /> 
                <asp:DropDownList ID="CM" runat="server"  CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="CM_Changed">
                </asp:DropDownList>
            </p>               
            <p runat="server">Division<br />
                <asp:DropDownList ID="Division" runat="server" CssClass="dropdown">
                </asp:DropDownList>
            </p></ContentTemplate></asp:UpdatePanel>
            <p><asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label></p>
            <p>    <asp:Button ID="Select"  runat="server" Text="Select" CssClass="action-button hvr-radial-out" OnClick="Select_Click"/>&nbsp;&nbsp;
            </p>
        </fieldset>
        </div>
    </center>
</asp:Content>
