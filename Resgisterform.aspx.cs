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
    public partial class Resgisterform : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlConnection con = new SqlConnection(@"Data Source=MOHIT\SQLEXPRESS;Initial Catalog=shop;User ID=sa; password=1026;");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop();
            filldrop1();
            filldrop2();
        }

        private void filldrop()
        {
            DropDownList3.DataSource = getuserdata();
            DropDownList3.DataTextField = "cityname";
            DropDownList3.DataValueField = "id";
            DropDownList3.DataBind();
        }

        private void filldrop1()
        {
            DropDownList2.DataSource = getuserdata1();
            DropDownList2.DataTextField = "statename";
            DropDownList2.DataValueField = "stateid";
            DropDownList2.DataBind();
        }

        private void filldrop2()
        {
             DropDownList1.DataSource = getuserdata2();
             DropDownList1.DataTextField = "countryname";
             DropDownList1.DataValueField = "countryid";
             DropDownList1.DataBind();
        }

       

        public DataTable getuserdata()
        {
            cmd = new SqlCommand("getcity", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        private object getuserdata1()
        {
            cmd = new SqlCommand("getstate", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        private object getuserdata2()
        {
            cmd = new SqlCommand("getcountry", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }   
    }
}