using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace tambeshop
{
    public partial class master : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(@"Data Source=MOHIT\SQLEXPRESS;Initial Catalog=shop;User ID=sa; password=1026;");
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            if (dt != null)
            {
                Label6.Text = dt.Rows.Count.ToString();
            }
            else
            {
                Label6.Text = "0";

            }
        }

        protected void btnonload1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Select username,password from login1 WHERE username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.Read() == true)
            {
                Label5.Text = "Login Successfull";
            }

            else if (TextBox1.Text == "admin" && TextBox2.Text == "10261026")
            {
                Response.Redirect("Admin panel/adminpanelhome.aspx");
            }
            else
            {
                Label5.Text = "Invaild Username or Password";
            }
            con.Close();

        }

       
    }
}