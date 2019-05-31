using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Security.Cryptography;
using System.Web.UI.WebControls;



public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rtrlog_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        using (var db = new Ceng396_TermEntities())
        {
            int idc = Convert.ToInt32 (txtstudentid.Text);
            var query = (from b in db.Student1 where b.StudentID == idc select b).SingleOrDefault();
            if (query == null)
            {
                Student1 newUser = new Student1();
             
                newUser.SName = txtname.Text;
                newUser.SSurname = txtsurname.Text;
                newUser.StudentID = idc;
                newUser.IncasePassword = txtincase.Text;
                newUser.Department = txtdept.Text;
                newUser.Faculty = txtfac.Text;
                newUser.YearStarted = txtyear.Text;
                newUser.Email = txtemail.Text;
               // newUser.email = txtMail.Text;
                newUser.Password = txtpass.Text;
                
                if (txtcpass.Text == txtpass.Text)

                {
                    db.Student1.Add(newUser);
                    db.SaveChanges();
                    lblEror.Text = "Register Successful!";
                    lblEror.Visible = true;
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    lblEror.Text = "You entered wrong password!";
                    lblEror.Visible = true;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                    System.Threading.Thread.Sleep(3000);
                    Response.Redirect("Register.aspx");
                }

               


            }
            else
            {
                lblEror.Text = "Existing User!";
                lblEror.Visible = true;
            }
        }
    }
    
}