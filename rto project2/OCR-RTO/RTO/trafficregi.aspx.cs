using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class trafficregi : System.Web.UI.Page
{
    DataLayer dl=new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        String str = "select register_no,name,age,dob,phone,paddress,vehicle_name,type_of_vehicle,vehicle_color from vehicleregistration";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        GridView1.DataSource = ds;
        GridView1.DataMember = "table";
        GridView1.DataBind();

    }
}