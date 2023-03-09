using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class changepass: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtconfirm.Text = ""; 
        txtnew.Text = "";
        txtold.Text = "";
    }
    protected void bchange_Click(object sender, EventArgs e)
    {
        encpass enc = new encpass();
        String str = "select password from usercreation where password='" +enc.EncryptConnectionString(txtold.Text )+ "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            str = "update usercreation set password='"+enc.EncryptConnectionString( txtnew.Text) + "'where user_name='"+txtuser.Text+"'";
            dl.DmlCmd(str);
        }
        else
        {
            Response.Write("<script language='javascript'>alert ('invalid old password')</script>");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}