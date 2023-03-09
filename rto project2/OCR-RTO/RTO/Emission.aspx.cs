using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Accolade_SMS;
public partial class Emission: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String str = "Select register_no from emission where valid_to<=CURDATE()";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();
        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        String str = "insert into emission(register_no,valid_from,valid_to)values('" + txtregister.Text + "','" + txtfrom.Text + "','" + txtto.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
    }
    protected void bclear_Click(object sender, EventArgs e)
    {
     
        txtfrom.Text = "";
     
        txtregister.Text = "";
        txtto.Text = "";
       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String str = "Select * from vehicleregistration where register_no in(Select register_no from emission where valid_to<=CURDATE())";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
         if (ds.Tables[0].Rows.Count > 0)
        {
             for(int i=0;i<=ds.Tables[0].Rows.Count;i++)
             {
                 ATS_SMS sms=new ATS_SMS();
                 sms.sendsms(ds.Tables[0].Rows[0]["phone"].ToString(),"your Emission Test is Expired");
             }
         }

           
    }
}