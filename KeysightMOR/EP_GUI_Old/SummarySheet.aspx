<%@ Page Title="" Language="C#" MasterPageFile="~/Template.Master" AutoEventWireup="true" CodeBehind="SummarySheet.aspx.cs" Inherits="EP_GUI.SummarySheet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
 .logo
{	
	float:right;
	height: 70px;
	width: 300px;
}
.summarysheet_table
{
	            width:70%; 
            background-color: #fff;
            border:5px #bfbfbf; 
            border-style: solid;
            text-align: left;
			overflow: auto;
            top: 150px;
            margin-top: 50px;
            margin-left: 15%;
			
			-webkit-box-shadow: 0px 5px 10px 0px #c9c9c9;
-moz-box-shadow:    0px 5px 10px 0px #c9c9c9;
box-shadow:         0px 5px 10px 0px #c9c9c9;
}


#head
{
		 color:#fff; 
            background-color: #D64541; 
            font-size: 24px; 
            letter-spacing: 1px;
            height: 70px; 
            text-align: center;
}
td
{
	            background-color: #fff;
            border:1px #e7e7e7; 
            border-style: solid;
            padding: 10px;
}
.clr_1
{
	background-color: #d3e8e1;
}
.clr_2
{
	background-color: #f4c7ee;
}
.total_clr
{
	background-color: #f1d3d3;
}
.evalteam_clr
{
	color:#fff;
	background-color: #ff6961;
}
.q_clr
{
	text-align: center;
	background-color: #FDFDAF;
}
.r_clr
{
	text-align: center;
	background-color: #ff9994;
}
.d_clr
{
	text-align: center;
	background-color: #BDECB6;
}
.b_clr
{
	text-align: center;
	background-color: #B4CFEC;
}
</style>

<body>

<table class="summarysheet_table" cellspacing="0">
<tr>
<td id="head" colspan="4">
Monthly/Annual Operational Review Scorecard
<br/>
Minimum Acceptable Target 3.3 by Scoring Category
</td>
</tr>

<tr>
<td colspan="4">
SUPPLIER: Jabil
<br>
PLANT: Penang
</td>
</tr>

<tr>
	<td colspan="4">
		<img class="logo" src="C:\Users\Jasmine Chang\Desktop\CodeExperimentation\Keysight_Logo.svg.png" />

	</td>
</tr>

<tr>
	<td>
		Evaluation Date
	</td>
	<td>
		28- Jan- 2015
	</td>
</tr>

<div>
<tr>
	<td colspan="4">
	<table cellspacing="0">
		<tr>
			<td class="clr_1">
				PROCESS AREA
			</td>
			<td class="clr_2">
				NET SCORE FROM SECTIONS
			</td>
			<td class="clr_1">
				WEIGHTING FACTOR
			</td>
			<td class="clr_2">
				CUSTOMER SCORE
			</td>
		</tr>
		<tr>
			<td class="q_clr">
				Quality
			</td>
			<td>
				3.96
			</td>
			<td>
				28%
			</td>
			<td>
				1.1
			</td>
		</tr>
		<tr>
			<td class="r_clr">
				Responsiveness
			</td>
			<td>
				2.98
			</td>
			<td>
				28%
			</td>
			<td>
				0.8
			</td>
		</tr>
		<tr>
			<td class="d_clr">
				Delivery
			</td>
			<td>
				3.98
			</td>
			<td>
				28%
			</td>
			<td>
				1.1
			</td>
		</tr>
		<tr>
			<td class="b_clr">
				Business
			</td>
			<td>
				4.00
			</td>
			<td>
				15%
			</td>
			<td>
				0.6
			</td>
		</tr>
		<tr>
			<td colspan="2">
			</td>

				<td class="total_clr">
				Total
			</td>
			<td>
				.3.70
			</td>
		</row>
	</table>	
</tr>
</div>

<tr>
	<td colspan="4" class="evalteam_clr">
		<center>
		EVALUATION TEAM (Monthly)
	</center>
	</td>
</tr>
<tr>
	<td class="q_clr"> Quality
	</td>
	<td colspan="3">
		Teoh Tze Ching, Tan Hian Shee, Lim Eng Chuan, Tan Chin Siang, Wong Bee Ling, Lee Kin Moon, Hu Qiang,, Wong Boon San, Ron Maghami, Emilio Roque, Goh Lay Teng, KG Ooi & KH Kon.
	</td>
</tr>
<tr>
	<td class="r_clr"> Responsiveness
	</td>
	<td colspan="3">
	Wong Bee Ling; Yeong Fong Leng; Koh Yee May;Kua Kim Hoe; Wong Teik Yee; Goh Eong Swan;Lai So Yee; Hooi Lok Cheng; Loh Yen Wah, Teh Bee Ean, Teoh Kee Ling,Goh Jin See,Hooi Lok Cheng, Ooi Kuok Ing, Lim Hooi Ying,Yeoh Sook Kuan, Qiu Dong, Randeep Singh
	</td>
	</tr>
<tr>	
	</td>
		<td class="d_clr"> Delivery
	</td>
	<td colspan="3">
		 Hooi Lok Cheng, Teh Bee Ean, Teoh Kee Ling, Lim Hooi Ying, Ooi Kuok Ing,The Ai Loon, Qiu Dong, Loh Hooi Huan
	</td>
</tr>


</table>
</asp:Content>
