using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class license: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("testslot.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("renewlicense.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("duplicatelicense.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("llicense.aspx");

    }
}