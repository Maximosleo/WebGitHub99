<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="Deleteid.aspx.cs" Inherits="Deleteid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>delete by ID</h1>
    <form action = "" method ="post" >
        id for delete:<input type ="text" id ="identification" name ="identification" />
        <input type ="submit" id="del_id" name="del_id" value ="DELETE" />
    </form>
    <br /> <% = userMsg%>
</asp:Content>



