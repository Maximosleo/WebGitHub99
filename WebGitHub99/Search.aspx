<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1>Search</h1>
    <form method="post" action="" name="searchForm" id="searchForm" >
        <table class="formTable" cellpadding="5" cellspacing="1">
            <tr>
                <td>
                    <h2>
                        <input type="submit" id="All" name="All" value="show all users" /></h2>
                </td>
            </tr>
            <tr>
                <td>FIRST NAME: 
                </td>
                <td>
                    <input type="text" id="Uname" name="Uname" /> <input type="submit" name="NameSubmit" value="submit"/>
                </td>
            </tr>
            <tr>
                <td> EMAIL ADRESS:
                </td>
                <td>
                    <input type="text" id="Email" name="Email"/> <input type="submit" name="EmailSubmit" value="submit" />
                </td>
            </tr>
            <tr>
                <td>ID:
                </td>
                <td>
                    <input type="text" id="id" name="id"/> <input type="submit" name="IdSubmit" value="submit"/>
                </td>
              
            </tr>
            </table>
    </form>
    <%=UserList %>
</asp:Content>

