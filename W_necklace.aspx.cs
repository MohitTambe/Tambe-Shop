using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tambeshop
{
    public partial class W_necklace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "W_necklacedetial")
            {
                Response.Redirect("W_nacklacedetail.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}