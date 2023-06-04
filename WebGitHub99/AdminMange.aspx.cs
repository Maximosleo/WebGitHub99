using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMange : System.Web.UI.Page
{
    public string userList = "";
    public string erorrMsg = "";
    public string SelfDeleteMsg = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["isadmin"] != "yes")
        {
            Session["msg"] = "only admins can  view this page";
            Response.Redirect("msg.aspx");
        }

        string tablename = "Table0211";
        string FileName = "Database31.accdb";
        string selectQ = "";
        
        if (Request.Form["ShowAll"] != null)
        {
            if (Request.Form["Show"] == "Admins")
            {
                selectQ = String.Format("SELECT * FROM {0} WHERE isadmin = -1", tablename);
            }
            else if (Request.Form["Show"] == "Users")
            {
                selectQ = String.Format("SELECT * FROM {0}", tablename);
            }
        }

        if (selectQ != "")
        {
            userList += MyAdoHelper.printDataTable(FileName, selectQ).ToString();
        }
        if (Request.Form["mySubmit"] != null)
        {
            string Uname = (string)Request.Form["Uname"];
            if (Request.Form["adminAction"] == "makeAdmin")
            {
                string sqlSelect = string.Format("SELECT * FROM {0} WHERE firstname = '{1}' AND isadmin = 0", tablename, Uname);

                if (MyAdoHelper.IsExist(FileName, sqlSelect))
                {
                    string sql = string.Format("UPDATE {0} SET isadmin = -1 WHERE firstname = '{1}' ", tablename, Uname);
                    MyAdoHelper.DoQuery(FileName, sql);
                    string msg = ("<h1 style='color: red'>Admin access added</h1>");
                    Session["msg"] = msg;
                    Response.Redirect("msg.aspx");
                }
                else
                {
                    erorrMsg = "<p style = 'color:red' >User doesnot exist<p>";
                }
            }
            else if (Request.Form["adminAction"] == "removeAdmin")
            {
                if (Uname == (string)Session["UserName"])
                {
                    SelfDeleteMsg = "<h1> yu cant delete your own admin access </h1>";
                }
                else
                {
                    string sqlSelect = string.Format("SELECT * FROM {0} WHERE firstname = '{1}' AND isadmin = -1", tablename, Uname);

                    if (MyAdoHelper.IsExist(FileName, sqlSelect))
                    {
                        string sql = string.Format("UPDATE {0} SET isadmin = 0 WHERE firstname = '{1}' ", tablename, Uname);
                        MyAdoHelper.DoQuery(FileName, sql);
                        string msg = ("<h1 style='color: red'>DELETE Admin Access</h1><center<h2><a class='adminLink' href='AdminMange.aspx'>Previous</a></h2></center>");
                        Session["msg"] = msg;
                        Response.Redirect("msg.aspx");
                    }
                    else
                    {
                        erorrMsg = "<p style = 'color:red' >User doesno exist<p>";
                    }
                }
            }
        }
    }
}
    
