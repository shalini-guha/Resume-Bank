using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Shortlist : System.Web.UI.Page
{
    String statusVariable = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        //lb1.Text = "<b><font color=Brown>" + "WELLCOME ADMIN:: " + "</font>" + "<b><font color=red>" + Session["name"] + "</font>";
        if (!IsPostBack)
        {
            
            BindGrid1();
           
        }

    }
    private void BindGrid1()
    {
        DataTable dt = new DataTable();

        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.CommandText = "Select id,Cname,Exp,Skills,PrevComp,CTC,NoticePer,Loc,TenScore,TwelveScore,Grad,Email,Phone,Name1,Status from TBL_MST_ALL2 where Status=2";

                cmd.Connection = con;
                da.Fill(dt);
                con.Open();
                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            con.Close();






        }
    }
    protected void EditFile1(object sender, EventArgs e)
    {
        Response.Redirect("EditResume1.aspx");
    }
    protected void Button1_Click2(object sender, EventArgs e)
    {
        
           Response.Redirect("Admin2.aspx");
       
    }
    protected void lnkRequestID_Click(object sender, EventArgs e)
    {

        if (GridView1.SelectedRow != null)
        {
            Session["id"] = GridView1.SelectedRow.Cells[1].Text;
            Session["CName"] = GridView1.SelectedRow.Cells[2].Text;
            Response.Redirect("EditResume1.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select a row.')", true);
        }

    }
    
}