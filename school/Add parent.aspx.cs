﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace school
{
    public partial class Add_parent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string ImageName = Path.GetFileName(Fuimage.FileName);
            // Line added
            Fuimage.SaveAs(Server.MapPath("images/" + Fuimage.FileName));
               SqlConnection conn = new SqlConnection("SchoolConnectionString");
                conn.Open();
                string insertQuery = "insert into Parent_T(Name,Relation,FatherName ,Mother ,Occupation ,Income ,Education ,City ,State ,Mobile ,Email ,Address ,ProfilePic,Facebook,Twitter,LinkedIn)" +
                                                  "values (@Name,@Relation,@FatherName,@Mother,@Occupation,@Income,@Education,@City,@State,@Mobile,@Email,@Address,@ProfilePic,@Facebook,@Twitter,@LinkedIn)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@Relation", txtrelation.Text);
                cmd.Parameters.AddWithValue("@FatherName", txtfathername.Text);
                cmd.Parameters.AddWithValue("@Mother", txtmothername.Text);
                cmd.Parameters.AddWithValue("@Occupation", txtoccupation.Text);
                cmd.Parameters.AddWithValue("@Income", txtincome.Text);
                cmd.Parameters.AddWithValue("@Education", txteducation.Text);
                cmd.Parameters.AddWithValue("@City", txtcity.Text);
                cmd.Parameters.AddWithValue("@State", txtstate.Text);
                cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@ProfilePic", ImageName);
                cmd.Parameters.AddWithValue("@Facebook", txtfacebook.Text);
                cmd.Parameters.AddWithValue("@Twitter", txttwitter.Text);
                cmd.Parameters.AddWithValue("@LinkedIn", txtlinkedin.Text);
                cmd.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "myalert", "alert('saved successfully');", true);
            conn.Close();
            
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Add parent.aspx");
        }

    }
}