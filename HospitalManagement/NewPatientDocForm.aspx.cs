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
    public partial class NewPatientDocForm : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["New"] != null)
            {
               DocForm.Text = Session["New"].ToString() + " (Doctor)";
            }
            else
            {
                Response.Redirect("home.aspx");
            }

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                conn.Open();
                string checkuser = "SELECT count(*) FROM Patients WHERE Name ='" + patID.Text + "'";
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

        protected void NewPatient_Click(object sender, EventArgs e)
        {
            try
            {

                if (IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                    conn.Open();

                    string InsertQuery = "Insert into Patients (Name,Age,Gender,BG,Problem,Address,city,pincode) values(@n,@a,@g,@bg,@p,@add,@c,@pin)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    com.Parameters.AddWithValue("@n", patID.Text);
                    com.Parameters.AddWithValue("@a", patage.Text);
                    com.Parameters.AddWithValue("@g", patGender.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@bg", patBloodgrp.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@p", patProblem.Text);
                    com.Parameters.AddWithValue("@add", patAddress.Text);
                    com.Parameters.AddWithValue("@c", patCity.Text);
                    com.Parameters.AddWithValue("@pin", patPin.Text);
                    
                    com.ExecuteNonQuery();


                    Response.Redirect("Docpatient.aspx");



                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Something went wrong" + ex.ToString());
            }
        }

        protected void DocLogOut_Click1(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
    }
    }
