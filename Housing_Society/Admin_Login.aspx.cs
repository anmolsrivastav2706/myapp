using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=WIN-O6R6MCCRT94;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_Admin where Admin_Email =@Admin_Email and Admin_Password =@Admin_Password", con);
        cmd.Parameters.AddWithValue("@Admin_Email", txt_userName.Text);
        cmd.Parameters.AddWithValue("@Admin_Password", txt_Passwd.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Forgot.aspx");
    }
}