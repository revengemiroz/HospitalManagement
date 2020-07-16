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
    public partial class NewPatientRecForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                RecForm.Text = Session["New"].ToString() + " (Reception)";
            }
            else
            {
                Response.Redirect("home.aspx");
            }

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                conn.Open();
                string checkuser = "SELECT count(*) FROM Patients WHERE Name ='" + pID.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Username already exists");


                    return;
                }

                conn.Close();
            }
        }

        protected void NewPat_Click(object sender, EventArgs e)
        {
            try
            {

                if (IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                    conn.Open();

                    string InsertQuery = "Insert into Patients (Name,Age,Gender,BG,Problem,Address,city,pincode) values(@n,@a,@g,@bg,@p,@add,@c,@pin)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    com.Parameters.AddWithValue("@n", pID.Text);
                    com.Parameters.AddWithValue("@a", age.Text);
                    com.Parameters.AddWithValue("@g", Gender.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@bg", Bloodgrp.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@p", Problem.Text);
                    com.Parameters.AddWithValue("@add", Address.Text);
                    com.Parameters.AddWithValue("@c", City.Text);
                    com.Parameters.AddWithValue("@pin", Pin.Text);

                    com.ExecuteNonQuery();


                    Response.Redirect("Recpatient.aspx");



                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Something went wrong" + ex.ToString());
            }
        }

        protected void RecLogOut_Click1(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
    }
}