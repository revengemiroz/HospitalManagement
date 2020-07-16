using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace HospitalManagement
{
    public partial class NewAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Form.Text = Session["New"].ToString() + " (Admin) ";
            }
            else
            {
                Response.Redirect("home.aspx");
            }





            if(IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                conn.Open();
                string checkuser = "SELECT count(*) FROM staffDetails WHERE UserName ='"+UID.Text+"'";
                SqlCommand com = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 4)
                {
                    Response.Write("Username already exists");


                    return;
                }
                
                conn.Close();
            }
        }

        protected void create_Click(object sender, EventArgs e)
        {
            try{

            if(IsPostBack)
            {
                    FileUpload img = (FileUpload)imgUpload;
                    Byte[] imgByte = null;
                    if (img.HasFile && img.PostedFile != null)
                    {
                        //To create a PostedFile
                        HttpPostedFile File = imgUpload.PostedFile;
                        //Create byte Array with file len
                        imgByte = new Byte[File.ContentLength];
                        //force the control to load data in array
                        File.InputStream.Read(imgByte, 0, File.ContentLength);
                    }
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                conn.Open();
                  //  var hashed = FormsAuthentication.HashPasswordForStoringInConfigFile(newpass.Text, "SHA1");
                    string InsertQuery = "Insert into staffDetails (UserName,Password,FirstName,LastName,Job,Email,ImageData,Description) values(@u,@p,@f,@l,@j,@e,@i,@d)";
                SqlCommand com = new SqlCommand(InsertQuery,conn);
                com.Parameters.AddWithValue("@u",UID.Text);
                com.Parameters.AddWithValue("@p",newpass.Text);
                    com.Parameters.AddWithValue("@f", First.Text);
                    com.Parameters.AddWithValue("@l", Last.Text);
                    com.Parameters.AddWithValue("@d", DescriptionID.Text);
                    com.Parameters.AddWithValue("@e",EmailID.Text);
                com.Parameters.AddWithValue("@j",jobID.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@i", imgByte);
                com.ExecuteNonQuery();


                Response.Redirect("Admin.aspx");

                

                conn.Close();
            }
        }
            catch(Exception ex)
            {
                Response.Write("Something went wrong"+ ex.ToString());
            }
    }

       
        protected void LogOut_Click1(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
  }
}