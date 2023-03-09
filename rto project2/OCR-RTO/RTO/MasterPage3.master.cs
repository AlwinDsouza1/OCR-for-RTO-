using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("insurancecompany.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("vehicletax.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Emission.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("duplicatelicense.aspx");
    }
   
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        Response.Redirect("drivinglicense.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewtest.aspx");
    }
protected void  LinkButton7_Click(object sender, EventArgs e)
{
    Response.Redirect("viewstaffdriving.aspx");
}
protected void  LinkButton8_Click(object sender, EventArgs e)
{
    Response.Redirect("vehicleinsurance.aspx");
}
protected void LinkButton9_Click(object sender, EventArgs e)
{
    Response.Redirect("viewstaffduplicate.aspx");
}
protected void LinkButton10_Click(object sender, EventArgs e)
{
    Response.Redirect("viewstaffrenew.aspx");
}
protected void LinkButton11_Click(object sender, EventArgs e)
{
    Response.Redirect("viewstaffregistration.aspx");
}
protected void LinkButton7_Click1(object sender, EventArgs e)
{
    Response.Redirect("checktest.aspx");
}
protected void LinkButton8_Click1(object sender, EventArgs e)
{
    Response.Redirect("staffrenw.aspx");
}
protected void LinkButton9_Click1(object sender, EventArgs e)
{
    Response.Redirect("staffduplicate.aspx");
}
    
protected void LinkButton10_Click1(object sender, EventArgs e)
{
    Response.Redirect("viewdriving.aspx");
}
protected void LinkButton11_Click1(object sender, EventArgs e)
{
    Response.Redirect("message.aspx");
}
protected void LinkButton1_Click1(object sender, EventArgs e)
{
    Response.Redirect("viewtest.aspx");
}
protected void LinkButton2_Click1(object sender, EventArgs e)
{
    Response.Redirect("machinelearning.aspx");
}
}
