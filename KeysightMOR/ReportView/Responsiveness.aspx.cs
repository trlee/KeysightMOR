using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using KeysightMOR.Assets;

namespace KeysightMOR.ReportView
{
    public partial class Responsiveness1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int cm_report = Convert.ToInt32(Session["CM_Report"].ToString());
            int month_report = Convert.ToInt32(Session["Month_Report"].ToString());
            int year_report = Convert.ToInt32(Session["Year_Report"].ToString());

            try //Get Responsiveness Data Entry Report (tab2)
            {
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select DivName,R1_1,R1_2,R1_3,R2_1,R2_2_1,R2_2_2,R2_3_1,R2_3_2,R2_3_3,R2_3_4,R2_3_5,R2_3_6 from ResponsivenessScore s, Responsiveness r, UserDivID u, Division d where s.ResponsivenessID=r.ResponsivenessID and r.UserDivID=u.UserDivID and u.DivID=d.DivID and r.Month="+month_report+" and r.Year="+year_report+" and r.CMID="+cm_report+""))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                ResponsivenessReport2.DataSource = dt;
                                ResponsivenessReport2.DataBind();
                            }
                        }
                    }
                }

                getComment();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            try //Get avrg score (tab1)
            {
                ArrayList achieve = new ArrayList();
                double[] result;
                result = new double[10];
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select AVG(R1_1),AVG(R1_2),AVG(R1_3),AVG(R2_1),AVG(R2_3_1),AVG(R2_3_2),AVG(R2_3_3),AVG(R2_3_4),AVG(R2_3_5),AVG(R2_3_6) from ResponsivenessScore s, Responsiveness r where s.ResponsivenessID=r.ResponsivenessID and r.Month="+month_report+" and r.Year="+year_report+" and r.CMID="+cm_report+"",conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            dr.Read();
                            int i;
             
                            for (i = 0; i <= 9; i++)
                            {
                                result[i] = ((Convert.ToDouble(dr[i].ToString())));
                                if (result[i] >= 3.3)
                                {
                                    achieve.Add("Y");
                                    result[i] = 1.0;
                                }
                                else if (result[i] >= 3.0)
                                {
                                    achieve.Add("P");
                                    result[i] = 0.5;
                                }
                                else
                                {
                                    achieve.Add("N");
                                    result[i] = 0.0;
                                }
                            }
                            
                            r1_1.Text = achieve[0].ToString();
                            r1_2.Text = achieve[1].ToString();
                            r1_3.Text = achieve[2].ToString();
                            r2_1.Text = achieve[3].ToString();
                            r2_3_1.Text = achieve[4].ToString();
                            r2_3_2.Text = achieve[5].ToString();
                            r2_3_3.Text = achieve[6].ToString();
                            r2_3_4.Text = achieve[7].ToString();
                            r2_3_5.Text = achieve[8].ToString();
                            r2_3_6.Text = achieve[9].ToString();

                            double r1_score;
                            double r1_totalscore;
                            double r2_score;
                            double r2_totalscore;
                            double r_score;

                            r1_score = (result[0] + result[1] + result[2]) / 3 * 4;
                            r1_scorelbl.Text = r1_score.ToString("0.00");
                            r1_totalscore = r1_score * 0.5;
                            r1_totalscorelbl.Text = r1_totalscore.ToString("0.00");
                            //====================== Pending changes =========================
                            r2_score = 4;
                            r2_scorelbl.Text = r2_score.ToString("0.00");
                            r2_totalscore = r2_score * 0.5;
                            r2_totalscorelbl.Text = r2_totalscore.ToString("0.00");
                            r_score = r1_totalscore + r2_totalscore;
                            R_Score.Text = r_score.ToString("0.00");
                            //================================================================
                        }                        
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }//End page load

        public void getComment()
        {
            int cm_report = Convert.ToInt32(Session["CM_Report"].ToString());
            int month_report = Convert.ToInt32(Session["Month_Report"].ToString());
            int year_report = Convert.ToInt32(Session["Year_Report"].ToString());

            try //Get Comments and Attachment (tab3)
            {
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {   //R1_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC1_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R1_1_Comment.DataSource = dt;
                                R1_1_Comment.DataBind();
                            }
                        }
                    }
                    //R1_2_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC1_2 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R1_2_Comment.DataSource = dt;
                                R1_2_Comment.DataBind();
                            }
                        }
                    }
                    //R1_3_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC1_3 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R1_3_Comment.DataSource = dt;
                                R1_3_Comment.DataBind();
                            }
                        }
                    }
                    //R2_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_1_Comment.DataSource = dt;
                                R2_1_Comment.DataBind();
                            }
                        }
                    }
                    //R2_2_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_2_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_2_1_Comment.DataSource = dt;
                                R2_2_1_Comment.DataBind();
                            }
                        }
                    }
                    //R2_2_2_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_2_2 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_2_2_Comment.DataSource = dt;
                                R2_2_2_Comment.DataBind();
                            }
                        }
                    }
                    //R2_3_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_3_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_3_1_Comment.DataSource = dt;
                                R2_3_1_Comment.DataBind();
                            }
                        }
                    }
                    //R2_3_2_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_3_2 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_3_2_Comment.DataSource = dt;
                                R2_3_2_Comment.DataBind();
                            }
                        }
                    }
                    //R2_3_3_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_3_3 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_3_3_Comment.DataSource = dt;
                                R2_3_3_Comment.DataBind();
                            }
                        }
                    }
                    //R2_3_4_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_3_4 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_3_4_Comment.DataSource = dt;
                                R2_3_4_Comment.DataBind();
                            }
                        }
                    }
                    //R2_3_5_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_3_5 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_3_5_Comment.DataSource = dt;
                                R2_3_5_Comment.DataBind();
                            }
                        }
                    }
                    //R2_3_6_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from ResponsivenessComment c, Responsiveness r ,UserDivID i, dbo.[User] t, division d where r.ResponsivenessID=c.ResponsivenessID and r.CMID="+cm_report+" and r.Month="+month_report+" and r.Year="+year_report+" and i.UserDivID=r.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and RC2_3_6 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                R2_3_6_Comment.DataSource = dt;
                                R2_3_6_Comment.DataBind();
                            }
                        }
                    }
                }
            }//End try
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }//End getComment()
    }// End class
}
