using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class policemaster: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select* from policemaster";
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
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        fillgrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lbl");
        String str = "";
        str = "delete from policemaster where policemasterid='" + lbldeleteid.Text + "'";
        dl.DmlCmd(str);
        fillgrid();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbdId = (Label)row.FindControl("lbl");
        //Creating textbox
        TextBox police_name = (TextBox)row.Cells[0].Controls[0];
        TextBox Age= (TextBox)row.Cells[1].Controls[0];
        TextBox Address = (TextBox)row.Cells[2].Controls[0];
        TextBox Phone_no= (TextBox)row.Cells[3].Controls[0];
        

        GridView1.EditIndex = -1;
        String str = "Update policemaster set police_name='" +police_name.Text + "',age='" +Age.Text + "',address='"+Address.Text+"',phone_no='"+Phone_no.Text+"'  where policemasterid='" + lbdId.Text + "'";
        dl.DmlCmd(str);
        fillgrid();
    }

    protected void b1_Click(object sender, EventArgs e)
    {
        String str = "insert into policemaster(police_name,designation,age,dob,address,city,phone_no,education)values('" + txtname.Text + "','" + txtdesignation.Text + "','" + txtage.Text + "','" + txtdob.Text + "','" + txtaddress.Text + "','" + txtcity.SelectedItem.Text + "','" + txtphone.Text + "','" + txteducation.SelectedItem.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
        fillgrid();
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        txtage.Text = "";
        txtcity.SelectedIndex = 0;
        txtdesignation.Text = "";
        txtdob.Text = "";
        txteducation.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        
    }
    protected void txtdob_TextChanged(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        DateTime dt1 = Convert.ToDateTime(txtdob.Text);
        TimeSpan ts = dt - dt1;
        int val = ts.Days / 365;
        txtage.Text = val.ToString();
    }
}