using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class testpassedlist: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        String str = "insert into testpassedlist(license_no,user_name,phone_no,location_selection,license,date,test,remarks,testedby)values('" + d1slot.Text + "','" + txtname.Text + "','" + txtphone.Text + "','" + d2location.Text+ "','" + d3license.Text + "','" + txtdate.Text + "','"+result.SelectedItem.Text+"','" + txtremarks.Text + "','" + txttested.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
        clear();
    }
    public void clear()
    {
        txtdate.Text = "";
        txtname.Text = "";
        txtphone.Text = "";
        txtremarks.Text = "";
        txttested.Text = "";
        d1slot.Text = "";
        d2location.Text = "";
        d3license.Text = "";
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
        clear();
    }
protected void  d1slot_TextChanged(object sender, EventArgs e)
{
    String str = "select * from testslot where llicense_no='" + d1slot.Text + "' and Status='Booked'";
    DataSet ds = new DataSet();
    ds = dl.GetDataSet(str);
    if (ds.Tables[0].Rows.Count > 0)
    {
        txtname.Text = ds.Tables[0].Rows[0]["user_name"].ToString();
        txtdate.Text = ds.Tables[0].Rows[0]["date"].ToString();
        d2location.Text = ds.Tables[0].Rows[0]["location_selection"].ToString();
        d3license.Text = ds.Tables[0].Rows[0]["license_test"].ToString();


        txtphone.Text = ds.Tables[0].Rows[0]["phone_no"].ToString();
    }
    else
    {
        Response.Write("<script language='javascript'>alert('Entered license number is not book')</script>");
        clear();
    }
}
   
}
