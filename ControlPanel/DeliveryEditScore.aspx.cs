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
    public partial class DeliveryEditScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                // code here
                string SqlUpdateScore = "INSERT INTO [dbo].[DeliveryScore] (D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3) VALUES (@D1_1, @D1_2, @D1_3, @D1_4, @D2_1, @D2_2, @D2_3) WHERE DeliveryID = @DeliveryID";

                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    SqlCommand cmd = new SqlCommand(SqlUpdateScore, conn);

                    cmd.Parameters.AddWithValue("@D1_1", txtBMa.Text);
                    cmd.Parameters.AddWithValue("@D1_2", txtBMb.Text);
                    cmd.Parameters.AddWithValue("@D1_3", txtBMc.Text);
                    cmd.Parameters.AddWithValue("@D1_4", txtBMd.Text);

                    cmd.Parameters.AddWithValue("@D2_1", txtIODMa.Text);
                    cmd.Parameters.AddWithValue("@D2_2", txtIODMb.Text);
                    cmd.Parameters.AddWithValue("@D2_3", txtIODMc.Text);

                    // TODO: Substitute value of Delivery ID obtained here
                    cmd.Parameters.AddWithValue("@DeliveryID", Session["DeliveryIdHere"].ToString());
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/Index.aspx");
        }
    }
}