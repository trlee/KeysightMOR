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
    public partial class Delivery1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int cm_report = Convert.ToInt32(Session["CM_Report"].ToString());
            int month_report = Convert.ToInt32(Session["Month_Report"].ToString());
            int year_report = Convert.ToInt32(Session["Year_Report"].ToString());
            double[] result;
            result = new double[7];

            try
            {
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select * from DeliveryScore s, Delivery d where d.DeliveryID=s.DeliveryID and d.Month="+month_report+" and d.Year="+year_report+" and d.CMID="+cm_report))
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            dr.Read();
                            int i;

                            for (i = 0; i <= 6; i++)
                            {
                                result[i] = ((Convert.ToDouble(dr[i].ToString())));
                            }
                        }
                    }
                }
                d1_1_percentage.Text = result[0].ToString("0.00");
                d1_2_percentage.Text = result[1].ToString("0.00");
                d1_3_percentage.Text = result[2].ToString("0.00");
                d1_4_percentage.Text = result[3].ToString("0.00");
                d2_1_percentage.Text = result[4].ToString("0.00");
                d2_2_percentage.Text = result[5].ToString("0.00");
                d2_3_percentage.Text = result[6].ToString("0.00");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}