using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



public partial class SignUp : System.Web.UI.Page
{

    public static string CheckChecked(string[] arr, string value)
    {
        for (int i = 0; i < arr.Length; i++)
        {
            if (arr[i] == value)
            {
                return "checked";
            }
        }
        return ""; // Return empty string if the value is not found
    }
    protected void Page_Load(object sender, EventArgs e )
    {

        if ((string)Session["UserConnected"] == "yes"){
            Session["msg"] = "signed in!";
            Response.Redirect("msg.aspx");
        }

        if (Request.Form["sign up"] !=null)
        {
            string FirstName = Request.Form["firstname"];
            string LastName = Request.Form["lastname"];
            string Password = Request.Form["password"];
            string Email = Request.Form["email"];
            int Age = int.Parse(Request.Form["age"]);
            string ID = Request.Form["identification"];
            string gender = Request.Form["gender"];

            string[] cc = Request.Form.GetValues("COMPNEYCAR");

            string MERZADEZBENZ = CheckChecked(cc, "MERZADEZ BENZ");
            string AUDI = CheckChecked(cc, "AUDI");
            string BMW = CheckChecked(cc, "BMW");
            string TOYOTA = CheckChecked(cc, "TOYOTA");


            string livingarea = Request.Form["livingarea"];
           



            string tablename = "Table0211";
            string FileName = "Database31.accdb";

            string sql = string.Format("INSERT INTO {0} (firstname,lastname,email,[password],age,id,gender,[MERZEDZ BENZ],AUDI,BMW,TOYOTA,livingarea) VALUES ('{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}','{9}','{10}','{11}','{12}')", tablename, FirstName,LastName,Email,Password,Age,ID,gender, MERZADEZBENZ,AUDI,BMW,TOYOTA,livingarea);


            MyAdoHelper.DoQuery(FileName, sql);

            Session["UserName"] = FirstName;
            Session["UserConnected"] = "yes";

            Session["msg"] = "signed in!";
            Response.Redirect("msg.aspx");

        }






           
            
           

            
        
    }
}