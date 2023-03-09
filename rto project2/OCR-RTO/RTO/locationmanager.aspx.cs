using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class locationmanager : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select* from locationmanager";
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
        str = "delete from locationmanager where locationid='" + lbldeleteid.Text + "'";
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
        TextBox location= (TextBox)row.Cells[0].Controls[0];
        

        GridView1.EditIndex = -1;
        String str = "Update locationmanager set location='" +location.Text + "'  where locationid='" + lbdId.Text + "'";
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
        String str = "insert into locationmanager(location)values('" + txtlocation.Text + "')";
        dl.DmlCmd(str);

        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
        fillgrid();
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtlocation.Text = "";
    }
}