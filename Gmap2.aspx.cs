using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Athle_E_Team_Project
{
    public partial class Gmap2 : System.Web.UI.Page
    {
        protected string sr, dn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // string lc = Request.QueryString["Address"];
                string lc = "pune";
                dn = "Ratnagiri";
                //dn = Session["address"].ToString();
                sr = lc;
                lblLocation.Text = lc;
            }
        }
    }
}