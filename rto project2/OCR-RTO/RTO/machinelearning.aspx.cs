using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class machinelearning : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            //FileUpload2.SaveAs(Server.MapPath("ocr//ocr//static//" + FileUpload2.FileName));
            //string fileName = Path.Combine(Server.MapPath("~/ocr/ocr/static"), FileUpload2.FileName);
            //FileUpload2.SaveAs(fileName);
            string fileName = "1.png";
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/ocr/ocr/static/") + fileName);
            Response.Redirect("http://127.0.0.1:8000/");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Browse the image')</script>");
        }
        
    }
}