using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class usercreation : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select * from usercreation";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();

        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lbl");
        String str = "";
        str = "delete from usercreation where userid='" + lbldeleteid.Text + "'";
        dl.DmlCmd(str);
        fillgrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        fillgrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbdId = (Label)row.FindControl("lbl");
        //Creating textbox
        TextBox user_name = (TextBox)row.Cells[0].Controls[0];
        TextBox user_type = (TextBox)row.Cells[1].Controls[0];


        GridView1.EditIndex = -1;
        String str = "Update usercreation set user_name='"+user_name.Text+"', user_type='" + user_type.Text + "' where userid='" + lbdId.Text + "'";
        dl.DmlCmd(str);
        fillgrid();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        fillgrid();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        fillgrid();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }



   

       
   
  
  

 
  
    protected void b1_Click(object sender, EventArgs e)
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
                 String str = "insert into usercreation(user_name,password,confirm_password,user_type)values('" + txtname.Text + "','" + enc.EncryptConnectionString(txtpassword.Text) + "','" + txtconfirm.Text + "','" + d1type.SelectedItem.Text + "')";
                 dl.DmlCmd(str);
                 Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
                 Response.Redirect("login.aspx");
                 fillgrid();
             }
         }
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtconfirm.Text = "";
        txtname.Text = "";
        txtpassword.Text = "";
    }

    protected void bcancel_Click(object sender, EventArgs e)
    {

    }
}