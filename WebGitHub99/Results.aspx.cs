using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)Session["UserConnected"] != "yes")
        {
            Session["msg"] = "Only connected users can view this page";
            Response.Redirect("msg.aspx");
        }

        if (Request.Form["submit"]!=null)
        {
            //string score = Request.Form["scoreforCS"];
            //score += "/100";

            //string tablename = "Table0211";
            //string FileName = "Database31.accdb";
            //string sql = string.Format("UPDATE {0} SET score = '{1}' WHERE firstname = '{2}'", tablename, score, Session["UserName"].ToString()); MyAdoHelper.DoQuery(FileName, sql);
            Session["msg"] = "Results saved";
            Response.Redirect("msg.aspx");
        }
    }
}
