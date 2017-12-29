using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;  

public partial class EditResume : System.Web.UI.Page
{
    
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       protected void Button1_Click1(object sender, EventArgs e)
       {
           int status = 2;
           SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Register.mdf;Integrated Security=True;User Instance=True");
           SqlCommand cmd = new SqlCommand("update TBL_MST_ALL2 set name2=@Name,Date=@Date,Time=@Time,Mode=@Mode,Status=@Status,Update1=@Update1 where id=@id", con);

           if (Status.SelectedItem.Value == "Shortlisted")
           {
               status = 2;
           }
           else if (Status.SelectedItem.Value == "On Hold")
           {
               status = 3;
           }
           else
           {
               status = 0;
           }
           cmd.Parameters.AddWithValue("@id", Label2.Text);
           cmd.Parameters.AddWithValue("@Name", Label1.Text);
           cmd.Parameters.AddWithValue("@Date", Calendar1.SelectedDate);
           cmd.Parameters.AddWithValue("@Time", TextBox2.Text);
           cmd.Parameters.AddWithValue("@Mode", Mode.SelectedItem.Value);
           cmd.Parameters.AddWithValue("@Status",status);
           cmd.Parameters.AddWithValue("@Update1", Status.SelectedItem.Value);
           con.Open();
           int i = cmd.ExecuteNonQuery();
           con.Close();
           if (i != 0)
           {
               lblmsg.Text = " Your data is been saved in the database";
               lblmsg.ForeColor = System.Drawing.Color.ForestGreen;
               status = 2;
           }
           else
           {
               lblmsg.Text = "Something went wrong with selection";
               lblmsg.ForeColor = System.Drawing.Color.Red;
               status = 3;

           }  
       }
       protected void Page_Load(object sender, EventArgs e)
       {
           SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Register.mdf;Integrated Security=True;User Instance=True");
           if (!this.IsPostBack)
           {
               Label1.Text = Session["CName"].ToString();
               Label2.Text = Session["id"].ToString();
               
           }
           try
           {
               conn.Open();

               string commString = "SELECT * FROM TBL_MST_ALL2";

               SqlCommand comm = new SqlCommand(commString, conn);
               //SqlDataReader reader = null;

               /*reader = comm.ExecuteReader();

               while (reader.Read())
                 {
                     if (reader["id"].ToString() == TextBox3.Text)
                     {

                         Label1.Text = reader["CName"].ToString();
                     }
                 }*/
             
           }
           finally
           {
               conn.Close();
           } 
       }
     
       protected void Button1_Click2(object sender, EventArgs e)
       {
           Response.Redirect("Recieved.aspx");
       }
      
}