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
    public partial class Business1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int cm_report = Convert.ToInt32(Session["CM_Report"].ToString());
            int month_report = Convert.ToInt32(Session["Month_Report"].ToString());
            int year_report = Convert.ToInt32(Session["Year_Report"].ToString());

            try //Get Business Data Entry Report (tab2)
            {
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select DivName,B1_1_1,B1_1_2,B2_1_1,B2_1_2,B2_1_3,B2_1_4,B2_1_5,B2_2_1 from BusinessScore s, Business b, UserDivID u, Division d where s.BusinessID=b.BusinessID and b.UserDivID=u.UserDivID and u.DivID=d.DivID and b.Month=" + month_report + " and b.Year= " + year_report+" and b.CMID="+cm_report))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                BusinessReport2.DataSource = dt;
                                BusinessReport2.DataBind();
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
                result = new double[8];
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select AVG(B1_1_1),AVG(B1_1_2),AVG(B2_1_1),AVG(B2_1_2),AVG(B2_1_3),AVG(B2_1_4),AVG(B2_1_5),AVG(B2_2_1) from BusinessScore s, Business b where s.BusinessID=b.BusinessID and b.Month="+month_report+" and b.Year=" + year_report +" and b.CMID=" + cm_report, conn))
                    {
                        conn.Open();
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            dr.Read();
                            int i;

                            for (i = 0; i <= 7; i++)
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
                            
                            b1_1_1.Text = achieve[0].ToString();
                            b1_1_2.Text = achieve[1].ToString();
                            b2_1_1.Text = achieve[2].ToString();
                            b2_1_2.Text = achieve[3].ToString();
                            b2_1_3.Text = achieve[4].ToString();
                            b2_1_4.Text = achieve[5].ToString();
                            b2_1_5.Text = achieve[6].ToString();
                            b2_2_1.Text = achieve[7].ToString();

                            double b1_score;
                            double b1_totalscore;
                            double b2_score;
                            double b2_totalscore;
                            double b_score;

                            b1_score = (result[0] + result[1]) / 2 * 4;
                            b1_scorelbl.Text = b1_score.ToString("0.00");
                            b1_totalscore = b1_score * 0.5;
                            b1_totalscorelbl.Text = b1_totalscore.ToString("0.00");
                            b2_score = (result[2] + result[3] + result[4] + result[5] + result[6] + result[7]) / 6 * 4;
                            b2_scorelbl.Text = b2_score.ToString("0.00");
                            b2_totalscore = b2_score * 0.5;
                            b2_totalscorelbl.Text = b2_totalscore.ToString("0.00");
                            b_score = b1_totalscore + b2_totalscore;
                            B_score.Text = b_score.ToString("0.00");
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
                {   //B1_1_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC1_1_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B1_1_1_Comment.DataSource = dt;
                                B1_1_1_Comment.DataBind();
                            }
                        }
                    }
                    //B1_1_2_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC1_1_2 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B1_1_2_Comment.DataSource = dt;
                                B1_1_2_Comment.DataBind();
                            }
                        }
                    }
                    //B2_1_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC2_1_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B2_1_1_Comment.DataSource = dt;
                                B2_1_1_Comment.DataBind();
                            }
                        }
                    }
                    //B2_1_2_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC2_1_2 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B2_1_2_Comment.DataSource = dt;
                                B2_1_2_Comment.DataBind();
                            }
                        }
                    }
                    //B2_1_3_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC2_1_3 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B2_1_3_Comment.DataSource = dt;
                                B2_1_3_Comment.DataBind();
                            }
                        }
                    }
                    //B2_1_4_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC2_1_4 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B2_1_4_Comment.DataSource = dt;
                                B2_1_4_Comment.DataBind();
                            }
                        }
                    }
                    //B2_1_5_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User] t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC2_1_5 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B2_1_5_Comment.DataSource = dt;
                                B2_1_5_Comment.DataBind();
                            }
                        }
                    }
                    //B2_2_1_Comment
                    using (SqlCommand cmd = new SqlCommand("select * from BusinessComment c, Business b ,UserDivID i, dbo.[User]     t, division d where b.BusinessID=c.BusinessID and b.CMID="+cm_report+" and b.Month="+month_report+" and b.Year="+year_report+" and i.UserDivID=b.UserDivID and i.UserID=t.UserID and i.DivID=d.DivID and c.BC2_2_1 is not null"))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter())
                        {
                            cmd.Connection = conn;
                            da.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                da.Fill(dt);
                                B2_2_1_Comment.DataSource = dt;
                                B2_2_1_Comment.DataBind();
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
    }//End class
}