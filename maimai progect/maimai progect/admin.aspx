<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="maimai_progect.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>
        body {
    width: 80%;
   
    font-size: .90em;
    font-family: Arial;
    color: black;
   background-image: url('pictures/images.jpg');
       font-family: Arial;
    background-color: burlywood;
   

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
    
     
        <a href="logout.aspx"> 🔓 logout </a>
        <a href="profileEdit.aspx">🔞 editAdmin</a>
        
        <a href="informiton.aspx">🔙 back up </a>
        
         
       
    </div>
    <br />
      <br />
    
     <br />
        
    <br />
    <br />
          <br />

     watch are database &nbsp; <%=tableStringAll %>
    <input type="submit" name="select" value="open" class="auto-style2" />
     <br />
     <br />
     <br />
     <br />
     <br />
 הכנס שם משתמש:
   <input type="text" name="name" />
    <br />
   הכנס ססמה נוכחית: 
   <input type="password" name="oldpass" />
    <br />
   הכנס ססמה חדשה: 
   <input type="password" name="newpass" />
    <br />
    <input type="submit" name="submit"  value="עדכן" />
    <%=userMsg %>

 <br />
     <br />
     <br />
       
    <br />
    
           &nbsp;<input type="text" name="id" />&nbsp; :enter user-Id to remove
    <br />
    <br />
    <input type="submit" name="delete" value="remove" />
     <%=deleting %>
     <br />
   
 
    <br />
    <br />
      <p style="color:blue;font-size:30px;">add new user </p>
 <p style="color:rebeccapurple;font-size:20px;" class="auto-style19">⬇️</p>
    <br />
    <br />
    <table>
        <tr><td class="auto-style15"> </td><td class="auto-style16"><input type="text" id="name" name="name" /> :username </td></tr>
        <tr><td class="auto-style13"></td><td class="auto-style14"> <input type="password" id="pass" name="pass" /> :password </td></tr> 
        <tr><td class="auto-style11"></td><td class="auto-style12"> <input type="text" id="basketballTEAM" name="basketballTEAM" /> :basketball-team</td></tr> 
        <tr><td class="auto-style9"></td><td class="auto-style10"><input type="text" id="adress"  name="adress" /> :adress </td></tr>
        <tr><td class="auto-style7"></td><td class="auto-style8"><input type="text" id="fn"  name="fn" /> :first-name</td></tr>
        <tr><td class="auto-style5"></td><td class="auto-style6"><input type="text" id="ln"  name="ln" /> :surname </td></tr>
        <tr><td class="auto-style5"></td><td class="auto-style6"><input type="text" id="age"  name="age" />:  age</td></tr>
         <tr><td class="auto-style3"></td><td class="auto-style4"><input type="text" id="isAdmin"  name="isAdmin" />:  Admin True/fulse</td></tr>
      </table>
    <input type="submit" name="regis" value="!!!login" />
    <%=message %>
</asp:Content>
