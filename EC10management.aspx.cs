using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EC10management : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "後台管理";
        //if (Session["Cus"] != null)
        //{
        //    if (Session["Cus"].ToString() != "EC30C00002")
        //    {
        //        Response.Redirect("EC10index.aspx");
        //    }
        //}
        //else
        //{
        //    Response.Redirect("EC10index.aspx");
        //}
    }
}