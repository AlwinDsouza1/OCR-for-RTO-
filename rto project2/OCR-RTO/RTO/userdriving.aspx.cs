using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class userdriving: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String str = "select * from drivinglicense where user_name='" + Session["name"] + "' or license_no='"+Session["name"]+"'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                lblname.Text = ds.Tables[0].Rows[0]["user_name"].ToString();
                lbldob.Text = ds.Tables[0].Rows[0]["dob"].ToString();
                lbladdress.Text = ds.Tables[0].Rows[0]["paddress"].ToString();
                lblblood.Text = ds.Tables[0].Rows[0]["blood"].ToString();
                lbllicense.Text = ds.Tables[0].Rows[0]["license"].ToString();
                lblvalid.Text = ds.Tables[0].Rows[0]["valid_from"].ToString();
                lblvalidto.Text = ds.Tables[0].Rows[0]["valid_to"].ToString();
                Image1.ImageUrl = "~//photo//" + ds.Tables[0].Rows[0]["image"].ToString();
            }

        }
    }
}