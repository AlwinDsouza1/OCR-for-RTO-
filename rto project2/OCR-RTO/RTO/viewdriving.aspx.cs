﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class viewdriving: System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public void fillgrid()
    {
        String str = "select * from drivinglicense where Status!='Cancel'";
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
                qstr = "update drivinglicense set status='Issued' where drivinglicenseid='" + inbox_id + "'";
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
                qstr = "update drivinglicense set status='Not issued' where drivinglicenseid ='" + inbox_id + "'";
                dl.DmlCmd(qstr);


            }
        }
        fillgrid();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

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
                qstr = "Delete from drivinglicense where drivinglicenseid ='" + inbox_id + "'";
                dl.DmlCmd(qstr);


            }
        }
        fillgrid();
    }
}