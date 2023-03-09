using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class viewvehicle : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            String str = "select * from vehicleregistration where name='"+Session["name"]+"' ";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            DetailsView1.DataSource = ds;
            DetailsView1.DataMember = "table";
            DetailsView1.DataBind();

        }
    }
}