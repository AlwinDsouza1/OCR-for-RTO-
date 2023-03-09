using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class llicense : System.Web.UI.Page
{
    DataLayer dl=new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtdate.Text = DateTime.Now.ToString();
            String str = "select * from learnerlicense order by learnerlicenseid DESC ";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int id = int.Parse(ds.Tables[0].Rows[0]["learnerlicenseid"].ToString());
                id = id + 1;
                lblLicenseno.Text = id.ToString();
            }
            else
            {
                lblLicenseno.Text = "1";
            }

            String str2 = "select * from userregistration where user_name='" + Session["uname"] + "'";
            DataSet ds2 = new DataSet();
            ds2 = dl.GetDataSet(str2);
            if (ds2.Tables[0].Rows.Count > 0)
            {
                txtname.Text = ds2.Tables[0].Rows[0]["user_name"].ToString();


                txtphone.Text = ds2.Tables[0].Rows[0]["phone_no"].ToString();
                txtdob.Text = ds2.Tables[0].Rows[0]["dob"].ToString();
                txtcity.Text = ds2.Tables[0].Rows[0]["city"].ToString();
                txtpaddress.Text = ds2.Tables[0].Rows[0]["address"].ToString();

            }
        }
    }

    protected void txtage_TextChanged(object sender, EventArgs e)
    {
        

    }
    protected void txtdob_TextChanged(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        DateTime dt1 = Convert.ToDateTime(txtdob.Text);
        TimeSpan ts = dt - dt1;
        int val = ts.Days / 365;
        txtage.Text = val.ToString();
    }
    protected void bsave_Click1(object sender, EventArgs e)
    {
        Session["amt"] = txtamount.Text;
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("photo//" + FileUpload1.FileName));
        }
        String str = "insert into learnerlicense(user_name,gender,dob,age,pob,relation_name,relation_type,license,paddress,taddress,education,city,phone_no,email,blood,fitness,fees,date,image,card,Status)values('" + txtname.Text + "','" + r1.SelectedItem.Text + "','" + txtdob.Text + "','" + txtage.Text + "','" + txtplace.SelectedItem.Text + "','" + txtrelationname.Text + "','" + txttype.Text + "','" + d1.SelectedItem.Text + "','" + txtpaddress.Text + "','" + txttaddess.Text + "','" + txteducation.Text + "','" + txtcity.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + d2blood.SelectedItem.Text + "','" + r2.SelectedItem.Text + "','" + txtamount.Text + "','" + txtdate.Text + "','" + FileUpload1.FileName + "','" + FileUpload2.FileName + "','Approval''Rejected')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
        
    }
    protected void bclear_Click1(object sender, EventArgs e)
    {
        txtcity.Text = "";
        txtdate.Text = "";
        txtdob.Text = "";
        txtage.Text = "";
        txteducation.Text = "";
        txtemail.Text = "";
        txtname.Text = "";
        txtpaddress.Text = "";
        txtphone.Text = "";
        txtplace.SelectedIndex = 0;
        txtrelationname.Text = "";
        txttaddess.Text = "";
        txttype.Text = "";
        d1.SelectedIndex = 0;
        r1.SelectedIndex = 0;
        r2.SelectedIndex = 0;
    }
}