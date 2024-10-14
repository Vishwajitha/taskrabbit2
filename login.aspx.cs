using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace taskrabbit2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            //ConfigurationManager--helps to get the connection from database ,connection by calling the connection "constr" from web.Config file
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_login1", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", txt_Email.Text);
                cmd.Parameters.AddWithValue("@pass", txt_password.Text);
                Session["email"] = txt_Email.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    con.Close();
                    con.Open();
                    cmd = new SqlCommand("select name from customers where email=@email", con);
                    cmd.Parameters.AddWithValue("@email", txt_Email.Text);
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    if (dr1.Read())
                    {
                        Session["name"] = dr1["name"];
                        Response.Redirect("About.aspx");
                    }
                }
                else
                {
                    lbl.Text = "Invalid Credentials";
                }

            }
            catch (Exception ex)
            {
                lbl.Text = ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }
    }
}