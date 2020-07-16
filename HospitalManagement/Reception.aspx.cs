using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagement
{
    public partial class Reception : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                
                ReceptionName.Text = Session["New"].ToString() + " (Reception)";
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }

        protected void RecLogOut_Click1(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
    }
}