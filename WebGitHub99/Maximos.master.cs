using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maximos : System.Web.UI.MasterPage
{
    public string links = "";
    public string logOutBtn = "";

    protected void Page_Load(object sender, EventArgs e)
{
        if (Request["logOut"] != null)
        {
            Session["UserName"] = null;
            Session["UserConnected"] = null;
            Session["isAdmin"] = null;
            Response.Redirect("HomePage.aspx");
        }

        links += "| <a href ='SignUp.aspx'>sign up</a>";
        links += "| <a href ='Login.aspx'>login</a>";
        if((string)Session["UserConnected"] == "yes")
        {
         links = "| <a href ='Test.aspx'>Theory Test</a>";
            logOutBtn = "<form method='post' action=''></p><input type='submit' id ='logOut' name = 'logOut' value = 'log out' /></form>";
        }
}
}
