using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR
{
    public partial class ResponsivenessEditScore : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            PopulateTextBox();
        }

        private void PopulateTextBox()
        {
            // string PickedCm = Session["CM"].ToString();
            string PickedCm = "1"; // Test data

            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
               try
                {
                    string SqlLoadDataQuery = "SELECT * FROM [dbo].ResponsivenessScore WHERE ResponsivenessId = @ResponsivenessId";

                    SqlCommand cmd = new SqlCommand(SqlLoadDataQuery, conn);
                    cmd.Parameters.AddWithValue("@ResponsivenessId", PickedCm);

                    SqlDataReader sdr = cmd.ExecuteReader();

                    while(sdr.Read())
                    {
                        // TODO: Read data and assign the values to textboxes respectively

                        txtR1CTD1.Text = sdr[""].ToString();
                        // ...
                    }
                }
                catch(Exception ex)
                {
                    // TODO: Change the way how exception error is displayed to end-user, not developers
                    Response.Write(ex.ToString());
                }

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                string SqlUpdateScoreQuery = "UPDATE [dbo].ResponsivenessScore SET column=@value WHERE ResponsivenessId = @ResponsivenessId";

                SqlCommand cmd = new SqlCommand(SqlUpdateScoreQuery, conn);

                // TODO: Code to execute the update query to store changes done
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // TODO: Insert validation/checking code

            Response.Redirect("~/ControlPanel/Index.aspx");
        }
    }
}