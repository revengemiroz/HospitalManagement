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
    public partial class Reportform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                

                reportName.Text = Session["New"].ToString() + " (Doctor)";
            }
            else
            {
                Response.Redirect("home.aspx");
            }


        }

        protected void ReportButton_Click1(object sender, EventArgs e)
        {

            try
            {

                if (IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                    conn.Open();

                    string InsertQuery = "INSERT into Reports(PatientName,disease,briefExplain,symptoms,Admitted) values(@PN,@dis,@BE,@sym,@adm)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    com.Parameters.AddWithValue("@PN", PatientName.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@dis", TextBoxDisease.Text);
                    com.Parameters.AddWithValue("@BE", TextBoxcondition.Text);
                    com.Parameters.AddWithValue("@sym", Textsymptom.Text);
                    com.Parameters.AddWithValue("@adm", admission.SelectedItem.ToString());
                    

                    com.ExecuteNonQuery();


                    Response.Redirect("Doctor.aspx");



                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Something went wrong" + ex.ToString());
            }
        }
        protected void ReportLogOut_Click1(object sender, EventArgs e)
             {
            Session["New"] = null;
            Response.Redirect("home.aspx");
                }

        
    }
}