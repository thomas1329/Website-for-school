<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="onlyRegisteredUsers.aspx.cs" Inherits="maimai_progect.onlyRegisteredUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       body {
    width: 80%;
  
    font-size: .85em;
    font-family: Arial;
    color: black;
    text-align:right;
    direction: rtl;
    background-image: url('pictures/IpcZNP.jpg');
    padding-top:5px;
}
       body {
    font-family: Arial;
    background-color: burlywood;
}

.navbar {
    width: 80%;
    background-color: darksalmon;
    overflow: auto;
    height: 65px;
    margin-bottom: 0px;
    margin-right: 0px;
}

    .navbar a {
        float: left;
        padding: 15px;
        color: white;
        text-decoration: none;
        font-size: 17px;
        width: 20%;
        text-align: center;
        height: 20px;
    }



        .navbar a:hover {
            background-color: lightblue;
        }

    .navbar .active {
        background-color: firebrick;
    }

@media screen and (max-width: 500px) {
    .navbar a {
        float: none;
        display: block;
        width: 100%;
        text-align: left;
    }
}


        .auto-style2 {
            width: 301px;
        }


        </style>
     
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%=greeting %>
              <div class="navbar">
    
          <a href="home.aspx">🏘️ home </a>
        <a href="logout.aspx"> 🔓 logout </a>
          <a href="informiton.aspx">🔙 back up </a>
                     <a href="remakepaswoerd.aspx">🛂 editpassword</a>
          
    </div>
    <h1 style="text-align:center;font-size:20px;color:red"> BACARDI OCHO LOUNGE
From the Bacardi brand comes a reimagined space to experience your Miami HEAT: The Bacardi Ocho Lounge. Located in the AmericanAirlines Arena's 200-Suite Level, Bacardi Ocho Lounge replaces Dewar's Clubhouse as the venue's premier spot to sip, dine and socialize, taking cues from Miami's own eclectic nightlife scene in both fare and feel. And just as our city never seems to idle, neither does Bacardi Ocho Lounge, where top-rated local chefs have formed the Culinary Council to bring you the best of Miami cuisine all in one place. Together with local mixologists, they bring you an ever-changing menu of small plates and cocktails throughout the season. The HEAT just got a little more Miami.</h1>
     


    <h2 style="color:black;font-size:20px"> To see our customers that resigned to our community<input type="submit" name="select" value="open for see" /></h2>
     &nbsp;<%=tableString %><a><img src="pictures/PSX_20210602_175839.jpg" style="width:400px;border: 2px solid red" /></a>
    <a><img src="pictures/PSX_20210602_175624.jpg" style="border: 2px solid red" class="auto-style2" /><img src="pictures/PSX_20210602_175414.jpg" style="border: 2px solid red" class="auto-style1" /></a>&nbsp;
    
</asp:Content>
