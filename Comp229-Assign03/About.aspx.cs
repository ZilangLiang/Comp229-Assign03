using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Comp229_Assign03
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productID = Request.QueryString["StudentID"];

                if(productID == null)
                {
                    Response.Redirect("Default.aspx");
                }

                string cs = ConfigurationManager.ConnectionStrings["Comp229Assign03ConnectionString5"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("Enrollments", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter parameter = new SqlParameter("StudentID", productID);
                    cmd.Parameters.Add(parameter);
                    con.Open();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        while (rdr.Read())
                        {
                            lblstudentid.Text = rdr["StudentID"].ToString();
                            lblgrade.Text = rdr["Grade"].ToString();
                            lblcourseid.Text = rdr["CourseID"].ToString();
                        }
                    }
                }
            }
        }
    }
}