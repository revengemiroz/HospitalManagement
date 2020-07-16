using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagement
{
    public partial class Recpatient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                ReceptionName.Text = Session["New"].ToString() + " (Reception)";
            }
            else
            {
                Response.Redirect("Reception.aspx");
            }
        }

        protected void RecLogOut_Click2(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("home.aspx");
        }
    }
}