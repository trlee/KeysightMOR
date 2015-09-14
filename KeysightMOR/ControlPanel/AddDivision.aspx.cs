using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR.ControlPanel
{
    public partial class AddDivision : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateDivision_Click(object sender, EventArgs e)
        {
            string SqlAddDivCmd = "INSERT INTO [dbo].Division(DivName, DivDescription) VALUES (@DivName, @DivDescription)";

            // Shared.SqlConnString is obtained from Assets/Shared.cs file
            // At beginning of source code, add using statement "using KeysightMOR.Assets"

            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand sqlCmd = new SqlCommand(SqlAddDivCmd, sqlConn);

            sqlCmd.Parameters.AddWithValue("@DivName", txtAddDivision.Text);
            sqlCmd.Parameters.AddWithValue("@DivDescription", txtAddDivisionDescription.Text);

            using (sqlConn)
            {
                try
                {
                    if (!string.IsNullOrEmpty(txtAddDivision.Text) && !string.IsNullOrEmpty(txtAddDivisionDescription.Text))
                    {
                        sqlConn.Open();

                        sqlCmd.ExecuteNonQuery();

                        StringBuilder sb = new StringBuilder();
                        sb.Append("Division " + txtAddDivision.Text + " successfully submitted");

                        // TODO: Add confirmation message here
                        lblAddDivisionStatus.Text = sb.ToString();
                    }
                }
                catch (Exception ex)
                {
                    // TODO: Use label to print any exception occurred at this stage
                    lblAddDivisionStatus.Text = ex.Message;
                }
            }

            // Finally, clear the textbox
            txtAddDivision.Text = null;
            txtAddDivisionDescription.Text = null;
            valdtxtAddDivName.Text = null;
            valdtxtAddDivDesc.Text = null;
            lblAddDivisionStatus.Text = null;
        }
    }
}