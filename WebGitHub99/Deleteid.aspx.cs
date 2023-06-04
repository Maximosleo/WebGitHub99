using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Deleteid : System.Web.UI.Page

{
    public string userMsg;
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((string)Session["isadmin"] != "yes")
        {
            Session["msg"] = "only admins can  view this page";
            Response.Redirect("msg.aspx");
        }


        string fileName = "Database31.accdb";
        string tablename = "Table0211";
        if (Request.Form["del_id"] != null)
        {
            string iD = Request.Form["identification"];
            string sql = "DELETE FROM Table0211 WHERE id = '" + iD  + "'";
            MyAdoHelper.DoQuery(fileName, sql);
            userMsg = "the user was deleted";
        }
    }
}