using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class testslot: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl.Text = DateTime.Now.ToString();
        }
    }
    protected void bsave_Click(object sender, EventArgs e)
    {

        String str = "insert into testslot(llicense_no,user_name,phone_no,license_test,location_selection,Date,Status)values('"+txtllno.Text+"','" + txtname.Text + "','" + txtphone.Text + "','" + r1test.SelectedItem.Text + "','" + dlocation.SelectedItem.Text + "','" + lbl.Text + "','Booked Pending')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
     
        txtname.Text = "";
        txtphone.Text = "";
        dlocation.SelectedIndex = 0;
        r1test.SelectedIndex = 0;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void txtllno_TextChanged(object sender, EventArgs e)
    {
         String str = "select * from learnerlicense where learnerlicenseid='" + txtllno.Text + "' and Status='Approval'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtname.Text = ds.Tables[0].Rows[0]["user_name"].ToString();


            txtphone.Text = ds.Tables[0].Rows[0]["phone_no"].ToString();
            Image1.ImageUrl = "~//photo//" + ds.Tables[0].Rows[0]["image"].ToString();
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Your learner license not approved')</script>");
        }
    }
    
}