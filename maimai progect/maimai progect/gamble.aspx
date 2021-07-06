<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gamble.aspx.cs" Inherits="maimai_progect.gamble" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Service Hover</title>
    <link rel="stylesheet" href="StyleSheet3.css" />
     <link rel="stylesheet" type="text/css" href="mainStyle.css" />
    <link rel="stylesheet" href="StyleSheet2.css">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.min.js"></script>
    <script defer src="JavaScript.js"></script>
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
     <h2 style="text-align: center; color: red; font-size:50px"> please gamble whitch match maimi wiil win</h2>

    
    <div class="wrapper">
        <div class="service-wrapper">
            <div>

                <h3>Suns VS Maimi heat </h3>
                <svg width="14" height="14" xmlns="http://www.w3.org/2000/svg">
                    <text transform="rotate(135 6.68 7.16)" fill="#fff" fill-rule="evenodd" font-family="Ionicons" font-size="25" font-weight="400" letter-spacing=".744">
                        <tspan x="-2.319" y="16.66"></tspan>
                    </text>
                </svg>
                <div class="arrow" id="arrow-one"></div>
                <div class="arrow-small" id="arrow-one-small"></div>
            </div>
            <p>
                Miami heat have 60% to take the win <br> Suns have better team Chemistry and 40% to win
            </p>
        </div>

        <div class="service-wrapper">
            <div>
                <h3>Cleveland VS Miami heat</h3>
                <svg width="14" height="14" xmlns="http://www.w3.org/2000/svg">
                    <text transform="rotate(135 6.68 7.16)" fill="#fff" fill-rule="evenodd" font-family="Ionicons" font-size="25" font-weight="400" letter-spacing=".744">
                        <tspan x="-2.319" y="16.66"></tspan>
                    </text>
                </svg>
                <div class="arrow" id="arrow-two"></div>
                <div class="arrow-small" id="arrow-two-small"></div>
            </div>
            <p>
                Miami heat have 50% to win without are best player <br> Cleveland have better 5 point player and they got 50 % to win
            </p>
        </div>

        <div class="service-wrapper">
            <div>
                <h3>Lakers VS Maimi heat</h3>
                <svg width="14" height="14" xmlns="http://www.w3.org/2000/svg">
                    <text transform="rotate(135 6.68 7.16)" fill="#fff" fill-rule="evenodd" font-family="Ionicons" font-size="25" font-weight="400" letter-spacing=".744">
                        <tspan x="-2.319" y="16.66"></tspan>
                    </text>
                </svg>
                <div class="arrow" id="arrow-three"></div>
                <div class="arrow-small" id="arrow-three-small"></div>
            </div>
            <p>
                Miami heat have 20% to win with every player <br> Lakers have a better performance in the first matches and got 80% to win
            </p>
        </div>
    </div>
</asp:Content>
