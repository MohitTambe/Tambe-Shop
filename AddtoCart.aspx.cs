﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace tambeshop
{
    public partial class AddtoCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

                if (Request.QueryString["productid"] != null)
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
                        GridView1.FooterRow.Cells[8].Text = "Total Amount";
                        GridView1.FooterRow.Cells[9].Text = grandtotal().ToString();
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
                        GridView1.FooterRow.Cells[8].Text = "Total Amount";
                        GridView1.FooterRow.Cells[9].Text = grandtotal().ToString();
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
                        GridView1.FooterRow.Cells[7].Text = "Total Amount";
                        GridView1.FooterRow.Cells[8].Text = grandtotal().ToString();
                    }
                }
                Label4.Text = GridView1.Rows.Count.ToString();
            }
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlaceOrder.aspx");
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1;i++)
            {
                 int sr;
                 int sr1;
                 string qdata;
                 string dtdata;
                 sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                 TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                 qdata = cell.Text ;
                 dtdata = sr.ToString();
                 sr1 = Convert.ToInt32(qdata);
                 if (sr == sr1)
                 {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    Label6.Text = "Item Has Been Deleted From Your Cart";
                    break;
                 }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
                Session["buyitems"] = dt;
                Response.Redirect("AddToCart.aspx");
        }
    }
}