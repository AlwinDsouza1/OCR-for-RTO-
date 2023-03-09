using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class searchtrafficlicense: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewtrafficdriving.aspx");
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    String str = "select drivinglicenseno,user_name,phone,blood,valid_from,valid_to,Status from drivinglicense where drivinglicenseno='"+TextBox1.Text+"'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
}
}