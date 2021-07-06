<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="countdown timer.aspx.cs" Inherits="maimai_progect.countdown_timer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        p {
  text-align: center;
  font-size: 60px;
  margin-top: 0px;
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
    <h1 style="text-align: center; color:red; font-size: 50px;">!!!!the big reveal  of new page!!!! </h1>
    <p id="demo"></p>

<script>
    // Set the date we're counting down to
    var countDownDate = new Date("Jan 5, 2022 15:37:25").getTime();

    // Update the count down every 1 second
    var x = setInterval(function () {

        // Get today's date and time
        var now = new Date().getTime();

        // Find the distance between now and the count down date
        var distance = countDownDate - now;

        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

        // Output the result in an element with id="demo"
        document.getElementById("demo").innerHTML = days + "d " + hours + "h "
            + minutes + "m " + seconds + "s ";

        // If the count down is over, write some text 
        if (distance < 0) {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "EXPIRED";
        }
    }, 1000);
</script>

     <a><img src="pictures/download (2).jfif" style="width:700px;border: 2px solid red" /></a>
    <a><img src="pictures/170992739.0.jpg" style="width:600px;border: 2px solid red" /></a>
    <a><img src="pictures/images (2).jfif" style="width:600px;border: 2px solid red" /></a>

</asp:Content>
