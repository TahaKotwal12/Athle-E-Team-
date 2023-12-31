﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;
namespace Athle_E_Team_Project
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CheckUserName()
        {
            string constr = WebConfigurationManager.ConnectionStrings["AthleE_Team_DB"].ToString();
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select * from Tbl_MemberRegistration", con);
            da.Fill(ds, "t1");
            Boolean flag = false;
            foreach (DataRow r1 in ds.Tables["t1"].Rows)
            {
                if (r1["username"].ToString() == txtun.Text && r1["pass"].ToString() == txtpass.Text)
                {
                    flag = true;
                }
            }
            con.Close();

            if (flag == false)
            {
                lblmsg.Text = "Invalid username or password";
                txtpass.Text = "";
                txtun.Text = "";
            }
            else
            {
                Session["un"] = txtun.Text;
                Response.Redirect("~/ScheduleMatch.aspx");
            }
        }
        protected void BtnRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            CheckUserName();
           
        }
    }
}