using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Selected : System.Web.UI.Page
{
    String statusVariable = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        //lb1.Text = "<b><font color=Brown>" + "WELLCOME ADMIN:: " + "</font>" + "<b><font color=red>" + Session["name"] + "</font>";
        if (!IsPostBack)
        {
            
            BindGrid2();
        }

    }
    private void BindGrid2()
    {
        DataTable dt = new DataTable();

        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.CommandText = "Select id,Cname,Exp,Skills,PrevComp,CTC,NoticePer,Loc,TenScore,TwelveScore,Grad,Email,Phone,Name1,Status from TBL_MST_ALL2 where Status=1";
                cmd.Connection = con;
                da.Fill(dt);
                con.Open();
                GridView2.DataSource = dt;
                GridView2.DataBind();


            }
            con.Close();






        }
    }


    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("Admin2.aspx");
    }
}