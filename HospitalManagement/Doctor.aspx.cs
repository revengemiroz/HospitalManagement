using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagement
{
    public partial class Doctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                DoctorName.Text = Session["New"].ToString() + " (Doctor) ";
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }

        

        protected void DoctorLogOut_Click1(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
        
    }
}