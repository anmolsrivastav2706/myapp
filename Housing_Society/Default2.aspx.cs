using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Admin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Admin_Login.aspx");
    }
    protected void btn_User_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User_Login.aspx");
    }
}