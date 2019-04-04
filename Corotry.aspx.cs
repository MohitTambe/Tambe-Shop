using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tambeshop
{
    public partial class Corotry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hellopanel.Visible = false;
                byepanel.Visible = false;
            }
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlmgs.SelectedValue == "-1")
            {
                hellopanel.Visible = false;
                byepanel.Visible = false;
            }
            else if (ddlmgs.SelectedValue == "1")
            {
                hellopanel.Visible = true;
                byepanel.Visible = false;
            }
            else
            {
                hellopanel.Visible = false;
                byepanel.Visible = true;
            }

        }
    }
}