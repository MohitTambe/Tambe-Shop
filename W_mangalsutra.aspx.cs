using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tambeshop
{
    public partial class W_mangalsutra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "W_mangalsutradetail")
            {
                Response.Redirect("W_mangalsutradetail.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}