using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class drivinglicense : System.Web.UI.Page
{
    
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select * from drivinglicense";
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
        txtdob_CalendarExtender.EndDate = DateTime.Now;  //to dissable past Date
        
    }
    protected void bsave_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("photo//" + FileUpload1.FileName));
        }
        String str = "insert into drivinglicense(license_no,drivinglicenseno,user_name,dob,paddress,license,blood,phone,valid_from,valid_to,issue_date,submission_date,image,Status)values('"+txtno.Text+"','" + txtdriving.Text + "','" + txtname.Text + "','" + txtdob.Text + "','" + txtpaddress.Text + "','" + d1license.Text + "','" + d2blood.Text + "','" + txtphone.Text + "','" + txtvalid.Text + "','" + txtto.Text + "','" + txtdate.Text + "','" + txtsubmission.Text + "','" + FileUpload1.FileName + "','Issued Not Issued')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lbl");
        String str = "";
        str = "delete from drivinglicense where drivinglicenseid='" + lbldeleteid.Text + "'";
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
        TextBox drivinglicenseno = (TextBox)row.Cells[1].Controls[0];
        TextBox valid_from  = (TextBox)row.Cells[2].Controls[0];
        TextBox valid_to = (TextBox)row.Cells[3].Controls[0];
        TextBox issue_date = (TextBox)row.Cells[4].Controls[0];
        
       

        GridView1.EditIndex = -1;
        String str = "Update drivinglicense set user_name='" + user_name.Text + "', drivinglicenseno='" + drivinglicenseno.Text + "',valid_from='" + valid_from.Text + "',valid_to='"+valid_to.Text+"',issue_date='"+issue_date.Text+"' where drivinglicenseid='" + lbdId.Text + "'";
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

    public void clear()
    {
        txtdate.Text = "";
        txtdob.Text = "";
        txtdriving.Text = "";
        txtname.Text = "";
        txtpaddress.Text = "";
        txtsubmission.Text = "";
        txtto.Text = "";
        txtvalid.Text = "";
        d1license.SelectedIndex = 0;
        d2blood.SelectedIndex = 0;
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        clear();
    
    }
    protected void txtname_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void txtvalid_TextChanged(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(txtvalid.Text);
        String yr = dt.AddYears(15).ToString();
        txtto.Text = yr;
    }
    protected void txtno_TextChanged(object sender, EventArgs e)
    {
        String str = "select * from learnerlicense where learnerlicenseid='" + txtno.Text + "' and Status='Approval'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtname.Text = ds.Tables[0].Rows[0]["user_name"].ToString();

            txtdob.Text = ds.Tables[0].Rows[0]["dob"].ToString();
            txtpaddress.Text = ds.Tables[0].Rows[0]["paddress"].ToString();
            txtphone.Text = ds.Tables[0].Rows[0]["phone_no"].ToString();
            d1license.Text = ds.Tables[0].Rows[0]["license"].ToString();
            d2blood.Text = ds.Tables[0].Rows[0]["blood"].ToString();

        }
        else
        {
            Response.Write("<script language='javascript'>alert('Invalid Learner License Number')</script>");
            clear();
        }
    }
    protected void txtto_TextChanged(object sender, EventArgs e)
    {

    }
}