<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="input.aspx.cs" Inherits="maimai_progect.input" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
  text-align:left;
  background-color:#ffcc8e;
}

.button{
  position:relative;
  display:inline-block;
  margin:20px;
            top: -1px;
            right: -440px;
        }

.button a{
  color:white;
  font-family:Helvetica, sans-serif;
  font-weight:bold;
  font-size:36px;
  text-align: center;
  text-decoration:none;
  background-color:#FFA12B;
  display:block;
  position:relative;
  padding:20px 40px;
  
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  text-shadow: 0px 1px 0px #000;
  filter: dropshadow(color=#000, offx=0px, offy=1px);
  
  -webkit-box-shadow:inset 0 1px 0 #FFE5C4, 0 10px 0 #915100;
  -moz-box-shadow:inset 0 1px 0 #FFE5C4, 0 10px 0 #915100;
  box-shadow:inset 0 1px 0 #FFE5C4, 0 10px 0 #915100;
  
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
            top: -1px;
            right: 1px;
        }

.button a:active{
  top:10px;
  background-color:#F78900;
  
  -webkit-box-shadow:inset 0 1px 0 #FFE5C4, inset 0 -3px 0 #915100;
  -moz-box-shadow:inset 0 1px 0 #FFE5C4, inset 0 -3pxpx 0 #915100;
  box-shadow:inset 0 1px 0 #FFE5C4, inset 0 -3px 0 #915100;
}

.button:after{
  content:"";
  height:100%;
  width:100%;
  padding:4px;
  position: absolute;
  bottom:-15px;
  left:-4px;
  z-index:-1;
  background-color:#2B1800;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
}
#efffect {
            text-align: center;
            color: orangered;
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
       
   
  <div class="button">
    <a href="registration.aspx">prees for sign in</a>
  </div>
          


</asp:Content>
