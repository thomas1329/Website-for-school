<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLog.aspx.cs" Inherits="maimai_progect.adminLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
        <tr><td> </td><td><input type="text" id="name" name="name" /> :username </td></tr>
        <tr><td></td><td> <input type="password" id="pass" name="pass" /> :password </td></tr> 
        <tr><td></td><td> <input type="text" id="basketballTEAM" name="basketballTEAM" /> :basketball-team</td></tr> 
        <tr><td></td><td><input type="text" id="adress"  name="adress" /> :adress </td></tr>
        <tr><td></td><td><input type="text" id="fn"  name="fn" /> :first-name</td></tr>
        <tr><td></td><td><input type="text" id="ln"  name="ln" /> :surname </td></tr>
        <tr><td></td><td><input type="text" id="age"  name="age" />:  age</td></tr>
          <tr><td></td><td><input type="text" id="isAdmin"  name="isAdmin" />:  Admin:true/fulse</td></tr>
      </table>
    <input type="submit" name="submit" value="!!!login" />
    <%=message %>
</asp:Content>
