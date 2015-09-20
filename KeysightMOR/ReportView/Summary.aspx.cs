using KeysightMOR.Assets;
using System;
using System.Collections;
using System.Data.SqlClient;
using System.Globalization;
using System.Text;

namespace KeysightMOR
{
    public partial class Summary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double totalScore=0, scoreR, scoreD, scoreB, scoreQ;
            get_CM_Name();
            //Get RDB Score from RDBMonthlyScore table
            try
            {
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select ScoreR,ScoreD,ScoreB,ScoreQ from dbo.[RDBMonthlyScore] where Month='" + Session["Month_Report"] + "' and Year='" + Session["Year_Report"] + "' and CMID='" + Session["CM_Report"] + "'", conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            dr.Read();
                            scoreR = Convert.ToDouble(dr[0].ToString());
                            scoreD = Convert.ToDouble(dr[1].ToString());
                            scoreB = Convert.ToDouble(dr[2].ToString());
                            scoreQ = Convert.ToDouble(dr[3].ToString());
                            //Formula for 'Customer Score'
                            double r_FinalScore = scoreR * 0.28;
                            double d_FinalScore = scoreD * 0.28;
                            double b_FinalScore = scoreB * 0.15;
                            double q_FinalScore = scoreQ * 0.28;
                            //Display
                            R_Score.Text = scoreR.ToString("0.00");
                            D_Score.Text = scoreD.ToString("0.00");
                            B_Score.Text = scoreB.ToString("0.00");
                            Q_Score.Text = scoreQ.ToString("0.00");
                            R_FinalScore.Text = r_FinalScore.ToString("0.00");
                            D_FinalScore.Text = d_FinalScore.ToString("0.00");
                            B_FinalScore.Text = b_FinalScore.ToString("0.00");
                            Q_FinalScore.Text = q_FinalScore.ToString("0.00");
                            Score.Text = totalScore.ToString("0.00");
            
                            int month = Convert.ToInt32(Session["Month_Report"].ToString());
                            EvaluationDate.Text = CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(month) +" " + Session["Year_Report"].ToString();

                        //==== Evaluation Team =====
                            display_R_Team();
                            display_D_Team();
                            display_B_Team();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                error_Msg.Text = "Some error(s) occur while retrieving full report";
            }
            

        
        }

        protected void back_to_report_Click(object sender, EventArgs e){
            Response.Redirect("~/ReportView/Report.aspx");
        }
        protected void get_CM_Name()
        {
            try{
                double[] result;
                result = new double[10];
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select CMName from dbo.[CM] where CMID = '" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            dr.Read();
                            Report_CM.Text = dr[0].ToString();
                        }
                    }
                }
            }
            catch (Exception ex){
                error_Msg.Text = "Some error(s) occur while retrieving full report";
            }
        }
        protected void display_R_Team()
        {
            try{
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select UserName from dbo.[User] u, UserDivID d,Responsiveness r where u.UserID=d.UserID and d.UserDivID=r.UserDivID and r.Month='" + Session["Month_Report"] + "' and r.Year='" + Session["Year_Report"] + "' and r.CMID='" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        StringBuilder r_team = new StringBuilder();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            int i=1;
                            while (dr.Read()){
                                if (i != 1){
                                    r_team.Append(", ");
                                }
                                r_team.Append(dr[0].ToString());
                                i++;
                            }
                            R_Team.Text = r_team.ToString();
                        }
                    }
                }
            }
            catch (Exception ex){
                error_Msg.Text = "Some error(s) occur while retrieving full report";
            }
        }
        protected void display_D_Team(){
            try{
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select UserName from dbo.[User] u, UserDivID d,Delivery e where u.UserID=d.UserID and d.UserDivID=e.UserDivID and e.Month='" + Session["Month_Report"] + "' and e.Year='" + Session["Year_Report"] + "' and e.CMID='" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        StringBuilder d_team = new StringBuilder();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            int i = 1;
                            while (dr.Read()){
                                if (i != 1){
                                    d_team.Append(", ");
                                }
                                d_team.Append(dr[0].ToString());
                                i++;
                            }
                            D_Team.Text = d_team.ToString();
                        }
                    }
                }
            }
            catch (Exception ex){
                error_Msg.Text = "Some error(s) occur while retrieving full report";
            }
        }
        protected void display_B_Team(){
            try{
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select UserName from dbo.[User] u, UserDivID d,Business b where u.UserID=d.UserID and d.UserDivID=b.UserDivID and b.Month='" + Session["Month_Report"] + "' and b.Year='" + Session["Year_Report"] + "' and b.CMID='" + Session["CM_Report"] + "'", conn)){
                        conn.Open();
                        StringBuilder b_team = new StringBuilder();
                        using (SqlDataReader dr = cmd.ExecuteReader()){
                            int i = 1;
                            while (dr.Read()){
                                if (i != 1){
                                    b_team.Append(", ");
                                }
                                b_team.Append(dr[0].ToString());
                                i++;
                            }
                            B_Team.Text = b_team.ToString();
                        }
                    }
                }
            }
            catch (Exception ex){
                error_Msg.Text = "Some error(s) occur while retrieving full report";
            }
        }
    }
}