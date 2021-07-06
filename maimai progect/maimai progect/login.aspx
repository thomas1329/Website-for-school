<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="maimai_progect.login" %>
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
   
    

.navbar {
    width: 100%;
    background-color: darksalmon;
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
        width: 28%;
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
        
        .auto-style1 {
            width: 278px;
            margin-right: 531px;
        }


        </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <%=greeting %>
               <div class="navbar">
    
        <a href="registration.aspx">📝 registration</a>
        <a href="login.aspx"> 🔐 login </a>
          <a href="informiton.aspx">🔙 back up  </a>
         
       
    </div>
    <table style="height: 100px; width: 555px ; left:50px">
    <tr>
    
    <td class="auto-style2"><input type="text" name="name" id="name" />&nbsp; :Entre username&nbsp; </td>
    </tr>
    <tr>
 
    <td class="auto-style2"><input type="password" name="pass" id="pass" /><label for="pass">&nbsp; :password </label>
        </td>
    </tr>
    </table>
    <input type="submit" name="submit" value="!!!login" />
    <%=message %>
   
</asp:Content>
