<%@ Page Title="" Language="C#" MasterPageFile="~/Maximos.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" action="">
        <table>
            <tr>
                <td>
                    Email:
                </td>
                <td>
                    <input type="text" name="Email" />
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <input type="password" name="Password" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="Submit" />
                </td>
            </tr>
        </table>
    </form>
     <a href ="PasswordUpdate.aspx">Forgat Password  </a>
</asp:Content>

