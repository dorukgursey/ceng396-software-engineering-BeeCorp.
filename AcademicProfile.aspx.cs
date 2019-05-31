using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AcademicProfile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data source = DESKTOP-6PG46M2\SQLEXPRESS;Database=Ceng396_Term;User ID=sa;Password=123;Integrated Security=False");
    SqlCommand cmd,cmd2,cmdimg;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Convert.ToInt32(Session["guest"].ToString()) == 1)
        {
            btnapprove.Enabled = false;
            btndisapprove.Enabled = false;
            txtcomment.Enabled = false;
            txtSub.Enabled = false;
            btncomment.Enabled = false;


        }
        Label2.Text = Request.QueryString["namesurname"];

        using (var db = new Ceng396_TermEntities())
        {
            var acam = (from b in db.AcademicMems
                        where b.Name_Surname == Label2.Text
                        select b).SingleOrDefault();

            lblfac.Text = acam.Faculty;
            lbldep.Text = acam.Department;
            string PROFILE_PIC = Convert.ToBase64String(acam.Picture);
            Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", PROFILE_PIC);

            cmd2 = new SqlCommand("SELECT Username,Subject,Comment FROM CommentSection WHERE AcademicMemID like'" + acam.ID + "%'", con);
           
           con.Open();
           SqlDataAdapter da = new SqlDataAdapter(cmd2);
           DataTable dt = new DataTable();
           da.Fill(dt);
           if (dt.Rows.Count == 0)
           {

           }
           else
           {
               grdAlperComment.DataSource = dt;
               grdAlperComment.DataBind();
           }
           con.Close();
        }

        if (IsPostBack)
        {
            BindRepeaterData();
        }



    }

    private void BindRepeaterData()
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-6PG46M2\SQLEXPRESS;Initial Catalog=Ceng396_Term;Persist Security Info=True;User ID=sa;Password=123");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from [CommentSection]", con);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            rep1.Visible = true;
            rep1.DataSource = ds;
            rep1.DataBind();
        }
        else { rep1.Visible = false; }
        con.Close();
    }

    protected void btnapprove_Click(object sender, EventArgs e)
    {
        using (var db = new Ceng396_TermEntities())
        {
            var acam = (from b in db.AcademicMems
                        where b.Name_Surname == Label2.Text
                        select b).SingleOrDefault();


            acam.Rateg++;
            acam.Rateb--;
            btnapprove.Enabled = false;
            btndisapprove.Enabled = true;
            db.SaveChanges();
        }


    }

    protected void btndisapprove_Click(object sender, EventArgs e)
    {
        using (var db = new Ceng396_TermEntities())
        {
            var acam = (from b in db.AcademicMems
                        where b.Name_Surname == Label2.Text
                        select b).SingleOrDefault();


            acam.Rateb++;
            acam.Rateg--;
            btndisapprove.Enabled = false;
            btnapprove.Enabled = true;
            db.SaveChanges();
        }
    }

    protected void ButtonComment_Click(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
      

    }

    protected void btncomment_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data source = DESKTOP-6PG46M2\SQLEXPRESS;Database=Ceng396_Term;User ID=sa;Password=123;Integrated Security=False");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into[CommentSection](Username,Subject,Comment,AcademicMemID)values(@Username,@Subject,@Comment,@AcademicMemID)", con);
        //if (Convert.ToInt32(Session["guest"].ToString())==1)
        //{
        //    lblguest.Visible = true;
        //    System.Threading.Thread.Sleep(3000);
        //    Response.Redirect("AcademicProfile.aspx");
        //}
       
        if (Session["myuser"] != null)
        {
            
            int id = Convert.ToInt32(Session["myuser"].ToString());
            
        

            using (var db = new Ceng396_TermEntities())
            {
                var us = (from b in db.Student1
                where b.StudentID == id select b).SingleOrDefault();
                Label5.Text = us.SName;
                
            }
            
        }

        using (var db = new Ceng396_TermEntities())
        {
            var acam = (from b in db.AcademicMems
                        where b.Name_Surname == Label2.Text
                        select b).SingleOrDefault();

            lblAlper.Text = Convert.ToString(acam.ID);
            
        }

        cmd.Parameters.AddWithValue("@AcademicMemID", Convert.ToInt32(lblAlper.Text));

        cmd.Parameters.AddWithValue("@Username", Label5.Text);

        cmd.Parameters.AddWithValue("@Subject", txtSub.Text);
        
        cmd.Parameters.AddWithValue("@Comment", txtcomment.Text);
       
        cmd.ExecuteNonQuery();

       

        con.Close();

        
        txtSub.Text = string.Empty;
        txtcomment.Text = string.Empty;
        BindRepeaterData();
        Response.Redirect("AcademicProfile.aspx?namesurname=" + Label2.Text);
    }



    protected void btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }
}