using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_OwnerLogin where Owner_ID =@Owner_ID and Owner_Password =@Owner_Password", con);
        cmd.Parameters.AddWithValue("@Owner_ID", Convert.ToInt32(txt_userName.Text));
        cmd.Parameters.AddWithValue("@Owner_Password", txt_Passwd.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["Owner_ID"] = txt_userName.Text;

            Response.Redirect("Maint_Search_Owner.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot_Password_User.aspx");
    }
}