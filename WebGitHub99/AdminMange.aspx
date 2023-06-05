<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="AdminMange.aspx.cs" Inherits="AdminMange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="color: red">ADMIN MANAGE</h1>
    <form method="post" action="" onsubmit="return CheckShow()" id="ShowForm">
        <table class="formTable" cellpadding="5" cellspacing="0">
            <tr>
                <td>
                   <p>ShoW all the: </p>
                </td>
                <td>
                    <select id="Show" name="Show">
                        <option value="Users">Users</option>
                        <option value="Admins" style="color:red">Admins</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="ShowAll" id="ShowAll" value="Show" />
                </td>
            </tr>
        </table>
    </form>
    <form method="post" action="" name="adminForm" id="adminForm" >
        <table class="formTable" cellpadding="5" cellspacing="0">
            <tr><td><%=erorrMsg %></td></tr>
            <tr>
            <td colspan="2">
                    <p style="display: none; color: red" id="Erorr"></p>
                </td>
            </tr>
            <tr>
                <td>User Name:
                </td>
                <td>
                    <input type="text" name="Uname" id="Uname" />
                </td>
                <td>
                    <select name="adminAction" id="adminAction" >
                        <option value="SELECT ACTION">select action</option>
                        <option value="makeAdmin">give admin premission</option>
                        <option value="removeAdmin">DELETE ADMIN PREMISSION</option>
                    </select>
                </td>
            </tr>
            <%=SelfDeleteMsg %>
            <tr>
                <td>
                    <input type="submit" name="mySubmit" id="mySubmit" value="Send" />
                </td>
                <td>
                    <input type="reset" name="myReset" id="MyReset" value="Clean" />
                </td>
            </tr>
        </table>
    </form>
    <%=userList %>
</asp:Content>

