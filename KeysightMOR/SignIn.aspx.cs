using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using KeysightMOR.Assets;

namespace KeysightMOR
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            try //Get Responsiveness Data Entry Report (tab2)
            {
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select UserName, UserID, Position from dbo.[User] where UserEmail='"+txtbox_email.Text+"' and Password='"+txtbox_passw.Text+"'",conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            dr.Read();
                            string username = dr[0].ToString();
                            string userid = dr[1].ToString();
                            string position = dr[2].ToString();
                            Session["username"] = username;
                            Session["userid"] = userid;
                            Session["position"] = position;
                            Response.Redirect("PreHome.aspx");
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            } 

        }
    }
}