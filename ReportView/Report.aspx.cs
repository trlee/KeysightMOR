using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using KeysightMOR.Assets;
using System.Data.SqlClient;

namespace KeysightMOR
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink2.NavigateUrl = "ReportView/Graph.aspx";
            int selected_month = Convert.ToInt32(DateTime.Now.Year.ToString());
            int selected_year = Convert.ToInt32(Session["Year_Report"].ToString());
            int month_now = Convert.ToInt32(DateTime.Now.Month.ToString());
            int year_now = Convert.ToInt32(DateTime.Now.Year.ToString());
            string CM_Name;

            //===================== Score Calculating ======================
            double r_score, d_score, b_score, q_score;
            string date = Session["Year_Report"] + "-" + Session["Month_Report"] + "-" + "01";
            r_score = get_R_Score();
            decimal r = Math.Round(Convert.ToDecimal(r_score), 2);
            d_score = get_D_Score();
            decimal d = Math.Round(Convert.ToDecimal(d_score), 2);
            b_score = get_B_Score();
            decimal b = Math.Round(Convert.ToDecimal(b_score),2);
            q_score = get_Q_Score();
            decimal q = Math.Round(Convert.ToDecimal(q_score), 2);
            //Update or insert RDBMonthlyScore table
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                SqlCommand insertRDB = new SqlCommand("Insert into dbo.[RDBMonthlyScore] values ("+Session["CM_Report"]+","+Session["Month_Report"]+","+Session["Year_Report"]+","+r+","+d+","+b+","+q+",'"+date+"')",conn);
                SqlCommand updateRDB = new SqlCommand("update dbo.[RDBMonthlyScore] set ScoreR ='"+r+"', ScoreD='"+d+"',ScoreB='"+b+"',ScoreQ='"+q+"' where Month='"+Session["Month_Report"] + "' and Year='" + Session["Year_Report"] + "' and CMID='" + Session["CM_Report"] + "'",conn);
                using (SqlCommand cmd = new SqlCommand("select * from dbo.[RDBMonthlyScore] where Month='" + Session["Month_Report"] + "' and Year='" + Session["Year_Report"] + "' and CMID='" + Session["CM_Report"] + "'", conn)){
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows){    //Update Query
                        dr.Close();
                        updateRDB.ExecuteNonQuery();
                    }
                    else if(selected_year <= year_now || (selected_year <= year_now && selected_month <= month_now)){   //Insert Query
                        dr.Close();
                        insertRDB.ExecuteNonQuery();
                    }
                    else{
                        error_Msg.Text = "You have selected an invalid date.";
                    }
                }
            }
            //Get CM Name
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                SqlCommand cmName = new SqlCommand("select CMName from dbo.[CM] c,dbo.[RDBMonthlyScore] m where m.CMID=c.CMID and m.CMID ='" + Session["CM_Report"]+"'", conn);
                conn.Open();
                SqlDataReader dr = cmName.ExecuteReader();
                dr.Read();
                CM_Name = dr[0].ToString();
            }
            
        }
        protected double get_R_Score(){
            double r_score = 0;
            try{
                double[] result;
                result = new double[10];
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select AVG(R1_1),AVG(R1_2),AVG(R1_3),AVG(R2_1),AVG(R2_3_1),AVG(R2_3_2),AVG(R2_3_3),AVG(R2_3_4),AVG(R2_3_5),AVG(R2_3_6) from ResponsivenessScore s, Responsiveness r where s.ResponsivenessID=r.ResponsivenessID and r.Month='" + Session["Month_Report"] + "' and r.Year='" + Session["Year_Report"] + "' and r.CMID='" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            dr.Read();
                            int i;
                            for (i = 0; i <= 9; i++){
                                result[i] = ((Convert.ToDouble(dr[i].ToString())));
                                if (result[i] >= 3.3){
                                    result[i] = 1.0;
                                }
                                else if (result[i] >= 3.0){
                                    result[i] = 0.5;
                                }
                                else{
                                    result[i] = 0.0;
                                }
                            }

                            double r1_score;
                            double r1_totalscore;
                            double r2_score;
                            double r2_totalscore;

                            r1_score = (result[0] + result[1] + result[2]) / 3 * 4;
                            r1_totalscore = r1_score * 0.5;
                            //====================== Pending changes =========================
                            r2_score = 4;
                            r2_totalscore = r2_score * 0.5;
                            r_score = r1_totalscore + r2_totalscore;
                            //================================================================
                        }
                    }
                }
            }
            catch (Exception ex){
            }
            return r_score;
        }
        protected double get_D_Score(){
            return 0;
        }
        protected double get_B_Score(){
            double b_score = 0;
            try{
                double[] result;
                result = new double[8];
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select AVG(B1_1_1),AVG(B1_1_2),AVG(B2_1_1),AVG(B2_1_2),AVG(B2_1_3),AVG(B2_1_4),AVG(B2_1_5),AVG(B2_2_1) from BusinessScore s, Business b where s.BusinessID=b.BusinessID and b.Month='" + Session["Month_Report"] + "' and b.Year='" + Session["Year_Report"] + "' and b.CMID='" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            dr.Read();
                            int i;
                            for (i = 0; i <= 7; i++){
                                result[i] = ((Convert.ToDouble(dr[i].ToString())));
                                if (result[i] >= 3.3){
                                    result[i] = 1.0;
                                }
                                else if (result[i] >= 3.0){
                                    result[i] = 0.5;
                                }
                                else{
                                    result[i] = 0.0;
                                }
                            }

                            double b1_score;
                            double b1_totalscore;
                            double b2_score;
                            double b2_totalscore;

                            b1_score = (result[0] + result[1]) / 2 * 4;
                            b1_totalscore = b1_score * 0.5;
                            b2_score = (result[2] + result[3] + result[4] + result[5] + result[6] + result[7]) / 6 * 4;
                            b2_totalscore = b2_score * 0.5;
                            b_score = b1_totalscore + b2_totalscore; 
                        }
                    }
                }
            }
            catch (Exception ex){
            }
            return b_score;
        }
        protected double get_Q_Score(){
            double q_score = 0;
            try{
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select Score from Quality where Month='" + Session["Month_Report"] + "' and Year='" + Session["Year_Report"] + "' and CMID='" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            dr.Read();
                            q_score = Convert.ToDouble(dr[0].ToString());
                        }
                    }
                }
            }
            catch (Exception ex){
            }
            return q_score;
        }
    }
}