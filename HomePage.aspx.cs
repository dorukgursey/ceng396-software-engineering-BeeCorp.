using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class HomePage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data source = DESKTOP-6PG46M2\SQLEXPRESS;Database=Ceng396_Term;User ID=sa;Password=123;Integrated Security=False");

    SqlCommand cmd;
    SqlCommand cmd2;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["guest"].ToString()) == 1)
        {
            btnmyprofile.Enabled = false;
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        if (ddl.Text == "Academic Member")
        {
            cmd = new SqlCommand("SELECT Name_Surname,Picture,Department,Faculty FROM AcademicMem WHERE Name_Surname like'" + txtsearch.Text + "%'", con);
            cmd.Parameters.AddWithValue("@Name_Surname", txtsearch.Text);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                Label1.Text = "No records found!";
                Label1.Visible = true;
            }
            else
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

            if (ddl.Text == "Student")
            {

                cmd2 = new SqlCommand("SELECT StudentID,SName,SSurname FROM Student1 WHERE SName like'" + txtsearch.Text + "%'", con);
                cmd2.Parameters.AddWithValue("@SName", txtsearch.Text);
                con.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                if (dt2.Rows.Count == 0)
                {
                    Label1.Text = "No records found!";
                    Label1.Visible = true;
                }
                else
                {
                
                    GridView2.DataSource = dt2;
                    GridView2.DataBind();
                }

            }

    }
    
        protected void btnGo_Click(object sender, EventArgs e)
    {
        LinkButton btn = (sender as LinkButton);
        string namesurname = btn.CommandArgument;
        Response.Redirect("AcademicProfile.aspx?namesurname=" + ((LinkButton)sender).Text) ;


    }

    protected void btnGo1_Click(object sender, EventArgs e)
    {
        LinkButton btn = (sender as LinkButton);
        string namesurname = btn.CommandArgument;
        Response.Redirect("Student.aspx?namesurname=" + ((LinkButton)sender).Text);


    }











    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AMP.aspx");
    }

    protected void btnmyprofile_Click(object sender, EventArgs e)
    {
       
       
            Response.Redirect("MyProfile.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}

