using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR.ControlPanel
{
    public partial class DeliveryUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitDropDownList();
        }

        // Fetches CM data from database and populates the CM, Month, and Year drop down list 
        private void InitDropDownList()
        {
            // SQL query to retrieve CM data from DB
            string SqlRetrieveCmQuery = "SELECT * FROM [dbo].[CM]";

            // Opens the SQL connection
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(SqlRetrieveCmQuery, conn);

                    CM.DataSource = cmd.ExecuteReader();
                    CM.DataTextField = "CMName";
                    CM.DataValueField = "CMId";

                    CM.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }


            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Response.Redirect("DeliveryUserViewEdit.aspx");
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/Index.aspx");
        }
    }
}