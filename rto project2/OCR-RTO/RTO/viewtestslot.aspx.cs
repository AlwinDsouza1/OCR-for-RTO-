using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class viewtestslot: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        

            

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
        String str = "select * from testslot where llicense_no ='"+TextBox1.Text+"' or user_name='"+TextBox1.Text+"'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();

}
        else
            Response.Write("<script language='javascript'>alert('Record Not found')</script>");
    }
}