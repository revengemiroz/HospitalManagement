using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace HospitalManagement
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void B1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from staffDetails where UserName ='" + UsernameID.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            
            if (temp == 1)
            {
                conn.Open();
                string checkpasswordQuery = "select Password from staffDetails where UserName ='" + UsernameID.Text + "'";
                string checkjobQuery = "select Job from staffDetails where UserName ='" + UsernameID.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkpasswordQuery, conn);
                SqlCommand jobcomm = new SqlCommand(checkjobQuery, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ","");
                string job = jobcomm.ExecuteScalar().ToString().Replace(" ", "");
                if(password== PasswordID.Text && job==jobLp.SelectedValue)
                {
                    
                    if(jobLp.SelectedValue == "Doctor")
                    {
                        Session["new"] = UsernameID.Text;
                        Response.Redirect("Doctor.aspx");
                    }
                    if (jobLp.SelectedValue == "Reception")
                    {
                        Session["new"] = UsernameID.Text;
                        Response.Redirect("Reception.aspx");
                    }
                }
                else
                {

                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "openModal();", true);
                }
            
            }
                
            
            else
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "openModal2();", true);
            }


        }

        protected void AdminButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from staffDetails where UserName ='" + AdminID.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                string checkpasswordQuery = "select Password from staffDetails where UserName ='" + AdminID.Text + "'";
                string checkjobQuery = "select Job from staffDetails where UserName ='" + AdminID.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkpasswordQuery, conn);
                SqlCommand jobcomm = new SqlCommand(checkjobQuery, conn);
                string password = passcomm.ExecuteScalar().ToString().Replace(" ", "");
                string job = jobcomm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == Adminpass.Text && job == jobAdmin.SelectedValue)
                {
                    Session["new"] = AdminID.Text;
                    Response.Redirect("Admin.aspx");
                }
                else
                {


                    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "openModala();", true);
                }

            }


            else
            {
                ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "openModal2a();", true);
            }

        }
        
    }
}