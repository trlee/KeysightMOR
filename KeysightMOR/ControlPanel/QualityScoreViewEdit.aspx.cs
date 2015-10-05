using KeysightMOR.Assets;
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
        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);      

        protected void Save_Click1(object sender, EventArgs e)
        {
            string getRecord = "SELECT Month, Year, CMID FROM [dbo].Quality WHERE Month = '" + Session["Month"].ToString() + "' AND Year = '" + Session["Year"].ToString() +"' AND CMID = '" + Session["CMID"].ToString() + "'";

            SqlCommand get = new SqlCommand(getRecord, sqlConn);

            sqlConn.Open();
            SqlDataReader dr = get.ExecuteReader();

            if (dr.HasRows)
            {
                string update = "UPDATE [dbo].Quality SET Score = @Score WHERE Month = '" + Session["Month"].ToString() + "' AND Year = '" + Session["Year"].ToString() + "' AND CMID = '" + Session["CMID"].ToString() + "'";

                SqlCommand sqlCmd = new SqlCommand(update, sqlConn);
                sqlCmd.Parameters.AddWithValue("@Score", qualityScore.Text);

                try
                {
                    dr.Close();
                    sqlCmd.ExecuteNonQuery();
                    lblSubmitDbStatus.Text = "Quality data entry successful";
                }
                catch (Exception ex) 
                {
                    Response.Write(ex.ToString());
                    lblSubmitDbStatus.Text = "Quality data entry unsuccessful";
                }
            }
            else
            {
                string query = "INSERT INTO [dbo].[Quality](Month,Year,Score,CMID) VALUES (" + Session["Month"].ToString() + "," + Session["Year"].ToString() + ",@Score," + Session["CMID"].ToString() + ")";

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
            }
        }// End Save_Click
    }
}