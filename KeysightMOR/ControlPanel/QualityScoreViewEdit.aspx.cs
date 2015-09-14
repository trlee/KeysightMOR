using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR
{
    public partial class QualityScoreViewEdit : System.Web.UI.Page
    {
        string ConnString = "Server=LIMCW ;Database=KeysightMOR; Integrated Security=SSPI";
      
       

        protected void Save_Click1(object sender, EventArgs e)
        {
            string query = "INSERT INTO [dbo].[Quality](Month,Year,Score,CMID) VALUES (" + Session["Month"].ToString() + "," + Session["Year"].ToString() + ",@Score," + Session["CMID"].ToString() + ")";

            SqlConnection sqlConn = new SqlConnection(ConnString);
            SqlCommand sqlCmd = new SqlCommand(query, sqlConn);
            sqlCmd.Parameters.AddWithValue("@Score", qualityScore.Text);


            using (sqlConn)
            {
                try
                {
                    sqlConn.Open();
                    sqlCmd.ExecuteNonQuery();
                    lblSubmitDbStatus.Text = "Quality data entry successful";
                }
                catch (Exception ex)
                {
                    ex.ToString();
                    lblSubmitDbStatus.Text = "Quality data entry unsuccessful";
                }
            }
        }// End Save_Click
    }
}