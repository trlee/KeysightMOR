using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace KeysightMOR.ControlPanel
{
    public partial class ResponsivenessScoreViewEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            int CMId = Convert.ToInt32(Request.QueryString["CM"].ToString());
            int Month = Convert.ToInt32(Request.QueryString["Month"].ToString());
            int Year = Convert.ToInt32(Request.QueryString["Year"].ToString());

            double LLMTarget = 0, FGTarget = 0;

            SqlConnection conn;

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            // FG & LLM Target Scores
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                string QueryPopulateScore = "SELECT * FROM [dbo].[ResponsivenessScoreSettings] RSS "
                                            + "INNER JOIN [dbo].[CM] CM ON RSS.CMID = CM.CMID "
                                            + "WHERE RSS.CMID = @RSSCMID AND RSS.Month = @RSSMonth ;";

                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryPopulateScore, conn);
                    cmd.Parameters.AddWithValue("@RSSCMID", CMId);
                    cmd.Parameters.AddWithValue("@RSSMonth", Month);

                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            LLMTarget = Convert.ToDouble(rdr["LLMTarget"].ToString()) * 100;
                            FGTarget = Convert.ToDouble(rdr["FGTarget"].ToString()) * 100;

                            txtR2a.Text = LLMTarget.ToString();
                            txtR2b.Text = FGTarget.ToString();

                            hfLastUpdated.Value = rdr["LastUpdate"].ToString();
                        }
                    }
                    else
                    {
                        lblStatusMsg.ForeColor = Color.Red;
                        lblStatusMsg.Text = "No record found for selected CM and Month";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString() + "<br />");
                }
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            // FG Range Scores
            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                string QueryPopulateRangeScore = "SELECT * FROM [dbo].[ResponsivenessScoreSettings] RSS "
                                                + "INNER JOIN [dbo].[CM] CM ON RSS.CMID = CM.CMID "
                                                + "INNER JOIN [dbo].ResponsivenessFGRange FG ON RSS.LastUpdate = FG.LastUpdate "
                                                + "WHERE RSS.CMID = @RSSCMID ;";

                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryPopulateRangeScore, conn);
                    cmd.Parameters.AddWithValue("@RSSCMID", CMId);

                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            txtFG00.Text = rdr["FGScore00"].ToString();
                            txtFG05.Text = rdr["FGScore05"].ToString();
                            txtFG10.Text = rdr["FGScore10"].ToString();
                            txtFG15.Text = rdr["FGScore15"].ToString();
                            txtFG20.Text = rdr["FGScore20"].ToString();
                            txtFG25.Text = rdr["FGScore25"].ToString();
                            txtFG30.Text = rdr["FGScore30"].ToString();
                            txtFG35.Text = rdr["FGScore35"].ToString();
                            txtFG40.Text = rdr["FGScore40"].ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString() + "<br />");
                }
            }

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                string QueryPopulateRangeScore = "SELECT * FROM [dbo].[ResponsivenessScoreSettings] RSS "
                                                + "INNER JOIN [dbo].[CM] CM ON RSS.CMID = CM.CMID "
                                                + "INNER JOIN [dbo].ResponsivenessLLMRange LLM ON RSS.LastUpdate = LLM.LastUpdate "
                                                + "WHERE RSS.CMID = @RSSCMID ;";
                
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryPopulateRangeScore, conn);
                    cmd.Parameters.AddWithValue("@RSSCMID", CMId);

                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            txtLLM00.Text = rdr["LLMScore00"].ToString();
                            txtLLM05.Text = rdr["LLMScore05"].ToString();
                            txtLLM10.Text = rdr["LLMScore10"].ToString();
                            txtLLM15.Text = rdr["LLMScore15"].ToString(); 
                            txtLLM20.Text = rdr["LLMScore20"].ToString();
                            txtLLM25.Text = rdr["LLMScore25"].ToString();
                            txtLLM30.Text = rdr["LLMScore30"].ToString();
                            txtLLM35.Text = rdr["LLMScore35"].ToString();
                            txtLLM40.Text = rdr["LLMScore40"].ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString() + "<br />");
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int CMId = Convert.ToInt32(Request.QueryString["CM"].ToString());
            int Month = Convert.ToInt32(Request.QueryString["Month"].ToString());
            int Year = Convert.ToInt32(Request.QueryString["Year"].ToString());

            double LLMTarget = Convert.ToDouble(txtR2a.Text) / 100;
            double FGTarget = Convert.ToDouble(txtR2b.Text) / 100;

            SqlConnection conn;

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    string QueryUpdateTargetScore = "UPDATE RSS "
                        + "SET RSS.LLMTarget = @LLMTarget, RSS.FGTarget = @FGTarget "
                        + "FROM [dbo].ResponsivenessScoreSettings RSS "
                        + "WHERE RSS.CMID = @CMID AND RSS.Month = @Month AND RSS.Year = @Year ;";

                    SqlCommand cmd = new SqlCommand(QueryUpdateTargetScore, conn);
                    cmd.Parameters.AddWithValue("@CMID", CMId);
                    cmd.Parameters.AddWithValue("@Month", Month);
                    cmd.Parameters.AddWithValue("@Year", Year);
                    cmd.Parameters.AddWithValue("@LLMTarget", LLMTarget);
                    cmd.Parameters.AddWithValue("@FGTarget", FGTarget);

                    cmd.ExecuteNonQuery();

                    if(cmd.ExecuteNonQuery() == 1)
                    {
                        lblStatusMsg.ForeColor = Color.Green;
                        lblStatusMsg.Text = "Target score updated successfully!";
                    }
                        
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            btnCancel.CausesValidation = false;
            Response.Redirect("~/ControlPanel/Index.aspx");
        }

        protected void btnSavePopup_Click(object sender, EventArgs e)
        {
            int CMId = Convert.ToInt32(Request.QueryString["CM"].ToString());
            int Month = Convert.ToInt32(Request.QueryString["Month"].ToString());
            int Year = Convert.ToInt32(Request.QueryString["Year"].ToString());

            SqlConnection conn;

            int LLMScore00 = Convert.ToInt32(txtLLM00.Text);
            int LLMScore05 = Convert.ToInt32(txtLLM05.Text);
            int LLMScore10 = Convert.ToInt32(txtLLM10.Text);
            int LLMScore15 = Convert.ToInt32(txtLLM15.Text);
            int LLMScore20 = Convert.ToInt32(txtLLM20.Text);
            int LLMScore25 = Convert.ToInt32(txtLLM25.Text);
            int LLMScore30 = Convert.ToInt32(txtLLM30.Text);
            int LLMScore35 = Convert.ToInt32(txtLLM35.Text);
            int LLMScore40 = Convert.ToInt32(txtLLM40.Text);

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            string QueryUpdateLLMRange = "UPDATE LLM "
                                    + "SET LLM.LLMScore00 = @LLMScore00, LLM.LLMScore05 = @LLMScore05, LLM.LLMScore10 = @LLMScore10, LLM.LLMScore15 = @LLMScore15, LLM.LLMScore20 = @LLMScore20, LLM.LLMScore25 = @LLMScore25, LLM.LLMScore30 = @LLMScore30, LLM.LLMScore35 = @LLMScore35, LLM.LLMScore40 = @LLMScore40 "
                                    + "FROM[dbo].ResponsivenessLLMRange LLM "
                                    + "INNER JOIN[dbo].ResponsivenessScoreSettings RSS "
                                    + "ON RSS.LastUpdate = LLM.LastUpdate "
                                    + "WHERE RSS.LastUpdate = @LastUpdate ;";

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryUpdateLLMRange, conn);
                    cmd.Parameters.AddWithValue("@LastUpdate", hfLastUpdated.Value);
                    cmd.Parameters.AddWithValue("@LLMScore00", LLMScore00);
                    cmd.Parameters.AddWithValue("@LLMScore05", LLMScore05);
                    cmd.Parameters.AddWithValue("@LLMScore10", LLMScore10);
                    cmd.Parameters.AddWithValue("@LLMScore15", LLMScore15);
                    cmd.Parameters.AddWithValue("@LLMScore20", LLMScore20);
                    cmd.Parameters.AddWithValue("@LLMScore25", LLMScore25);
                    cmd.Parameters.AddWithValue("@LLMScore30", LLMScore30);
                    cmd.Parameters.AddWithValue("@LLMScore35", LLMScore35);
                    cmd.Parameters.AddWithValue("@LLMScore40", LLMScore40);

                    int rowAffected = cmd.ExecuteNonQuery();

                    if (rowAffected == 1)
                    {
                        lblStatusMsg.ForeColor = Color.Green;
                        lblStatusMsg.Text = "Scoring range for LLM Target has stored successfully! <br />";
                    }
                    else
                    {
                        lblStatusMsg.ForeColor = Color.Red;
                        lblStatusMsg.Text = "Scoring range for LLM Target has failed to store!";
                    } 
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }

            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            int FGScore00 = Convert.ToInt32(txtFG00.Text);
            int FGScore05 = Convert.ToInt32(txtFG05.Text);
            int FGScore10 = Convert.ToInt32(txtFG10.Text);
            int FGScore15 = Convert.ToInt32(txtFG15.Text);
            int FGScore20 = Convert.ToInt32(txtFG20.Text);
            int FGScore25 = Convert.ToInt32(txtFG25.Text);
            int FGScore30 = Convert.ToInt32(txtFG30.Text);
            int FGScore35 = Convert.ToInt32(txtFG35.Text);
            int FGScore40 = Convert.ToInt32(txtFG40.Text);

            string QueryUpdateFGRange = "UPDATE FG "
                                    + "SET FG.FGScore00 = @FGScore00, FG.FGScore05 = @FGScore05, FG.FGScore10 = @FGScore10, FG.FGScore15 = @FGScore15, FG.FGScore20 = @FGScore20, FG.FGScore25 = @FGScore25, FG.FGScore30 = @FGScore30, FG.FGScore35 = @FGScore35, FG.FGScore40 = @FGScore40 "
                                    + "FROM [dbo].ResponsivenessFGRange FG "
                                    + "INNER JOIN [dbo].ResponsivenessScoreSettings RSS "
                                    + "ON RSS.LastUpdate = FG.LastUpdate "
                                    + "WHERE RSS.LastUpdate = @LastUpdate ;";

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryUpdateFGRange, conn);
                    cmd.Parameters.AddWithValue("@LastUpdate", hfLastUpdated.Value);
                    cmd.Parameters.AddWithValue("@FGScore00", FGScore00);
                    cmd.Parameters.AddWithValue("@FGScore05", FGScore05);
                    cmd.Parameters.AddWithValue("@FGScore10", FGScore10);
                    cmd.Parameters.AddWithValue("@FGScore15", FGScore15);
                    cmd.Parameters.AddWithValue("@FGScore20", FGScore20);
                    cmd.Parameters.AddWithValue("@FGScore25", FGScore25);
                    cmd.Parameters.AddWithValue("@FGScore30", FGScore30);
                    cmd.Parameters.AddWithValue("@FGScore35", FGScore35);
                    cmd.Parameters.AddWithValue("@FGScore40", FGScore40);

                    int rowAffected = cmd.ExecuteNonQuery();

                    if(rowAffected == 1)
                    {
                        lblStatusMsg.ForeColor = Color.Green;
                        lblStatusMsg.Text += "Scoring range for FG Target has stored successfully!";
                    }
                    else
                    {
                        lblStatusMsg.ForeColor = Color.Red;
                        lblStatusMsg.Text += "Scoring range for FG Target has failed to store!";
                    }
                    
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }

        }
    }
}