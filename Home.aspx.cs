﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tambeshop
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
           Response.Redirect("~/Bangles.aspx");
        }

    }
}