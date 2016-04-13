using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    
    protected void Button1_Click1(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_Admin where Admin_Email =@Admin_Email ", con);
        cmd.Parameters.AddWithValue("@Admin_Email", txt_EmailID.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Valid Username :-)')</script>");
            SqlDataReader dr = default(SqlDataReader);
            dr = cmd.ExecuteReader();
            dr.Read();
            txt_Question.Text = dr["Admin_Question"].ToString();

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username')</script>");
        }
        Button1.Enabled = false;
        txt_EmailID.Enabled = false;


    }
    protected void btn_GetPassword_Click1(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_Admin where Admin_Question=@Admin_Question and Admin_Email=@Admin_Email and Admin_Answer=@Admin_Answer ", con);
        cmd.Parameters.AddWithValue("@Admin_Email", txt_EmailID.Text);
        cmd.Parameters.AddWithValue("@Admin_Question", txt_Question.Text);
        cmd.Parameters.AddWithValue("@Admin_Answer", txt_Answer.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Valid Username & Answer:-)')</script>");
            SqlDataReader dr = default(SqlDataReader);
            dr = cmd.ExecuteReader();
            dr.Read();
            txt_Password.Text = dr["Admin_Password"].ToString();

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username & Answer')</script>");
        }
        txt_Password.Enabled = false;
        btn_GetPassword.Enabled = false;
        txt_Answer.Enabled = false;


    }
}