using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagement
{
    public partial class MedicineStore : System.Web.UI.Page
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


        }
        protected void create_Click(object sender, EventArgs e)
        {
            try
            {

                if (IsPostBack)
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
                   // var hashed = FormsAuthentication.HashPasswordForStoringInConfigFile(newpass.Text, "SHA1");
                    string InsertQuery = "Insert into Medicine (Name,Description,Qty,Price,ImageData) values(@n,@d,@q,@p,@i)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    com.Parameters.AddWithValue("@n", Name.Text);
                    com.Parameters.AddWithValue("@d", Description.Text);
                    com.Parameters.AddWithValue("@q", Quan.Text);
                    com.Parameters.AddWithValue("@p", Price.Text);
                    com.Parameters.AddWithValue("@i", imgByte);
                    com.ExecuteNonQuery();


                   // Response.Redirect("Admin.aspx");
                    Response.Write("Medicine has been added to the store");


                    conn.Close();
                    Name.Text = "";
                    Description.Text = "";
                    Quan.Text = "";
                    Price.Text = "";

                }
            }
            catch (Exception ex)
            {
                Response.Write("Something went wrong" + ex.ToString());
            }
        }

        protected void DoctorLogOut_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
    }
}