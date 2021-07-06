<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="maimai_progect.history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script defer src="thoa.js"></script>
    <style>
      #efffect {
            text-align: center;
            color: orangered;
   
        }
      body{
          text-align:center
      }
        .auto-style1 {
            height: 162px;
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
  
    <p id="demo" class="auto-style1">
  
  <button onclick="typeWriter()">click here</button>
              


</asp:Content>
