<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="culcoletor.aspx.cs" Inherits="maimai_progect.culcoletor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- for styling -->
	<style>
		.title{
		margin-bottom: 10px;
		 position: relative;
            right: 452px;
        text-align:center;    
		width: 210px;
		color:green;
		border: solid black 2px;
		}

		input[type="button"]
		{
		background-color:green;
		color: black;
		border: solid black 2px;
		width:100%
		}

		input[type="text"]
		{
		background-color:white;
		border: solid black 2px;
		width:100%
		}
	    .auto-style1 {
            position: relative;
            right: 416px;
           
            height: 286px;
            width: 388px;
            top: -107px;
        }
	</style>
	     <link rel="stylesheet" type="text/css" href="mainStyle.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
	   <div class="navbar">
        <a  href="informiton.aspx"> information ℹ️</a>
        <a href="buying.aspx"> 💸 for buying tickts</a>
        <a href="registration.aspx">📝 registration</a>
        <a href="countdown timer.aspx"> ⌚ countdown timer</a>
        <a href="submit.aspx">✅ submit</a>
        <a  href="gamble.aspx" >🧩🎲gamble</a>
       <a  href="history.aspx"> 📖 history</a>
        <a href="input.aspx">💻 shotcut </a>
        <a href="login.aspx">🔐 login </a>
 <a href="culcoletor.aspx"> 🖩 Calculator </a>
         
       
    </div>
	<div class = title > Calculator </div>
	<script>
        //function that display value
        function dis(val) {
            document.getElementById("result").value += val
        }

        //function that evaluates the digit and return result
        function solve() {
            let x = document.getElementById("result").value
            let y = eval(x)
            document.getElementById("result").value = y
        }

        //function that clear the display
        function clr() {
            document.getElementById("result").value = ""
        }
    </script>
	


	<div style ="position:relative; right:324px; top: -6px; height: 110px; width: 110px;" id="box"></div>

	<table id="box" border="1" class="auto-style1">
		<tr>
			<td colspan="3"><input type="text" id="result"/></td>
			<!-- clr() function will call clr to clear all value -->
			<td><input type="button" value="c" onclick="clr()"/> </td>
		</tr>
		<tr>
			<!-- create button and assign value to each button -->
			<!-- dis("1") will call function dis to display value -->
			<td><input type="button" value="1" onclick="dis('1')"/> </td>
			<td><input type="button" value="2" onclick="dis('2')"/> </td>
			<td><input type="button" value="3" onclick="dis('3')"/> </td>
			<td><input type="button" value="/" onclick="dis('/')"/> </td>
		</tr>
		<tr>
			<td><input type="button" value="4" onclick="dis('4')"/> </td>
			<td><input type="button" value="5" onclick="dis('5')"/> </td>
			<td><input type="button" value="6" onclick="dis('6')"/> </td>
			<td><input type="button" value="-" onclick="dis('-')"/> </td>
		</tr>
		<tr>
			<td><input type="button" value="7" onclick="dis('7')"/> </td>
			<td><input type="button" value="8" onclick="dis('8')"/> </td>
			<td><input type="button" value="9" onclick="dis('9')"/> </td>
			<td><input type="button" value="+" onclick="dis('+')"/> </td>
		</tr>
		<tr>
			<td><input type="button" value="." onclick="dis('.')"/> </td>
			<td><input type="button" value="0" onclick="dis('0')"/> </td>
			<!-- solve function call function solve to evaluate value -->
			<td><input type="button" value="=" onclick="solve()"/> </td>
			<td><input type="button" value="*" onclick="dis('*')"/> </td>
		</tr>
	</table>


</asp:Content>
