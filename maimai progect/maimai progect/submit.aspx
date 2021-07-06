<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="submit.aspx.cs" Inherits="maimai_progect.question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link rel="stylesheet" type="text/css" href="mainStyle.css" />
    
    <style>html, body {
    height: 100%;
    width: 100%
}

.wrap {
    right: 413px;
    height: 100%;
    display: normal;
    align-items: center;
    justify-content: center;
}

.button {
    border-style: none;
    border-color: inherit;
    border-width: medium;
    min-width: 500px;
    min-height: 100px;
    font-family: 'Nunito', sans-serif;
    font-size: 22px;
    text-transform: uppercase;
    letter-spacing: 1.3px;
    font-weight: 700;
    color: #313133;
    background: #4FD1C5;
    background: #4FD1C5;
    border-radius: 1000px;
    box-shadow: 12px 12px 24px rgba(79,209,197,.64);
    transition: all 0.3s ease-in-out 0s;
    cursor: pointer;
    outline: none;
    position: relative;
    padding: 10px;
    top: 10px;
    right: 376px;
    width: 313px;
    height: 152px;
            margin-top: 21px;
        }

button::before {
    content: '';
    border-radius: 1000px;
    min-width: calc(300px + 12px);
    min-height: calc(60px + 12px);
    border: 6px solid #00FFCB;
    box-shadow: 0 0 60px rgba(0,255,203,.64);
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0;
    transition: all .3s ease-in-out 0s;
}

.button:hover, .button:focus {
    color: #313133;
    transform: translateY(-6px);
}

button:hover::before, button:focus::before {
    opacity: 1;
}

button::after {
    content: 'Continue';
    width: 30px;
    height: 30px;
    border-radius: 100%;
    border: 6px solid #00FFCB;
    position: absolute;
    z-index: -1;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    animation: ring 1.5s infinite;
}

button:hover::after, button:focus::after {
    animation: none;
    display: none;
}

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }

    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}




</style>

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
    <div class="warp" >
    <button  class="button">login</button>
</div>

</asp:Content>
