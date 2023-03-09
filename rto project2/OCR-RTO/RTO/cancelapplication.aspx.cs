using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class cancelapplication : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void b1_Click(object sender, EventArgs e)
    {
           string qstr;
            qstr = "update learnerlicense set Status='Cancel' where learnerlicenseid ='" + txtname.Text + "' or user_name='"+txtname.Text+"'";
            dl.DmlCmd(qstr);

            String str ="insert into cancelapplication(user_name,reason)values('" + txtname.Text + "','" + txtreason.Text + "')";
            dl.DmlCmd(str);
            Response.Write("<script language='javascript'>alert('Cancelled')</script>");
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtreason.Text = "";
    }

    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "select * from learnerlicense where learnerlicenseid='" +txtname.Text+ "' or user_name='"+txtname.Text+"'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
        
    }
}