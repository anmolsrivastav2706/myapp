using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maint_Search_Owner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_ownerID.Text = Session["Owner_ID"].ToString();
        
 
    }
}