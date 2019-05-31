using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreg_Click(object sender, EventArgs e) {
        Response.Redirect("Register.aspx");
    }
    protected void btnlog_Click(object sender, EventArgs e)
    {

        if (String.IsNullOrWhiteSpace(txtstudent.Text))
        {
            //Response.Write("<script>alert('Sonunda amk')</script>");
            Console.WriteLine("Fill the Blanks");
            lblEror.Text = "Fill the Blanks!!";
            lblEror.Visible = true;
            System.Threading.Thread.Sleep(6000);
            Response.Redirect("Login.aspx");
            //Response.Redirect("Login.aspx");
        }
        
        int id = Convert.ToInt32(txtstudent.Text);
        

        using (var db = new Ceng396_TermEntities())
        {
            var query = (from b in db.Student1 where b.StudentID == id &&
                         b.Password == txtpassw.Text select b).SingleOrDefault();
            if (query != null)
            {
                Session["myuser"] = query.StudentID;
                Session["guest"] = 0;
                Response.Redirect("HomePage.aspx");
                lblEror.Visible = false;
            }
            else
            {
                lblEror.Text = "Error! Check your email or password!!";
                lblEror.Visible = true;
            }
        }
    }

   


protected void btnguest_Click(object sender, EventArgs e)
    {

        Session["guest"] = 1;
        txtstudent.Text = "Guest";
        txtpassw.Text = "Guest";
        Response.Redirect("HomePage.aspx");
        lblEror.Visible = false;


    }



    protected void btnfpass(object sender, EventArgs e)
    {
        Response.Redirect("Forgot.aspx");
    }

    protected void btnforgetpass_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot.aspx");
    }
}