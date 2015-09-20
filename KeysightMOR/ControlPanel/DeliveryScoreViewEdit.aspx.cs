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
    public partial class DeliveryScoreViewEdit : System.Web.UI.Page
    {
        static bool WeightAgeUpdateSuccess = false;
        static bool ScoreRangeUpdateSuccess = false;
        static bool ADRUpdateSuccess = false;
        static bool ADCUpdateSuccess = false;
        static bool CR1UpdateSuccess = false;
        static bool EC1UpdateSuccess = false;
        static bool APUpdateSuccess = false;
        static bool CR2UpdateSuccess = false;
        static bool EC2UpdateSuccess = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            int CMID = Convert.ToInt32(Request.QueryString["CM"].ToString());
            int Month = Convert.ToInt32(Request.QueryString["Month"].ToString());
            int Year = Convert.ToInt32(Request.QueryString["Year"].ToString());

            SqlConnection conn;

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            string QueryPopulateScore = "SELECT * "
                                    + "FROM [dbo].DeliveryScoreSettings DSS "
                                    + "WHERE DSS.Month = @Month AND DSS.Year = @Year AND DSS.CMID = @CMID ;";

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryPopulateScore, conn);
                    cmd.Parameters.AddWithValue("@Month", Month);
                    cmd.Parameters.AddWithValue("@Year", Year);
                    cmd.Parameters.AddWithValue("@CMID", CMID);

                    SqlDataReader rdr = cmd.ExecuteReader();

                    if(rdr.HasRows)
                    {
                        while(rdr.Read())
                        {
                            hfLastUpdate.Value = rdr["LastUpdate"].ToString();

                            IODMWeightage.Text = (Convert.ToDouble(rdr["IODMWeightage"].ToString()) * 100).ToString();
                            BRPWeightage.Text = (Convert.ToDouble(rdr["BRPWeightage"].ToString()) * 100).ToString();
                        }
                    }
                    else
                    {
                        Response.Write("No record found <br />");
                    }


                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString() + "<br />");
                }
            }


            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            string QueryPopulateScoresAggregate = "SELECT * "
                                    + "FROM[dbo].DeliveryScoreSettings DSS "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore01 DCS1 "
                                    + "ON DSS.LastUpdate = DCS1.LastUpdate "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore02 DCS2 "
                                    + "ON DSS.LastUpdate = DCS2.LastUpdate "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore03 DCS3 "
                                    + "ON DSS.LastUpdate = DCS3.LastUpdate "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore04 DCS4 "
                                    + "ON DSS.LastUpdate = DCS4.LastUpdate "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore05 DCS5 "
                                    + "ON DSS.LastUpdate = DCS5.LastUpdate "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore06 DCS6 "
                                    + "ON DSS.LastUpdate = DCS6.LastUpdate "
                                    + "INNER JOIN[dbo].DeliveryCriteriaScore07 DCS7 "
                                    + "ON DSS.LastUpdate = DCS7.LastUpdate "
                                    + "WHERE DSS.LastUpdate = @LastUpdate ;";

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(QueryPopulateScoresAggregate, conn);
                    cmd.Parameters.AddWithValue("@LastUpdate", hfLastUpdate.Value);

                    SqlDataReader rdr = cmd.ExecuteReader();

                    if(rdr.HasRows)
                    {
                        while(rdr.Read())
                        {
                            ///////////////////////////////////////////////////////////
                            // BRP
                            ///////////////////////////////////////////////////////////

                            txtADR00.Text = rdr["Score0101"].ToString();
                            txtADR05.Text = rdr["Score0102"].ToString();
                            txtADR10.Text = rdr["Score0103"].ToString();
                            txtADR15.Text = rdr["Score0104"].ToString();
                            txtADR20.Text = rdr["Score0105"].ToString();
                            txtADR25.Text = rdr["Score0106"].ToString();
                            txtADR30.Text = rdr["Score0107"].ToString();
                            txtADR35.Text = rdr["Score0108"].ToString();
                            txtADR40.Text = rdr["Score0109"].ToString();

                            txtADC00.Text = rdr["Score0201"].ToString();
                            txtADC05.Text = rdr["Score0202"].ToString();
                            txtADC10.Text = rdr["Score0203"].ToString();
                            txtADC15.Text = rdr["Score0204"].ToString();
                            txtADC20.Text = rdr["Score0205"].ToString();
                            txtADC25.Text = rdr["Score0206"].ToString();
                            txtADC30.Text = rdr["Score0207"].ToString();
                            txtADC35.Text = rdr["Score0208"].ToString();
                            txtADC40.Text = rdr["Score0209"].ToString();

                            txtCR100.Text = rdr["Score0301"].ToString();
                            txtCR105.Text = rdr["Score0302"].ToString();
                            txtCR110.Text = rdr["Score0303"].ToString();
                            txtCR115.Text = rdr["Score0304"].ToString();
                            txtCR120.Text = rdr["Score0305"].ToString();
                            txtCR125.Text = rdr["Score0306"].ToString();
                            txtCR130.Text = rdr["Score0307"].ToString();
                            txtCR135.Text = rdr["Score0308"].ToString();
                            txtCR140.Text = rdr["Score0309"].ToString();

                            txtEC100.Text = rdr["Score0401"].ToString();
                            txtEC101.Text = rdr["Score0402"].ToString();
                            txtEC102.Text = rdr["Score0403"].ToString();
                            txtEC103.Text = rdr["Score0404"].ToString();
                            txtEC1035.Text = rdr["Score0405"].ToString();
                            txtEC104.Text = rdr["Score0406"].ToString();

                            ///////////////////////////////////////////////////////////
                            // IODM
                            ///////////////////////////////////////////////////////////

                            txtAP00.Text = rdr["Score0501"].ToString();
                            txtAP05.Text = rdr["Score0502"].ToString();
                            txtAP10.Text = rdr["Score0503"].ToString();
                            txtAP15.Text = rdr["Score0504"].ToString();
                            txtAP20.Text = rdr["Score0505"].ToString();
                            txtAP25.Text = rdr["Score0506"].ToString();
                            txtAP30.Text = rdr["Score0507"].ToString();
                            txtAP35.Text = rdr["Score0508"].ToString();
                            txtAP40.Text = rdr["Score0509"].ToString();

                            txtCR200.Text = rdr["Score0601"].ToString();
                            txtCR205.Text = rdr["Score0602"].ToString();
                            txtCR210.Text = rdr["Score0603"].ToString();
                            txtCR215.Text = rdr["Score0604"].ToString();
                            txtCR220.Text = rdr["Score0605"].ToString();
                            txtCR225.Text = rdr["Score0606"].ToString();
                            txtCR230.Text = rdr["Score0607"].ToString();
                            txtCR235.Text = rdr["Score0608"].ToString();
                            txtCR240.Text = rdr["Score0609"].ToString();

                            txtEC200.Text = rdr["Score0701"].ToString();
                            txtEC201.Text = rdr["Score0702"].ToString();
                            txtEC202.Text = rdr["Score0703"].ToString();
                            txtEC203.Text = rdr["Score0704"].ToString();
                            txtEC2035.Text = rdr["Score0705"].ToString();
                            txtEC204.Text = rdr["Score0706"].ToString();

                        }
                    }
                    else
                    {
                        Response.Write("Record not found");
                    }
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString() + "<br />");
                }
            }


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int CMID = Convert.ToInt32(Request.QueryString["CM"].ToString());
            int Month = Convert.ToInt32(Request.QueryString["Month"].ToString());
            int Year = Convert.ToInt32(Request.QueryString["Year"].ToString());

            SqlConnection conn;

            if (Page.IsValid)
            {
                TextBox[] ADR = new TextBox[] { txtADR00, txtADR05, txtADR10, txtADR15, txtADR20, txtADR25, txtADR30, txtADR35, txtADR40 };
                TextBox[] ADC = new TextBox[] { txtADC00, txtADC05, txtADC10, txtADC15, txtADC20, txtADC25, txtADC30, txtADC35, txtADC40 };
                TextBox[] CR1 = new TextBox[] { txtCR100, txtCR105, txtCR110, txtCR115, txtCR120, txtCR125, txtCR130, txtCR135, txtCR140 };
                TextBox[] EC1 = new TextBox[] { txtEC100, txtEC101, txtEC102, txtEC103, txtEC1035, txtEC104 };

                TextBox[] AP = new TextBox[] { txtAP00, txtAP05, txtAP10, txtAP15, txtAP20, txtAP25, txtAP30, txtAP35, txtAP40 };
                TextBox[] CR2 = new TextBox[] { txtCR200, txtCR205, txtCR210, txtCR215, txtCR220, txtCR225, txtCR230, txtCR235, txtCR240 };
                TextBox[] EC2 = new TextBox[] { txtEC200, txtEC201, txtEC202, txtEC203, txtEC2035, txtEC204 };

                double BRPWeightageWhole = Convert.ToDouble(BRPWeightage.Text) / 100;
                double IODMWeightageWhole = Convert.ToDouble(IODMWeightage.Text) / 100;

                int[] ADRScores = new int[ADR.Length];
                int[] ADCScores = new int[ADC.Length];
                int[] CR1Scores = new int[CR1.Length];
                int[] EC1Scores = new int[EC1.Length];

                int[] APScores = new int[AP.Length];
                int[] CR2Scores = new int[CR2.Length];
                int[] EC2Scores = new int[EC2.Length];

                for(int i=0;i<ADR.Length;i++)
                    ADRScores[i] = Convert.ToInt32(ADR[i].Text);
                for (int j = 0; j < ADC.Length; j++)
                    ADCScores[j] = Convert.ToInt32(ADC[j].Text);
                for (int k = 0; k < CR1.Length; k++)
                    CR1Scores[k] = Convert.ToInt32(CR1[k].Text);
                for (int l = 0; l < EC1.Length; l++)
                    EC1Scores[l] = Convert.ToInt32(EC1[l].Text);
                for (int m = 0; m < AP.Length; m++)
                    APScores[m] = Convert.ToInt32(AP[m].Text);
                for (int n = 0; n < CR2.Length; n++)
                    CR2Scores[n] = Convert.ToInt32(CR2[n].Text);
                for (int o = 0; o < EC2.Length; o++)
                    EC2Scores[o] = Convert.ToInt32(EC2[o].Text);
                
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string QueryUpdateWeightage = "UPDATE DSS "
                                        + "SET DSS.BRPWeightage = @BRPWeightage, DSS.IODMWeightage = @IODMWeightage "
                                        + "FROM [dbo].DeliveryScoreSettings DSS "
                                        + "WHERE DSS.LastUpdate = @LastUpdate AND DSS.CMID = @CMID AND DSS.Month = @Month AND DSS.Year = @Year ;";

                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand(QueryUpdateWeightage, conn);
                        cmd.Parameters.AddWithValue("@BRPWeightage", BRPWeightageWhole);
                        cmd.Parameters.AddWithValue("@IODMWeightage", IODMWeightageWhole);
                        cmd.Parameters.AddWithValue("@LastUpdate", hfLastUpdate.Value);
                        cmd.Parameters.AddWithValue("@CMID", CMID);
                        cmd.Parameters.AddWithValue("@Month", Month);
                        cmd.Parameters.AddWithValue("@Year", Year);

                        int rowAffected = cmd.ExecuteNonQuery();

                        if(rowAffected == 1)
                        {
                            WeightAgeUpdateSuccess = true;
                        }

                    }
                    catch(Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                string QueryUpdateScoreRangeADR = "UPDATE DCS1 "
                                            + "SET DCS1.Score0101 = @Score0101, DCS1.Score0102 = @Score0102, DCS1.Score0103 = @Score0103, DCS1.Score0104 = @Score0104, DCS1.Score0105 = @Score0105, DCS1.Score0106 = @Score0106, DCS1.Score0107 = @Score0107, DCS1.Score0108 = @Score0108, DCS1.Score0109 = @Score0109 "
                                            + "FROM [dbo].DeliveryCriteriaScore01 DCS1 "
                                            + "WHERE DCS1.LastUpdate = @LastUpdate ;";

                string QueryUpdateScoreRangeADC = "UPDATE DCS2 "
                                            + "SET DCS2.Score0201 = @Score0201, DCS2.Score0202 = @Score0202, DCS2.Score0203 = @Score0203, DCS2.Score0204 = @Score0204, DCS2.Score0205 = @Score0205, DCS2.Score0206 = @Score0206, DCS2.Score0207 = @Score0207, DCS2.Score0208 = @Score0208, DCS2.Score0209 = @Score0209 "
                                            + "FROM [dbo].DeliveryCriteriaScore02 DCS2 "
                                            + "WHERE DCS2.LastUpdate = @LastUpdate ;";

                string QueryUpdateScoreRangeCR1 = "UPDATE DCS3 "
                                            + "SET DCS3.Score0301 = @Score0301, DCS3.Score0302 = @Score0302, DCS3.Score0303 = @Score0303, DCS3.Score0304 = @Score0304, DCS3.Score0305 = @Score0305, DCS3.Score0306 = @Score0306, DCS3.Score0307 = @Score0307, DCS3.Score0308 = @Score0308, DCS3.Score0309 = @Score0309 "
                                            + "FROM [dbo].DeliveryCriteriaScore03 DCS3 "
                                            + "WHERE DCS3.LastUpdate = @LastUpdate ;";

                string QueryUpdateScoreRangeEC1 = "UPDATE DCS4 "
                                            + "SET DCS4.Score0401 = @Score0401, DCS4.Score0402 = @Score0402, DCS4.Score0403 = @Score0403, DCS4.Score0404 = @Score0404, DCS4.Score0405 = @Score0405, DCS4.Score0406 = @Score0406 "
                                            + "FROM [dbo].DeliveryCriteriaScore04 DCS4 "
                                            + "WHERE DCS4.LastUpdate = @LastUpdate ; ";

                string QueryUpdateScoreRangeAP = "UPDATE DCS5 "
                                            + "SET DCS5.Score0501 = @Score0501, DCS5.Score0502 = @Score0502, DCS5.Score0503 = @Score0503, DCS5.Score0504 = @Score0504, DCS5.Score0505 = @Score0505, DCS5.Score0506 = @Score0506, DCS5.Score0507 = @Score0507, DCS5.Score0508 = @Score0508, DCS5.Score0509 = @Score0509 "
                                            + "FROM [dbo].DeliveryCriteriaScore05 DCS5 "
                                            + "WHERE DCS5.LastUpdate = @LastUpdate ; ";

                string QueryUpdateScoreRangeCR2 = "UPDATE DCS6 "
                                            + "SET DCS6.Score0601 = @Score0601, DCS6.Score0602 = @Score0602, DCS6.Score0603 = @Score0603, DCS6.Score0604 = @Score0604, DCS6.Score0605 = @Score0605, DCS6.Score0606 = @Score0606, DCS6.Score0607 = @Score0607, DCS6.Score0608 = @Score0608, DCS6.Score0609 = @Score0609 "
                                            + "FROM [dbo].DeliveryCriteriaScore06 DCS6 "
                                            + "WHERE DCS6.LastUpdate = @LastUpdate ; ";

                string QueryUpdateScoreRangeEC2 = "UPDATE DCS7 "
                                            + "SET DCS7.Score0701 = @Score0701, DCS7.Score0702 = @Score0702, DCS7.Score0703 = @Score0703, DCS7.Score0704 = @Score0704, DCS7.Score0705 = @Score0705, DCS7.Score0706 = @Score0706 "
                                            + "FROM [dbo].DeliveryCriteriaScore07 DCS7 "
                                            + "WHERE DCS7.LastUpdate = @LastUpdate ; ";

                string QueryUpdateScoreRanges = QueryUpdateScoreRangeADR + QueryUpdateScoreRangeADC + QueryUpdateScoreRangeCR1 + QueryUpdateScoreRangeEC1 + QueryUpdateScoreRangeAP + QueryUpdateScoreRangeCR2 + QueryUpdateScoreRangeEC2;

                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        int rowAffected;
                        SqlCommand cmd;

                        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                        // Param / AddWithValues
                        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                        cmd = new SqlCommand(QueryUpdateScoreRanges, conn);

                        cmd.Parameters.AddWithValue("@LastUpdate", hfLastUpdate.Value);

                        cmd.Parameters.AddWithValue("@Score0101", ADRScores[0]);
                        cmd.Parameters.AddWithValue("@Score0102", ADRScores[1]);
                        cmd.Parameters.AddWithValue("@Score0103", ADRScores[2]);
                        cmd.Parameters.AddWithValue("@Score0104", ADRScores[3]);
                        cmd.Parameters.AddWithValue("@Score0105", ADRScores[4]);
                        cmd.Parameters.AddWithValue("@Score0106", ADRScores[5]);
                        cmd.Parameters.AddWithValue("@Score0107", ADRScores[6]);
                        cmd.Parameters.AddWithValue("@Score0108", ADRScores[7]);
                        cmd.Parameters.AddWithValue("@Score0109", ADRScores[8]);

                        cmd.Parameters.AddWithValue("@Score0201", ADCScores[0]);
                        cmd.Parameters.AddWithValue("@Score0202", ADCScores[1]);
                        cmd.Parameters.AddWithValue("@Score0203", ADCScores[2]);
                        cmd.Parameters.AddWithValue("@Score0204", ADCScores[3]);
                        cmd.Parameters.AddWithValue("@Score0205", ADCScores[4]);
                        cmd.Parameters.AddWithValue("@Score0206", ADCScores[5]);
                        cmd.Parameters.AddWithValue("@Score0207", ADCScores[6]);
                        cmd.Parameters.AddWithValue("@Score0208", ADCScores[7]);
                        cmd.Parameters.AddWithValue("@Score0209", ADCScores[8]);

                        cmd.Parameters.AddWithValue("@Score0301", CR1Scores[0]);
                        cmd.Parameters.AddWithValue("@Score0302", CR1Scores[1]);
                        cmd.Parameters.AddWithValue("@Score0303", CR1Scores[2]);
                        cmd.Parameters.AddWithValue("@Score0304", CR1Scores[3]);
                        cmd.Parameters.AddWithValue("@Score0305", CR1Scores[4]);
                        cmd.Parameters.AddWithValue("@Score0306", CR1Scores[5]);
                        cmd.Parameters.AddWithValue("@Score0307", CR1Scores[6]);
                        cmd.Parameters.AddWithValue("@Score0308", CR1Scores[7]);
                        cmd.Parameters.AddWithValue("@Score0309", CR1Scores[8]);

                        cmd.Parameters.AddWithValue("@Score0401", EC1Scores[0]);
                        cmd.Parameters.AddWithValue("@Score0402", EC1Scores[1]);
                        cmd.Parameters.AddWithValue("@Score0403", EC1Scores[2]);
                        cmd.Parameters.AddWithValue("@Score0404", EC1Scores[3]);
                        cmd.Parameters.AddWithValue("@Score0405", EC1Scores[4]);
                        cmd.Parameters.AddWithValue("@Score0406", EC1Scores[5]);

                        cmd.Parameters.AddWithValue("@Score0501", APScores[0]);
                        cmd.Parameters.AddWithValue("@Score0502", APScores[1]);
                        cmd.Parameters.AddWithValue("@Score0503", APScores[2]);
                        cmd.Parameters.AddWithValue("@Score0504", APScores[3]);
                        cmd.Parameters.AddWithValue("@Score0505", APScores[4]);
                        cmd.Parameters.AddWithValue("@Score0506", APScores[5]);
                        cmd.Parameters.AddWithValue("@Score0507", APScores[6]);
                        cmd.Parameters.AddWithValue("@Score0508", APScores[7]);
                        cmd.Parameters.AddWithValue("@Score0509", APScores[8]);

                        cmd.Parameters.AddWithValue("@Score0601", CR2Scores[0]);
                        cmd.Parameters.AddWithValue("@Score0602", CR2Scores[1]);
                        cmd.Parameters.AddWithValue("@Score0603", CR2Scores[2]);
                        cmd.Parameters.AddWithValue("@Score0604", CR2Scores[3]);
                        cmd.Parameters.AddWithValue("@Score0605", CR2Scores[4]);
                        cmd.Parameters.AddWithValue("@Score0606", CR2Scores[5]);
                        cmd.Parameters.AddWithValue("@Score0607", CR2Scores[6]);
                        cmd.Parameters.AddWithValue("@Score0608", CR2Scores[7]);
                        cmd.Parameters.AddWithValue("@Score0609", CR2Scores[8]);

                        cmd.Parameters.AddWithValue("@Score0701", EC2Scores[0]);
                        cmd.Parameters.AddWithValue("@Score0702", EC2Scores[1]);
                        cmd.Parameters.AddWithValue("@Score0703", EC2Scores[2]);
                        cmd.Parameters.AddWithValue("@Score0704", EC2Scores[3]);
                        cmd.Parameters.AddWithValue("@Score0705", EC2Scores[4]);
                        cmd.Parameters.AddWithValue("@Score0706", EC2Scores[5]);
                        
                        rowAffected = cmd.ExecuteNonQuery();

                        // Intended number of rows affected: 7
                        if(rowAffected == 7)
                        {
                            lblStatusMsg.ForeColor = Color.Green;
                            lblStatusMsg.Text = "Score(s) and weightage(s) percentages have been updated successfully!";
                        }
                        else
                        {
                            lblStatusMsg.ForeColor = Color.Red;
                            lblStatusMsg.Text = "Score(s) and weightage(s) percentages were not updated successfully. Please contact the administrator.";
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString() + "<br />");
                    }
                }
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Cancel.CausesValidation = false;
            Response.Redirect("~/ControlPanel/DeliveryScore.aspx");
        }
    }
}