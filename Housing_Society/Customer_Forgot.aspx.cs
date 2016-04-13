using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Customer_Forgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_OwnerLogin where Owner_ID =@Owner_ID ", con);
        cmd.Parameters.AddWithValue("@Owner_ID", Convert.ToInt32(txt_OwnerID.Text));

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Valid Username :-)')</script>");
            SqlDataReader dr = default(SqlDataReader);
            dr = cmd.ExecuteReader();
            dr.Read();
            txt_Question.Text = dr["Owner_FavQuestion"].ToString();

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username')</script>");
        }
        Button1.Enabled = false;
        txt_OwnerID.Enabled = false;


    }
    protected void btn_GetPassword_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from tbl_OwnerLogin where Owner_FavQuestion=@Owner_FavQuestion and Owner_ID=@Owner_ID and Owner_Answer=@Owner_Answer ", con);
        cmd.Parameters.AddWithValue("@Owner_ID", txt_OwnerID.Text);
        cmd.Parameters.AddWithValue("@Owner_FavQuestion", txt_Question.Text);
        cmd.Parameters.AddWithValue("@Owner_Answer", txt_Answer.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Valid Username & Answer:-)')</script>");
            SqlDataReader dr = default(SqlDataReader);
            dr = cmd.ExecuteReader();
            dr.Read();
            txt_Password.Text = dr["Owner_Password"].ToString();

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