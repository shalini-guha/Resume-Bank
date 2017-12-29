using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;

using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{

    String statusVariable = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        //lb1.Text = "<b><font color=Brown>" + "WELLCOME ADMIN:: " + "</font>" + "<b><font color=red>" + Session["name"] + "</font>";
        if (!IsPostBack)
        {
            BindGrid();
            BindGrid1();
            BindGrid2();
        }

    }
    private void BindGrid()
    {
        DataTable dt = new DataTable();
        
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.CommandText = "Select id,Cname,Exp,Skills,PrevComp,CTC,NoticePer,Loc,TenScore,TwelveScore,Grad,Email,Phone,Name1,Status from TBL_MST_ALL2 where Status=3";
                cmd.Connection = con;
                da.Fill(dt);
                con.Open();
                  GridView.DataSource = dt;
                        GridView.DataBind();

                   
            }
            con.Close();




                
                
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
    

                  

    protected void EditFile(object sender, EventArgs e)
    {
        Response.Redirect("EditResume.aspx");
    }
    protected void EditFile1(object sender, EventArgs e)
    {
        Response.Redirect("EditResume1.aspx");
    }

}

  
  

