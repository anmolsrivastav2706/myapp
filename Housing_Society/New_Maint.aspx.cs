using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class New_Maint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void ddOwnerID_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select FLAT_WING,FLAT_NO,OWNER_NAME,FLAT_SIZE,FLAT_SQFT,FLAT_MAINT,PARKING,OWNERSHIP_DATE FROM tbl_NewOwner where OWNER_ID=@OWNER_ID", con);
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@OWNER_ID", Convert.ToString(ddOwnerID.SelectedValue));
        SqlDataReader dr = default(SqlDataReader);
        dr = cmd.ExecuteReader();
        dr.Read();
        txt_FlatNo.Text = dr["FLAT_NO"].ToString();
        txt_FlatSize.Text =  dr["FLAT_SIZE"].ToString();
        txt_FlatWing.Text =  dr["FLAT_WING"].ToString();
        txt_Maint.Text =  dr["FLAT_MAINT"].ToString();
       
        txt_ownerName.Text =  dr["OWNER_NAME"].ToString();
        txt_ownerShip.Text =  dr["OWNERSHIP_DATE"].ToString();
        txt_Parking.Text =  dr["PARKING"].ToString();
        txt_sqFt.Text = dr["FLAT_SQFT"].ToString();

     cmd = new SqlCommand("insert into tbl_Maint values(@MAINT_YEAR,@MAINT_MONTH,@OWNER_ID,@FLAT_WING,@FLAT_NO,@OWNER_NAME,@FLAT_SIZE,@FLAT_SQFT,@FLAT_MAINT,@PARKING,@OWNERSHIP_DATE,@OTHER_EXP,@TOTAL)", con);
       
        
    }

   
    protected void btn_save_Click(object sender, ImageClickEventArgs e)
    {

        SqlConnection con = new SqlConnection("Data Source=ANMOL-PC;Initial Catalog=HousingDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_Maint values(@MAINT_YEAR,@MAINT_MONTH,@OWNER_ID,@FLAT_WING,@FLAT_NO,@OWNER_NAME,@FLAT_SIZE,@FLAT_SQFT,@FLAT_MAINT,@PARKING,@OWNERSHIP_DATE,@OTHER_EXP,@TOTAL)", con);
        cmd.Parameters.AddWithValue("@OWNER_ID", Convert.ToInt32(ddOwnerID.SelectedValue));
        cmd.Parameters.AddWithValue("@FLAT_WING", txt_FlatWing.Text);
        cmd.Parameters.AddWithValue("@FLAT_NO", txt_FlatNo.Text);
        cmd.Parameters.AddWithValue("@OWNER_NAME", txt_ownerName.Text);
        cmd.Parameters.AddWithValue("@FLAT_SIZE", txt_FlatSize.Text);
        cmd.Parameters.AddWithValue("@FLAT_SQFT", Convert.ToInt64(txt_sqFt.Text));
        cmd.Parameters.AddWithValue("@FLAT_MAINT", Convert.ToInt64(txt_Maint.Text));
        cmd.Parameters.AddWithValue("@PARKING", txt_Parking.Text);
        cmd.Parameters.AddWithValue("@OWNERSHIP_DATE", txt_ownerShip.Text);
        cmd.Parameters.AddWithValue("@MAINT_YEAR", Convert.ToString(ddYear.SelectedValue));
        cmd.Parameters.AddWithValue("@MAINT_MONTH", Convert.ToString(ddMonth.SelectedValue));
        cmd.Parameters.AddWithValue("@OTHER_EXP", Convert.ToInt64(txt_OtherExp.Text));
        cmd.Parameters.AddWithValue("@TOTAL", Convert.ToInt64(txt_TotAmount.Text));

        
        cmd.ExecuteNonQuery();
        con.Close();
        txt_FlatNo.Text = "";
        txt_FlatSize.Text = "";
        txt_FlatWing.Text = "";
        txt_Maint.Text = "";
        txt_OtherExp.Text = "";
        txt_ownerName.Text = "";
        txt_ownerShip.Text = "";
        txt_Parking.Text = "";
        txt_sqFt.Text = "";
        txt_TotAmount.Text = "";

        Label1.Text = "Data Saved..!! :-)";

    }
    protected void btn_calc_Click(object sender, EventArgs e)
    {
        string park = txt_Parking.Text;


        if (park == "YES")
        {

            int park_amnt = 500;
            long maint = Convert.ToInt64(txt_Maint.Text);
            long other_exp_amnt = Convert.ToInt64(txt_OtherExp.Text);
            long tot = park_amnt + other_exp_amnt + maint;

            txt_TotAmount.Text = Convert.ToString(tot);



        }

        else
        {
            long maint = Convert.ToInt64(txt_Maint.Text);
            long other_exp_amnt = Convert.ToInt64(txt_OtherExp.Text);
            long tot = other_exp_amnt + maint;
            txt_TotAmount.Text = Convert.ToString(tot);
        
        }


    }
}