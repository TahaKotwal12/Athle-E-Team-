using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Athle_E_Team_Project
{
    public partial class gmap : System.Web.UI.Page
    {
        protected string sr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string lc = Request.QueryString["location"];
                string lc = "Pune";
                sr = lc;
                lblLocation.Text = lc;
            }

        }
    }
}