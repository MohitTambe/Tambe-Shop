using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Collections.Specialized;

namespace tambeshop
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Button1.Visible = false;
            if (!IsPostBack)
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("grossweight");
                dt.Columns.Add("netweight");
                dt.Columns.Add("size");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("imagepath");


                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {

                        dr = dt.NewRow();
                        String mycon = @"Data Source=MOHIT\SQLEXPRESS;Initial Catalog=shop;User ID=sa; password=1026;";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Masterproduct where productid=" + Request.QueryString["productid"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["grossweight"] = ds.Tables[0].Rows[0]["grossweight"].ToString();
                        dr["netweight"] = ds.Tables[0].Rows[0]["netweight"].ToString();
                        dr["imagepath"] = ds.Tables[0].Rows[0]["imagepath"].ToString();
                        dr["size"] = Request.QueryString["size"];
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        double price = Convert.ToDouble(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        double totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = @"Data Source=MOHIT\SQLEXPRESS;Initial Catalog=shop;User ID=sa; password=1026;";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Masterproduct where productid=" + Request.QueryString["productid"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["grossweight"] = ds.Tables[0].Rows[0]["grossweight"].ToString();
                        dr["netweight"] = ds.Tables[0].Rows[0]["netweight"].ToString();
                        dr["imagepath"] = ds.Tables[0].Rows[0]["imagepath"].ToString();
                        dr["size"] = Request.QueryString["size"];
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["price"].ToString();
                        double price = Convert.ToDouble(ds.Tables[0].Rows[0]["price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        double totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();

                    }


                }
                Label14.Text = GridView1.Rows.Count.ToString();

            }
            Label5.Text = DateTime.Now.ToLongDateString();
            findorderid();
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];

            }
            String orderid;
            orderid = "BVT" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label4.Text = orderid;


        }

        public void saveaddress()
        {
            String updatepass = "insert into OrderAddress(orderid,username,email,mobileno,address,pincode,city,state,country) values('" + Label4.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "')";
            String mycon1 = @"Data Source=MOHIT\SQLEXPRESS;Initial Catalog=shop;User ID=sa; password=1026;";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];



            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                //string s1;
                //s1 =Convert.ToString(Label5.Text);
                String updatepass = "insert into Orderdetails(orderid,srno,productid,productname,grossweight,netweight,size,quantity,price,totalprice,dateoforder) values('" + Label4.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["productid"] + ",'" + dt.Rows[i]["productname"] + "'," + dt.Rows[i]["grossweight"] + "," + dt.Rows[i]["netweight"] + "," + dt.Rows[i]["size"] + "," + dt.Rows[i]["quantity"] + "," + dt.Rows[i]["price"] + "," + dt.Rows[i]["totalprice"] + ", '"+Label5.Text +"')";
                String mycon1 = @"Data Source=MOHIT\SQLEXPRESS;Initial Catalog=shop;User ID=sa; password=1026;";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();

            }
            saveaddress();
            Response.Redirect("PlaceSuccessfully.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string destinationaddr = "91" + TextBox3.Text;
            string message = "Your OTP to Verify Number is " + value + " ( Sent By : Tambe Jewellers... )";
            Label3.Text = message;
            String message1 = HttpUtility.UrlEncode(message);

            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "Tr/6H3G2nyk-ekX9emlO96nTOy5nDrWoDFUaN8E0l4"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;
                Label19.Text = "" + value;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text == Session["otp"].ToString())
            {
                Panel1.Visible = false;
                Label18.Text = "Your Mobile Number Has Been Verified Successfully - Thanks";
                Button1.Visible = true;
                Label17.Visible=false;
            }
            else
            {
                Label18.Text = "OTP Number is Not Correct : Your Mobile Number not Verified";
                Panel1.Visible = true;
            }

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }
}