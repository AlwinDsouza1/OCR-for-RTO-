using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class userregistration: System.Web.UI.Page
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
            String str1 = "select * from usercreation where user_name='" + txtname.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str1);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert('user name  exits')</script>");
            }
            else
            {

                String str = "insert into userregistration(user_name,dob,address,phone_no,password,confirm,city)values('" + txtname.Text + "','" + txtdob.Text + "','" + txtaddress.Text + "','" + txtphone.Text + "','" + txtpassword.Text + "','" + txtconfirm.Text + "','" + txtcity.Text + "')";
                dl.DmlCmd(str);
                String str2 = "insert into usercreation(user_name,password,confirm_password,user_type)values('" + txtname.Text + "','" + enc.EncryptConnectionString(txtpassword.Text) + "','" + txtconfirm.Text + "','User')";
                dl.DmlCmd(str2);
                Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
                Response.Redirect("login.aspx");
            }
        }
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        txtcity.Text = "";
        txtdob.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}