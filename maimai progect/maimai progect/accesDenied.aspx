<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="accesDenied.aspx.cs" Inherits="maimai_progect.accesDenied" %>
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
    width: 50%;
    background-color: chartreuse;
    overflow: auto;
    height: 50px;
    margin-bottom: 0px;
    margin-right: 0px;
}

    .navbar a {
        float: left;
        padding: 15px;
        color: white;
        text-decoration: none;
        font-size: 17px;
        width: 27%;
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
    
          <a href="registration.aspx">📝 registration</a>
        <a href="login.aspx"> 🔐 login </a>
          <a href="informiton.aspx">🔙 back up  </a>
    </div>
<h1 style ="text-align:center;color:red;font-size:20px;">To Get to this page to required to login </h1>
</asp:Content>
