using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EC10Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "會員註冊";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Agree.Checked == false)
        {
            Response.Write("<script>alert('您尚未同意使用條款')</script>");
        }
        else if (pw.Value != pw2.Value)
        {
            Response.Write("<script>alert('確認密碼不相同，請重新輸入')</script>");
        }
        else
        {
            string cnstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyEC.mdf;Integrated Security=True;Connect Timeout=30";
            //string cnstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\桌面資料夾\\shit\\EC30(改樣板_0511_1239)\\App_Data\\Database1.mdf;Integrated Security=True";
            using (SqlConnection cn = new SqlConnection(cnstr))
            {
                cn.Open();
                Boolean used = false;
                SqlCommand cmd = new SqlCommand("select cEmail from Customer", cn);
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    if (sdr["cEmail"].Equals(email.Value))
                    {
                        used = true;
                        Response.Write("<script>alert('此信箱已經有人使用')</script>");
                        break;
                    }
                }
                sdr.Close();
                if (used == false)
                {
                    Random r = new Random();
                    long n = r.Next();

                    string sexx;
                    if (rbman.Checked == true)
                    {
                        sexx = "男";
                    }
                    else
                    {
                        sexx = "女";
                    }

                    cmd = new SqlCommand("select cID from Customer", cn);
                    sdr = cmd.ExecuteReader();
                    int idp = 0;
                    while (sdr.Read())
                    {
                        if (sdr["cID"].ToString().Substring(0, 5).Equals("EC30C"))
                        {
                            if (Int32.Parse(sdr["cID"].ToString().Substring(5, 5)) > idp) idp = Int32.Parse(sdr["cID"].ToString().Substring(5, 5));
                        }
                    }
                    idp++;
                    sdr.Close();
                    string idn = "";
                    if (idp < 10000) idn = "0" + idn;
                    if (idp < 1000) idn = "0" + idn;
                    if (idp < 100) idn = "0" + idn;
                    if (idp < 10) idn = "0" + idn;
                    idn = "EC30C" + idn + idp.ToString();
                    cmd = new SqlCommand(string.Format("insert into Customer values('{0}','{1}',N'{2}',N'{3}','{4}',N'{5}','{6}')", idn, email.Value, name.Value, sexx, birth.Value, add.Value, tel.Value), cn);
                    cmd.ExecuteNonQuery();
                    cmd = new SqlCommand(string.Format("insert into CusLogin values('{0}','{1}','{2}')", idn, email.Value, pw.Value), cn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('註冊成功，3秒後導向登入頁面')</script>");
                    Page.Response.Write("<script> setTimeout('location.href=\"EC10Login.aspx\"',3000); </script>");
                }

            }
        }
    }
}