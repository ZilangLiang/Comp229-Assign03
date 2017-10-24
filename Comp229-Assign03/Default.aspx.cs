using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Comp229_Assign03
{
    public partial class _Default : Page
    {
        //SqlConnection con = new SqlConnection("Data Source=127.0.0.1;Initial Catalog=Comp229Assign03;Persist Security Info=True;User ID=sa;Password=123");
        SqlConnection con = new SqlConnection(@"Data Source=127.0.0.1;Initial Catalog=Comp229Assign03;Persist Security Info=True;User ID=sa;Password=123");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            //con.Open();
            /*
            SqlCommand cmd = new SqlCommand("insert into Students values('"+idTextBox.Text+"','"+lnTextBox.Text+"','"+fnTextBox.Text+"','"+dateTextBox.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            label1.Text = "Values are Inserted";
            */
            con.Open();
            SqlCommand cmd = new SqlCommand(@"Insert Into [Students] (LastName, FirstMidName, EnrollmentDate) 
                                  Values (@lname, @fname, @date)", con);
            cmd.Parameters.AddWithValue("@lname", lnTextBox.Text);
            cmd.Parameters.AddWithValue("@fname", fnTextBox.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Parse(dateTextBox.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            label1.Visible = true;
            label1.Text = "Your Data Stored Successfully!!";
            lnTextBox.Text = "";
            fnTextBox.Text = "";
            dateTextBox.Text = "";
            
            /*
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText="insert into registration values('" + idTextBox.Text + "','" + lnTextBox.Text + "','" + fnTextBox.Text + "','" + dateTextBox.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            */
        }
    }
}