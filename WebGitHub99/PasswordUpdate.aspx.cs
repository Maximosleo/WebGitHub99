using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PasswordUpdate : System.Web.UI.Page
{
    public string userMsg;
    protected void Page_Load(object sender, EventArgs e)
    {
        string tablename = "Table0211";
        string FileName = "Database31.accdb";
        string selectQuery = "";
        string sql = "";
        string id = Request.Form["identification"];
        string newPass = Request.Form["newpassEdit"];
        if (Request.Form["subEdit"] != null)
        {
            selectQuery = string.Format("SELECT * FROM {0} WHERE id = '{1}'", tablename, id);
            sql = string.Format("UPDATE {0} SET [password]='{1}' WHERE id = '{2}'", tablename, newPass, id);

            if(MyAdoHelper.IsExist(FileName ,selectQuery))
            {
                MyAdoHelper.DoQuery(FileName, sql);
                userMsg = "THE DETAILS HAS BEEN UPDATED ";
            }
            else
            {
                userMsg = "your id is not valid ";
            }
        }
    }
}