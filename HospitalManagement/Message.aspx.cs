using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace HospitalManagement
{
    public partial class Message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
               
                userBox.Text = Session["New"].ToString() + " (Doctor)";
               
                DName.Text = Session["New"].ToString() + " (Doctor)";
            }
            else
            {
                Response.Redirect("home.aspx");
            }

            
        }
        protected void doctorchanged(object sender, EventArgs e)
        {
        }
            protected void valuechanged(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["KanirmaConnections"].ToString(); // connection string
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand com = new SqlCommand("select * from staffDetails where Job ='" + reciever.SelectedValue + "'", con); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            doctorname.DataTextField = ds.Tables[0].Columns["FirstName"].ToString(); // text field name of table dispalyed in dropdown
            doctorname.DataValueField = ds.Tables[0].Columns["FirstName"].ToString();             // to retrive specific  textfield name 
            doctorname.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            doctorname.DataBind();  //binding dropdownlist
            //par = doctorname.SelectedValue;
        }
        protected void SendButton_Click(object sender, EventArgs e)
        {

            try
            {

                if (IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                    conn.Open();

                    string InsertQuery = "INSERT into Messages(Recieve,Sender,Message) values(@to,@frm,@msg)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    String pramer = doctorname.SelectedValue.ToString() + " (" + reciever.SelectedValue.ToString() + ")";
                    //com.Parameters.AddWithValue("@to", reciever.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@to", pramer);
                    com.Parameters.AddWithValue("@frm", userBox.Text);
                    com.Parameters.AddWithValue("@msg", Messbox.Text);

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
        protected void DmessLogOut_Click1(object sender, EventArgs e)
             {
            Session["New"] = null;
            Response.Redirect("home.aspx");
                }
        }
    }
