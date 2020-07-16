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
    public partial class RecMessage : System.Web.UI.Page
    {
        String par;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                userBox2.Text = Session["New"].ToString() + " (Reception)";

                RecMName.Text = Session["New"].ToString() + " (Reception)";
            }
            else
            {
                Response.Redirect("home.aspx");
            }

           


        }

        protected void valuechanged(object sender,EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["KanirmaConnections"].ToString(); // connection string
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand com = new SqlCommand("select * from staffDetails where Job ='" + reciever2.SelectedValue + "'", con); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            doctorname.DataTextField = ds.Tables[0].Columns["FirstName"].ToString(); // text field name of table dispalyed in dropdown
            doctorname.DataValueField = ds.Tables[0].Columns["FirstName"].ToString();             // to retrive specific  textfield name 
            doctorname.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            doctorname.DataBind();  //binding dropdownlist
            //par = doctorname.SelectedValue;
        }
        protected void doctorchanged(object sender, EventArgs e)
        {
            
            //par = doctorname.SelectedValue.ToString();
        }

        protected void SendButton2_Click(object sender, EventArgs e)
        {

            try
            {

                if (IsPostBack)
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["KanirmaConnections"].ConnectionString);
                    conn.Open();
                   
                    string InsertQuery = "INSERT into Messages(Recieve,Sender,Message) values(@to,@frm,@msg)";
                    SqlCommand com = new SqlCommand(InsertQuery, conn);
                    String pramer = doctorname.SelectedValue.ToString() + " (" + reciever2.SelectedValue.ToString() + ")" ;
                    // com.Parameters.AddWithValue("@to", reciever2.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@to", pramer);
                    com.Parameters.AddWithValue("@frm", userBox2.Text);
                    com.Parameters.AddWithValue("@msg", Messbox2.Text);

                    com.ExecuteNonQuery();


                    Response.Redirect("Reception.aspx");



                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Something went wrong" + ex.ToString());
            }
        }

        protected void RMLogOut_Click1(object sender, EventArgs e)
             {
            Session["New"] = null;
            Response.Redirect("home.aspx");
                }
        }

    }
