using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ceasedvehicle : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select* from ceasedvehicle";
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
        str = "delete from ceasedvehicle where ceasedvehicleid='" + lbldeleteid.Text + "'";
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
        TextBox Register_no = (TextBox)row.Cells[0].Controls[0];
        TextBox user_name = (TextBox)row.Cells[1].Controls[0];
        TextBox phone_no= (TextBox)row.Cells[2].Controls[0];
        TextBox vehicle_name = (TextBox)row.Cells[3].Controls[0];
        TextBox reason= (TextBox)row.Cells[4].Controls[0];
        TextBox Amount= (TextBox)row.Cells[5].Controls[0];
        

        GridView1.EditIndex = -1;
        String str = "Update ceasedvehicle set register_no='" + Register_no.Text + "', user_name='" + user_name.Text + "',phone_no='" + phone_no.Text + "',vehicle_name='" + vehicle_name.Text + "',reason='" +reason.Text + "',amount='" + Amount.Text + "' where ceasedvehicleid='" + lbdId.Text + "'";
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
        String str = "insert into ceasedvehicle(register_no,user_name,address,phone_no,vehicle_model,vehicle_name,vehicle_type,reason,amount)values('" + txtregister.Text + "','" + txtname.Text + "','" + txtaddress.Text + "','" + txtphone.Text + "','" + txtmodel.Text + "','" + txtvehiclename.Text + "','" + txttype.Text + "','" + txtreason.Text + "','"+txtamount.Text+"')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
        fillgrid();
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        txtaddress.Text = "";
        txtamount.Text = "";
        txtmodel.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        txtreason.Text = "";
        txtregister.Text = "";
        txttype.Text = "";
        txtvehiclename.Text = "";
        


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}