using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EC10logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "登出";
        Session.Remove("Cus");
        Page.Response.Write("<script> setTimeout('location.href=\"EC10index.aspx\"',3000); </script>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC10index.aspx");
    }
}