using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tambeshop
{
    public partial class ProductDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if (e.CommandName == "addtocart")
            //{
            //    Response.Redirect("AddtoCart.aspx?productid=" + e.CommandArgument.ToString());
            //}
            if (e.CommandName == "addtocart")
            {
                
                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                DropDownList dlists = (DropDownList)(e.Item.FindControl("DropDownList2"));
                Response.Redirect("AddtoCart.aspx?productid=" + e.CommandArgument.ToString() + "&quantity=" + dlists.SelectedItem.ToString() + "&size=" + dlist.SelectedItem.ToString());
            }
        }
    }
}