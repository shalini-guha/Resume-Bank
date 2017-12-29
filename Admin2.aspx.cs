using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin2 : System.Web.UI.Page
{
   
    protected void btnSave_Click2(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("About.aspx");
    }


    
}