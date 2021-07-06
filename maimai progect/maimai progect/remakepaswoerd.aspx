<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="remakepaswoerd.aspx.cs" Inherits="maimai_progect.remakepaswoerd" %>
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
    width: 50%;
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <%=greeting %>
               <div class="navbar">
    
     
        
          <a href="home.aspx">🏘️ home </a>
        <a href="logout.aspx"> 🔓 logout </a>
          <a href="informiton.aspx">🔙 back up </a>
        
   
       
    </div>
    <br />
      <br />
    <br />

  
     <br />
     <br />

 <input type="text" name="name" />
     :type account  name isAdmin
    <br />
 
   <input type="password" name="oldpass" />
    :type the right  category
    <br />
  
   <input type="password" name="newpass" />
       :type your change to Admin category
    <br />
    <input type="submit" name="submit"  value="edit" />
    <%=newwone %>
</asp:Content>
