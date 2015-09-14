using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace KeysightMOR.ControlPanel
{
    public partial class AddCM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Automatically focus the Add CM textbox
            txtAddCm.Focus();
        }

        /*
        *   Create CM Button
        *   adriank96 // 2015-08-19 // 18:25
        *
        *   Adds the CM into the database upon invoking the button
        */
        protected void btnCreateCm_Click(object sender, EventArgs e)
        {
            string SqlAddCMCmd = "INSERT INTO [dbo].CM(CMName) VALUES (@CMName)";

            // Shared.SqlConnString is obtained from Assets/Shared.cs file
            // At beginning of source code, add using statement "using KeysightMOR.Assets"

            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand sqlCmd = new SqlCommand(SqlAddCMCmd, sqlConn);

            sqlCmd.Parameters.AddWithValue("@CMName", txtAddCm.Text);

            using (sqlConn)
            {
                try
                {
                    if(!string.IsNullOrEmpty(txtAddCm.Text))
                    {
                        sqlConn.Open();

                        sqlCmd.ExecuteNonQuery();

                        StringBuilder sb = new StringBuilder();
                        sb.Append("CM " + txtAddCm.Text + " successfully submitted");

                        // TODO: Add confirmation message here
                        lblAddCmStatus.Text = sb.ToString();
                    }
                    
                }
                catch(Exception ex)
                {
                    // TODO: Use label to print any exception occurred at this stage
                    lblAddCmStatus.Text = ex.Message;
                }
            }

            // Finally, clear the textbox
            txtAddCm.Text = null;
            valdtxtAddCm.Text = null;
        }

        
    }
}