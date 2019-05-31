using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfile : System.Web.UI.Page
{
    string guid = Guid.NewGuid().ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblid.Text = Session["myuser"].ToString();
        var id = Convert.ToUInt32(lblid.Text);

        using (var db = new Ceng396_TermEntities())
        {
            var thestudent = (from b in db.Student1
                         where b.StudentID == id 
                         select b).SingleOrDefault();

            lblname.Text = thestudent.SName;
            lblsurname.Text = thestudent.SSurname;
            lbldept.Text = thestudent.Department;
            lblemail.Text = thestudent.Email;
            lblfaculty.Text = thestudent.Faculty;
            lblyear.Text = thestudent.YearStarted;
            if (thestudent.Picture != null)
            {
                string PROFILE_PIC = Convert.ToBase64String(thestudent.Picture);
                Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", PROFILE_PIC);
            }
        }
    }

    protected void btnchange_Click(object sender, EventArgs e)
    {
        lblchngpass.Visible = true;
        lblchngemail.Visible = true;
        txtchngpass.Visible = true;
        txtchngemail.Visible = true;
        btnconfirm.Visible = true;
    }

    protected void btnconfirm_Click(object sender, EventArgs e)
    {

        var id = Convert.ToUInt32(lblid.Text);

        using (var db = new Ceng396_TermEntities())
        {
            var thestudent = (from b in db.Student1
                              where b.StudentID == id
                              select b).SingleOrDefault();

            thestudent.Password = txtchngpass.Text;
            thestudent.Email = txtchngemail.Text;
            db.SaveChanges();
            Response.Redirect("Login.aspx");
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
}