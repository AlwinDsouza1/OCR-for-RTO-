﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewstaffdriving.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewadmingrivence.aspx");
    }
}
