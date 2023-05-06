using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

    public partial class EC10Product02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "第二期商品";
            string reqProduct = Request["p"];
            SqlConnection cn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\MyEC.mdf;Integrated Security=True;Connect Timeout=30");
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Product.* ,Price.* FROM Product ,Price WHERE Product.pID = '" + reqProduct + "' AND Price.pID = '" + reqProduct + "'", cn);

                SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        productInfo.Text = "<img src='Image/" + Request["p"] + ".jpg' /><h1>" + reader["pName"]
                       + "</h1><p>" + reader["pSpec"] + " " + reader["pSalePrice"] + "元<br />" + reader["pDesc"] + "</p>";

                    }
                }
                cn.Close();
            }
        }

        protected void buycar_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie_cart = Request.Cookies[Session["UserID"].ToString()];
            //if (cookie_cart == null)
            //{
            //    cookie_cart = new HttpCookie(Session["UserID"].ToString());
            //    cookie_cart.Expires = DateTime.Now.AddDays(10);
            //    cookie_cart.Values.Add(Request["p"], amount.SelectedValue);
            //}
            //else
            //{
            //    if (cookie_cart.Values[Request["p"]] != null)
            //    {
            //        cookie_cart.Values[Request["p"]] = amount.SelectedValue;
            //    }
            //    else
            //    {
            //        cookie_cart.Values.Add(Request["p"], amount.SelectedValue);
            //    }
            //}
            //Response.Cookies.Add(cookie_cart);
        }
    }