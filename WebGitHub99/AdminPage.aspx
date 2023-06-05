<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>ADMIN PAGE </h1>
    <center> 
     <a href="Deleteid.aspx" >DELETE USERS</a><br />
        <a href="Search.aspx" >SEARCH USERS</a><br/>
        <a href="AdminMange.aspx" >MANAGE PREMISSION</a><br />
    </center>
</asp:Content>

