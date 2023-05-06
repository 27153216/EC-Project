using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EC10Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "登入";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cnstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyEC.mdf;Integrated Security=True;Connect Timeout=30";
        //string cnstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\桌面資料夾\\shit\\EC10網頁\\EC10\\App_Data\\Database1.mdf;Integrated Security=True";
        using (SqlConnection cn = new SqlConnection(cnstr))
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from CusLogin where cEmail = '" + email.Value.ToString() + "'", cn);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (!sdr.HasRows)
            {
                Literal1.Text = "帳號或密碼錯誤！";
            }
            else
            {
                sdr.Read();
                if (!sdr["cPwd"].Equals(pw.Value))
                {
                    Literal1.Text = "帳號或密碼錯誤！";
                }
                else
                {
                    Session["Cus"] = sdr["cID"];
                    Literal1.Text = "登入成功！";
                    Response.Redirect("EC10index.aspx");
                }
            }
            sdr.Close();
        }
    }
}