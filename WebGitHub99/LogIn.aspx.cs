using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class LogIn : System.Web.UI.Page
{
    public string UserMsg;
    protected void Page_Load(object sender, EventArgs e)


    {

        if ((string)Session["UserConnected"] == "yes")
        {
            Session["msg"] = "signed in!";
            Response.Redirect("msg.aspx");
        }

        if (Request.Form["Submit"] != null)
        {
            string tablename = "Table0211";
            string FileName = "Database31.accdb";
            string Email = Request.Form["Email"];
            string Password = Request.Form["Password"];

            string sqlSelect = string.Format("SELECT * FROM {0} WHERE email = '{1}' AND password = '{2}'", tablename, Email, Password);
            if (MyAdoHelper.IsExist(FileName, sqlSelect))
            {
                DataTable dt = MyAdoHelper.ExecuteDataTable(FileName, sqlSelect);

                Session["UserName"] = dt.Rows[0]["firstname"].ToString();
                bool isAdmin = (bool)dt.Rows[0]["isadmin"];

                if (isAdmin)
                { Session["isadmin"] = "yes"; }

                Session["UserConnected"] = "yes";

                Session["msg"] = "logged in";
                Response.Redirect("msg.aspx");
            }
        }
    }
}