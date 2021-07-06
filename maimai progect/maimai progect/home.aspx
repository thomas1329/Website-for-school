<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="maimai_progect.home" %>

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
    
          <a href="onlyRegisteredUsers.aspx">🚫 registered</a>
        <a href="logout.aspx"> 🔓 logout </a>
          <a href="informiton.aspx">🔙 back up  </a>
                   <a href="remakepaswoerd.aspx">🛂 editpassword</a>
          
        
    </div>
 
    <h1 style="text-align:center;font-size:20px;">TAKE ENTERTAINMENT TO A WHOLE NEW LEVEL
Enjoy the excitement of Miami Basketball with first-class experiences at AmericanAirlines Arena. Suite, Courtside and Club Seat holders can entertain in style with VIP parking, concierge services, and high-end food and beverage options from some of the best seats in the house.</h1>
    <h2>LOGE SUITES
Loge Suites, located on the exclusive Suite Level of the AmericanAirlines Arena, include some of the most comfortable seats in the Arena. These private, opera-style box seats deliver an array of amenities to Loge holders and their guests for all AmericanAirlines Arena events depending on location.

Loge Suite amenities include:

Comfortable seating for four (4), six (6), eight (8) OR ten (10) guests
Arena parking garage passes
Private entrance with elevator access
In-seat food and beverage service
Mini-refrigerator and food station
Access to the exclusive Bacardi Ocho Lounge </h2>
    <h3>INDIVIDUAL SUITES RENTALS
Party Suites, located on the exclusive Suite Level of the AmericanAirlines Arena, provide the ultimate hospitality experience for groups looking to enjoy a HEAT game in style. These private boxes deliver an array of amenities and are offered as all-inclusive packages to make your HEAT experience simply spectacular.

Suite amenities include:

Comfortable seating for minimum of groups ranging from 18-80
Arena parking garage passes
Private entrance with elevator access
Catering Packages including non-alcoholic and alcoholic beverages
Private Butler Service
Appearance from entertainment team members</h3>
</asp:Content>