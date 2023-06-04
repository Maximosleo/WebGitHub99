using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    public string UserList;
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

        if (Request.Form["All"] != null)
        {
            selectQ = "SELECT * FROM " + tablename;
        }
        if (Request.Form["NameSubmit"] != null)
        {
            string username = Request.Form["Uname"];
            selectQ = string.Format("SELECT * FROM {0} WHERE firstname='{1}'", tablename, username);

        }
        if (Request.Form["EmailSubmit"] != null)
        {
            string email = Request.Form["Email"];
            selectQ = string.Format("SELECT * FROM {0} WHERE email='{1}'", tablename, email);

        }
        if (Request.Form["IdSubmit"] != null)
        {
            string id = Request.Form["id"];
            selectQ = string.Format("SELECT * FROM {0} WHERE id ='{1}'", tablename, id);

        }
        if(selectQ != "")
        {
            UserList = MyAdoHelper.printDataTable(FileName, selectQ).ToString();
        }

    }
}