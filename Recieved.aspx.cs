using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Recieved : System.Web.UI.Page
{
    String statusVariable = string.Empty;
    int j;

    protected void Page_Load(object sender, EventArgs e)
    {
        //lb1.Text = "<b><font color=Brown>" + "WELLCOME ADMIN:: " + "</font>" + "<b><font color=red>" + Session["name"] + "</font>";
        if (!IsPostBack)
        {
            BindGrid();

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
            j = dt.Rows.Count;
            con.Close();






        }

    }
    protected void EditFile(object sender, EventArgs e)
    {
        String val = GridView.SelectedRow.Cells[2].Text;
        Response.Redirect("EditResume.aspx");
    }


    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("Admin2.aspx");
    }




    protected void lnkRequestID_Click(object sender, EventArgs e)
    {
      
        if (GridView.SelectedRow != null)
        {
            Session["id"] = GridView.SelectedRow.Cells[1].Text;
            Session["CName"] = GridView.SelectedRow.Cells[2].Text;
            Response.Redirect("EditResume.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select a row.')", true);
        }
       
    }
}