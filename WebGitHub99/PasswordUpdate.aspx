<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="PasswordUpdate.aspx.cs" Inherits="PasswordUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id+v"simpleEdit" action ="" method ="post">
        <table>
               <tr>
          <td>
        please input your currnt id</td>
       <td> <input type='text'name='identification' /></td>
     
                </tr>

        <tr>
         <td>
        please enter a new password</td>
       <td> <input type="password" name="newpassEdit" />
         </td>
            </tr>
            <tr>
            <td>
        <input type="submit" name="subEdit" value="update" />
                </td>
            </tr>
            </table>
        </form>
       <%=userMsg %>
</asp:Content>

