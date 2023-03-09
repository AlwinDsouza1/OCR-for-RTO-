using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class checktest: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select * from testslot";
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
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("chkmail");

            if (chk.Checked)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblId");
                int inbox_id = int.Parse(lbl.Text);
                string qstr;
                qstr = "update testslot set Status='Booked' where testslotid ='" + inbox_id + "'";
                dl.DmlCmd(qstr);


            }
        }
        fillgrid();
    }




    protected void Button2_Click(object sender, EventArgs e)
    {
         for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("chkmail");

            if (chk.Checked)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblId");
                int inbox_id = int.Parse(lbl.Text);
                string qstr;
                qstr = "update testslot set Status='Pending' where testslotid ='" + inbox_id + "'";
                dl.DmlCmd(qstr);


            }
        }
        fillgrid();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("chkmail");

            if (chk.Checked)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblId");
                int inbox_id = int.Parse(lbl.Text);
                string qstr;
                qstr = "update testslot set date='"+TextBox2.Text+"' where testslotid ='" + inbox_id + "'";
                dl.DmlCmd(qstr);


            }
        }
        fillgrid();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("chkmail");

            if (chk.Checked)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblId");
                int inbox_id = int.Parse(lbl.Text);
                string qstr;
                qstr = "delete from testslot where testslotid ='" + inbox_id + "'";
                dl.DmlCmd(qstr);


            }
        }
        fillgrid();
    }
}