using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartShop
{
    public partial class MyLogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=Rophie\\sqlexpress;Initial Catalog=shopping;Integrated Security=True"))
            {
                string sql = "select email,password  from Register where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";

                string sql2 = DropDownList1.SelectedItem.Value;
                if (sql2 == "Seller Account")
                {
                    Response.Redirect("SellerHome.aspx");
                }
                else
                {
                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {

                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        conn.Open();
                        int i = cmd.ExecuteNonQuery();
                        conn.Close();
                        if (dt.Rows.Count > 0)
                        {
                            Response.Redirect("SpecialHomem5.aspx");
                        }
                        else
                        {
                            Label1.Text = "Your username and word is incorrect";
                            Label1.ForeColor = System.Drawing.Color.Red;

                        }

                    }
                }

            }
        }
    }
}