using System;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        manage.Visible = false;
        if (Session["Cus"] != null)
        {
            regis.Visible = false;
            login.Visible = false;
            logout.Visible = true;
            name.Visible = true;
            string cnstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyEC.mdf;Integrated Security=True;Connect Timeout=30";
            //string cnstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\桌面資料夾\\shit\\EC10網頁\\EC10\\App_Data\\Database1.mdf;Integrated Security=True";
            using (SqlConnection cn = new SqlConnection(cnstr))
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("select cName from Customer where cID = '" + Session["Cus"].ToString() + "'", cn);
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                nametxt.Text = "　Hello，" + sdr["cName"];
                sdr.Close();
            }
            if (Session["Cus"].ToString() == "EC30C00002")
            {
                manage.Visible = true;
            }
        }
        else
        {
            regis.Visible = true;
            login.Visible = true;
            logout.Visible = false;
            name.Visible = false;

        }
    }
}
