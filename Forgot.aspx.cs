using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(txtstudentid.Text);


        using (var db = new Ceng396_TermEntities())
        {
            var query = (from b in db.Student1
                         where b.StudentID == id
                         select b).SingleOrDefault();

            if(query.IncasePassword == txtspass.Text)
            {
                lblyp.Visible = true;
                lblspassdisplay.Text = query.Password;
                lblspassdisplay.Visible = true;
            }
            else
            {
                lblspassdisplay.Visible = true;
            }

         
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}