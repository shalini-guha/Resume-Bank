using System;
using System.Data.SqlClient;
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

public partial class User : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    SqlCommand com;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        //lb1.Text = "<b><font color=Brown>" + "WELLCOME FREE USER:: " + "</font>" + "<b><font color=red>" + Session["name"] + "</font>";
    }
    private Boolean InsertUpdateData(SqlCommand cmd)
    {
        String strConnString = System.Configuration.ConfigurationManager
        .ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
    private void clear()
    {
        txt_Cname.Text = "";
        txt_Exp.Text = "";
        txt_Skills.Text = "";
        txt_NoticePer.Text = "";
        txt_TenScore.Text = "";
        txt_TwelveScore.Text = "";
        txt_Loc.Text = "";
        txt_Grad.Text = "";
        txt_PrevComp.Text = "";
        txt_CTC.Text = "";
        txt_Email.Text = "";
        txt_Phone.Text = "";
        
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        int status1 = 3;
        SqlConnection con = new SqlConnection(strConnString);
        com = new SqlCommand();
        com.Connection = con;
        com.CommandType = CommandType.Text;
        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string ext = Path.GetExtension(filename);
        string contenttype = String.Empty;

        //Set the contenttype based on File Extension
        switch (ext)
        {
            case ".doc":
                contenttype = "application/vnd.ms-word";
                break;
            case ".docx":
                contenttype = "application/vnd.ms-word";
                break;
            case ".xls":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".xlsx":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".png":
                contenttype = "image/png";
                break;
            case ".gif":
                contenttype = "image/gif";
                break;
            case ".pdf":
                contenttype = "application/pdf";
                break;
        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            //insert the file into database
            com.CommandText = "Insert into TBL_MST_ALL2(CName,Exp,Skills,PrevComp,CTC,NoticePer,Loc,TenScore,TwelveScore,Grad,Email,Phone,Name1,ContentType,Data,Status)values(@Cname,@Exp,@Skills,@PrevComp,@CTC,@NoticePer,@Loc,@TenScore,@TwelveScore,@Grad,@Email,@Phone,@Name1,@ContentType,@Data,@Status)";
            SqlCommand cmd = new SqlCommand(com.CommandText);

            com.Parameters.Add("@Name1", SqlDbType.VarChar).Value = filename;
            com.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
            com.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
            com.Parameters.AddWithValue("@Cname", txt_Cname.Text);
            com.Parameters.AddWithValue("@Exp", txt_Exp.Text);
            com.Parameters.AddWithValue("@Skills", txt_Skills.Text);
            com.Parameters.AddWithValue("@PrevComp", txt_PrevComp.Text);
            com.Parameters.AddWithValue("@CTC", txt_CTC.Text);
            com.Parameters.AddWithValue("@NoticePer", txt_NoticePer.Text);
            com.Parameters.AddWithValue("@Loc", txt_Loc.Text);
            com.Parameters.AddWithValue("@TenScore", txt_TenScore.Text);
            com.Parameters.AddWithValue("@TwelveScore", txt_TwelveScore.Text);
            com.Parameters.AddWithValue("@Grad", txt_Grad.Text);
            com.Parameters.AddWithValue("@Email", txt_Email.Text);
            com.Parameters.AddWithValue("@Phone", txt_Phone.Text);
            com.Parameters.Add("@Status", SqlDbType.Int).Value = status1;
            
            InsertUpdateData(com);
            lblMessage.ForeColor = System.Drawing.Color.Green;
            lblMessage.Text = "Uploaded Successfully";
            status1 = 3;
            clear();
        }
        else
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "File format not recognised." +
              " Upload Image/Word/PDF/Excel formats";
            status1 = 0;
        }
    }
    protected void btnSave_Click2(object sender, EventArgs e)
    {

        FormsAuthentication.SignOut();
        Response.Clear();
        Response.Redirect("About.aspx");
    }
}