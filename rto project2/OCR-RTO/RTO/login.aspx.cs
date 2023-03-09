using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class login: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bsave_Click(object sender, EventArgs e)
    {
        encpass enc=new encpass();
        if (txtpassword.Text.Length < 8)
        {
            Response.Write("<script language='javascript'>alert('Password should be minimum 8 characters')</script>");
        }
        else
        {
            String str1 = "select * from usercreation where user_name='" + txtname.Text + "' and password='" + enc.EncryptConnectionString(txtpassword.Text) + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["uname"] = txtname.Text;
                if (ds.Tables[0].Rows[0]["user_type"].ToString() == "Admin")
                {

                    Response.Redirect("usercreation.aspx");
                }
                //else if (ds.Tables[0].Rows[0]["user_type"].ToString() == "Staff" && ds.Tables[0].Rows[0]["confirm_password"].ToString() == "traffic111")
                else if (ds.Tables[0].Rows[0]["user_type"].ToString() == "Traffic Police")
                {
                    Response.Redirect("trafficregi.aspx");

                }
                else if (ds.Tables[0].Rows[0]["user_type"].ToString() == "Staff")
                {
                    Response.Redirect("staff.aspx");
                }
                else
                    Response.Redirect("license.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Invalid Username or Password')</script>");
            }

        }
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpassword.Text = "";
        
    }
    
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userregistration.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        Response.Redirect("changepass.aspx");
    }
}