using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Web.Security;
namespace Athle_E_Team_Project
{
    public partial class ViewMatches : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGv();
            }
        }

        protected void FillGv()
        {

            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from ScheduleMatch", con);
            da.Fill(ds, "t1");
            GridView1.DataSource = ds.Tables["t1"];
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //show intrest
            string mid = GridView1.DataKeys[e.RowIndex].Values["matchid"].ToString();
            string strcon = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into  shownintrest (username,matchid) values(@username,@matchid)", con);
            cmd.Parameters.AddWithValue("@username", Session["un"].ToString());
            cmd.Parameters.AddWithValue("@matchid", mid);
            cmd.ExecuteNonQuery();
           // lblmsg.Text = "Deleted Successfully";
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Route
            Label address = (Label)GridView1.Rows[e.RowIndex].FindControl("Label4");
            Session["loc"] = address.Text;
            Session["myLocation"]=address.Text;
            Response.Redirect("~/gmap2.aspx");
        }
    }
}