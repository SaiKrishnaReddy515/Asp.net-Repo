using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmartShop
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["pimage"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            byte[] bytes;
            using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
            }
           
            using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
            {
                string sql = "INSERT INTO Seller VALUES(@Pcat, @Pname, @Pimage,@Pprice,@Pdisc)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    // cmd.Parameters.AddWithValue("@Pcat", DropDownList1.SelectedItem.Value);
                    // cmd.Parameters.AddWithValue("@Pname", TextBox1.Text);
                    // cmd.Parameters.AddWithValue("@Pimage", bytes);
                    //cmd.Parameters.AddWithValue("@Pprice",TextBox2.Text);
                    //cmd.Parameters.AddWithValue("@Pdisc", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@Pcat", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@Pname", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@Pimage", bytes);
                    cmd.Parameters.AddWithValue("@Pprice", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Pdisc", TextBox3.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Label6.Visible = true;
                    Label6.Text = "Details Uploaded Sicessfully .............!!!";
                    conn.Close();
                    
                }
            }

            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Seller", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

       
    }
}