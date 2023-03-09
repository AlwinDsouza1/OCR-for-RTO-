using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class feedback : System.Web.UI.Page
{
    DataLayer dl=new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str="insert into feedback(name,Phone,date,message)values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+Label1.Text+"','"+TextBox4.Text+"')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Feedback IS SUBMITED')</script>");
    }
}