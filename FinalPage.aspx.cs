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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDetailsView();
        }
        private void BindDetailsView()
        {
            using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM MyOrder", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    SqlDataAdapter sda2 = new SqlDataAdapter("SELECT sum(price) from MyOrder", conn);
                    DataTable ds = new DataTable();
                    sda2.Fill(ds);
                    GridView2.ShowHeader = false;
                    GridView2.DataSource = ds;
                    GridView2.DataBind();


                }

                         
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            BindDetailsView();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True");
            string sql = "insert into Details values(@v1,@v2,@v3)";
            string sql2 = "delete from MyOrder";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlCommand cmd2 = new SqlCommand(sql2, conn);
            cmd.Parameters.AddWithValue("@v1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@v2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@v3", TextBox3.Text.Trim());
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Orderd Sucessfully ..!!');", true);
        }
    }
}