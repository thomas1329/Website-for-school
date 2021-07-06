 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="maimai_progect.registration" %>
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
    <script language="javascript"  type="text/javascript" >
        //דוגמאות  עמ'132-145 חלק ב


        function checkForm() {

            //שדה שם משתמש  ------------------------------------------
            //האם שדה לא רייק?
            var a = document.getElementById('<%=name.ClientID%>').value;
        if (a.length == 0) {
            alert("NickName must be filled out");
            return false;
            }
            if (a.length < 5 || a.length > 10) {
                alert("Length of NickName must be from 5 to 10");
                return false;
            }
            for (var i = 0; i < a.length; i++) {
                if (!((a.charAt(i) <= "ת") && (a.charAt(i) >= "א"))) {
                    alert("NickName must contain only hebrew letters");
                    return false;
                }
            }


      

        //שדה סיסמה----------------------------------------

        //האם שדה לא רייק?      
        var b = document.getElementById('<%=pass.ClientID%>').value;
            if (b == null || b == "") {
            alert("Password must be filled out");
            return false;
            }
            if (b.length < 5 || b.length > 30) {
                alert("אורך הסיסמא חייב להיות בין 5-30");
                return false;
            }     
            for (var i = 0; i < a.length; i++) {
                if (!((a.charAt(i) <= "ת") && (a.charAt(i) >= "א"))) {
                    alert("Password must contain only hebrew letters");
                    return false;
                }
            }



                //שדה שם משתמש  ------------------------------------------
                //האם שדה לא רייק?
                var a = document.getElementById('<%=basketballTEAM.ClientID%>').value;
              if (a.length == 0) {
                  alert(" basketballTEAM must be filled out");
                  return false;
            }
            if (a.length < 5 || a.length > 10) {
                alert("Length of basketballTEAM must be from 5 to 10");
                return false;
            }
            for (var i = 0; i < a.length; i++) {
                if (!((a.charAt(i) <= "z") && (a.charAt(i) >= "a"))) {
                    alert(" basketballTEAM must contain only english letters");
                    return false;
                }
            }

            var a = document.getElementById('<%=adress.ClientID%>').value;
            if (a.length == 0) {
                alert("adress must be filled out");
                return false;
            }
            if (a.length < 5 || a.length > 10) {
                alert("Length of adress must be from 5 to 10");
                return false;
            }
            for (var i = 0; i < a.length; i++) {
                if (!((a.charAt(i) <= "z") && (a.charAt(i) >= "a"))) {
                    alert(" adress must contain only english letters");
                    return false;
                }
            }

            var a = document.getElementById('<%=ln.ClientID%>').value;
            if (a.length == 0) {
                alert("first-name must be filled out");
                return false;
            }
            if (a.length < 5 || a.length > 10) {
                alert("Length of first-name must be from 5 to 10");
                return false;
            }
            for (var i = 0; i < a.length; i++) {
                if (!((a.charAt(i) <= "z") && (a.charAt(i) >= "a"))) {
                    alert(" first-name must contain only english letters");
                    return false;
                }
            }
            var a = document.getElementById('<%=fn.ClientID%>').value;
            if (a.length == 0) {
                alert("surname must be filled out");
                return false;
            }
            if (a.length < 5 || a.length > 10) {
                alert("Length of surname must be from 5 to 10");
                return false;
            }
            for (var i = 0; i < a.length; i++) {
                if (!((a.charAt(i) <= "z") && (a.charAt(i) >= "a"))) {
                    alert(" surname must contain only english letters");
                    return false;
                }
            }
            var a = document.getElementById('<%=age.ClientID%>').value;
            if (a.length == 0) {
                alert("age must be filled out");
                return false;
            }
       




            return true;
        }

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%=greeting %>
              <div class="navbar">
    
          <a href="registration.aspx">📝 registration</a>
        <a href="login.aspx"> 🔐 login </a>
          <a href="informiton.aspx">🔙 back up  </a>
    </div>

    <table>
        <tr><td> </td><td><input runat="server" type="text" id="name" name="name"  /> :username </td></tr>
        <tr><td></td><td> <input runat="server" type="password" id="pass" name="pass"  /> :password </td></tr> 
        <tr><td></td><td> <input runat="server" type="text" id="basketballTEAM" name="basketballTEAM"  /> :basketball-team</td></tr> 
        <tr><td></td><td><input runat="server" type="text" id="adress"  name="adress"  /> :adress </td></tr> 
        <tr><td></td><td><input runat="server" type="text" id="fn"  name="fn"  /> :first-name</td></tr>
        <tr><td></td><td><input runat="server" type="text" id="ln"  name="ln"  /> :surname </td></tr>
        <tr><td></td><td><input  runat="server" type="number" id="age"  name="age"   />:age</td></tr>
      </table>
     <input type="submit" name="submit" value="registration" onclick="checkForm();" />
    <%=res %>

</asp:Content>
