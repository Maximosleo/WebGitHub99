<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="PasswordUpdate.aspx.cs" Inherits="PasswordUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id+v"simpleEdit" action ="" method ="post">
        <br />
        please input your currnt id
        <input type='text'name='identification' />
        <br />
        please enter a new password
        <input type="password" name="newpassEdit" />
        <br />
        <input type="submit" name="subEdit" value="update" />
        </form>
       <%=userMsg %>
</asp:Content>

