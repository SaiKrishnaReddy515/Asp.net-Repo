using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartShop
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
            {
                string sql = "INSERT INTO Register VALUES(@User, @Mail, @Pass,@Acc)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue("@User",TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Mail", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Pass", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Acc",DropDownList1.SelectedItem.Value);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Visible = true;
                    Label1.Text = "RegisteredSucessfully ";
                    conn.Close();

                }

            }

        }

       
    }
}