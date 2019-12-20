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
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
            using (SqlConnection conn = new SqlConnection("Data Source=sai\\sqlexpress;Initial Catalog=sai;Integrated Security=True"))
            {
                string sql = "select * from Register";
                using (SqlDataAdapter sda = new SqlDataAdapter(sql, conn))
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