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
    public partial class WebForm8 : System.Web.UI.Page
    {

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["pimage"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
            {
                string sql = "select * from Seller where pcatagory='Electronics'";
                using (SqlDataAdapter sda = new SqlDataAdapter(sql, conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select3")
            {

                int rowIndex = Convert.ToInt32(e.CommandArgument.ToString());
                string cat = GridView1.Rows[rowIndex].Cells[0].Text;

                string name = GridView1.Rows[rowIndex].Cells[1].Text;
                string disc = GridView1.Rows[rowIndex].Cells[3].Text;
                string prce = GridView1.Rows[rowIndex].Cells[2].Text;
                int price = Int32.Parse(prce);
                int discout = Int32.Parse(disc);
                //Label1.Text = row1+" "+country+" "+discout+" "+price+" ";

                // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " + name + "\\nCountry: " + country + "');", true);

                using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
                {
                    string sql = "INSERT INTO MyOrder VALUES(@v1, @v2, @v3,@v4)";
                    using (SqlCommand cmd = new SqlCommand(sql, conn))
                    {
                        cmd.Parameters.AddWithValue("@v1", cat);
                        cmd.Parameters.AddWithValue("@v2", name);
                        cmd.Parameters.AddWithValue("@v3", price);
                        cmd.Parameters.AddWithValue("@v4", discout);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Added to Cart Sucessfully ');", true);
                        conn.Close();


                    }
                }
            }
        }
    }
}