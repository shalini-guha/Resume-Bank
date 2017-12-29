using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;  

public partial class EditResume1 : System.Web.UI.Page
{   int status;
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    
    protected void Button1_Click(object sender, System.EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Register.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("update TBL_MST_ALL2 set name2=@Name,Status=@Status,Net=@Net,Db=@Db,JS=@JS,Attitude=@Attitude,Com=@Com,Pres=@Pres,Overall=@Overall,Remarks=@Remarks,Update2=@Update2 where id=@id", con);
        if (Status.SelectedItem.Value == "Selected")
        {
            status = 1;
        }
        else if (Status.SelectedItem.Value == "On Hold")
        {
            status = 2;
        }
        else
        {
            status = 0;
        }
        cmd.Parameters.AddWithValue("@id", Label2.Text);
        cmd.Parameters.AddWithValue("@Name", Label1.Text);
        cmd.Parameters.AddWithValue("@Status", status);
        cmd.Parameters.AddWithValue("@Net", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Db", TextBox5.Text);
        cmd.Parameters.AddWithValue("@JS", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Attitude", TextBox7.Text);
        cmd.Parameters.AddWithValue("@Com", TextBox8.Text);
        cmd.Parameters.AddWithValue("@Pres", TextBox9.Text);
        cmd.Parameters.AddWithValue("@Overall", TextBox10.Text);
        cmd.Parameters.AddWithValue("@Remarks", TextBox11.Text);
        cmd.Parameters.AddWithValue("@Update2", Status.SelectedItem.Value);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i != 0)
        {
            lblmsg.Text = " Your data is been saved in the database";
            lblmsg.ForeColor = System.Drawing.Color.ForestGreen;

        }
        else
        {
            lblmsg.Text = "Something went wrong with selection";
            lblmsg.ForeColor = System.Drawing.Color.Red;
            status = 2;

        }  
    

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Register.mdf;Integrated Security=True;User Instance=True");
        try
        {
            conn.Open();

            string commString = "SELECT * FROM TBL_MST_ALL2";
            if (!this.IsPostBack)
            {
                Label1.Text = Session["CName"].ToString();
                Label2.Text = Session["id"].ToString();

            }
            SqlCommand comm = new SqlCommand(commString, conn);
          //  SqlDataReader reader = null;

           /* reader = comm.ExecuteReader();

            while (reader.Read())
            {
                if (reader["id"].ToString() == TextBox3.Text)
                {

                    TextBox4.Text = reader["CName"].ToString();
                }
            }*/
        }
        finally
        {
            conn.Close();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Shortlist.aspx");
    }

}
