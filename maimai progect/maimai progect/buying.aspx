<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buying.aspx.cs" Inherits="maimai_progect.table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #tickt{
           
            text-align:center;
            color :crimson;

        }

       #table {
           box-sizing: border-box;
           text-align : left


       }
        * {
            box-sizing: border-box
        }

        body {
            font-family: Arial;
            background-color: burlywood;
            background-image: url(pictures/Miami-Heat-logo.png);
            background-position: inherit;
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
     
    <h1 id="tickt" style="font-size:30px">game tickets</h1>
     <h2 style="text-align: center">for purching ticktc</h2>
    <table id="table" border="1" cellpadding="50" style="border:solid pink; box-sizing: border-box">
        <tr style="text-align: left">
            <th style="color:red">tickts per</th>
            <th style="color:red">SINGLE GAME TICKETS</th>
            <th style="color:red">SEASON TICKET MEMBERSHIPS</th>
        </tr>
        <tr>
            <td style="color:red">Exspensive</td>
            <td>
                <a href="https://www.nba.com/heat/tickets/single-game-tickets?itid=heatdotcom:main_nav:season_ticket_sales">$92.00</a>
            </td>
            <td>
                <a href="https://www.nba.com/heat/tickets/season-ticket-memberships?itid=heatdotcom:main_nav:season_ticket_sale">$200</a>
            </td>

        </tr>
        <tr>
            <td style="color:red">cheppr</td>
            <td>
                <a style="color:blue">$25</a>
            </td>
            <td>
                <a style="color:blue">$150</a>
            </td>
        </tr>
    </table>
</asp:Content>
