using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data source = DESKTOP-6PG46M2\SQLEXPRESS;Database=Ceng396_Term;User ID=sa;Password=123;Integrated Security=False");
    SqlCommand cmd, cmd2, cmdimg;

    protected void Page_Load(object sender, EventArgs e)
    {
        lblID.Text = Request.QueryString["namesurname"];
        var id = Convert.ToInt32(lblID.Text);




        using (var db = new Ceng396_TermEntities())
        {
            var student = (from b in db.Student1
                           where b.StudentID == id
                           select b).SingleOrDefault();

            lblisim.Text = student.SName;
            lblstudentsoyisim.Text = student.SSurname;
            lblfaculty.Text = student.Faculty;
            lbldept.Text = student.Department;
            lblyearstarted.Text = Convert.ToString((student.YearStarted));
            if (student.Picture != null)
            {
                string PROFILE_PIC = Convert.ToBase64String(student.Picture);
                Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", PROFILE_PIC);
            }


        }
    }


    protected void btnhomepage_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}