using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class vehicleregistration : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        String str = "insert into vehicleregistration(register_no,name,relation_name,relation_type,age,dob,phone,paddress,dealers_details,motor_vehicle,date,makers_name,vehicle_name,type_of_vehicle,vehicle_color,horse_power,chasis_no,seating,fuel,weigth,particulars,vehicleinsured,company_name,valid_from,valid_to)values('" + txtregister.Text + "','" + txtname.Text + "','" + txtrelationname.Text + "','" + txtrelationtype.Text + "','" + txtage.Text + "','" + txtdob.Text + "','"+txtphone.Text+"','" + txtpaddress.Text + "','" + txtdetails.Text + "','"+d1.SelectedItem.Text+"','" + txtdateofmanufacture.Text + "','" + txtmanufacturerename.Text + "','" + txtvehiclename.Text + "','" + txtvehicletype.Text + "','" + txtcolor.Text + "','" + txthorsepower.Text + "','" + txtchasisno.Text + "','" + txtseating.Text + "','" + txtfuel.Text + "','" + txtweigth.Text + "','" + txtparticulars.Text + "','" + txtvehicleinsured.Text + "','" + txtinsuredcompanyname.Text + "','" + txtfrom.Text + "','" + txtto.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javascript'>alert('Record Saved successfully')</script>");
        //Response.Redirect("online.aspx");

        
    }
}