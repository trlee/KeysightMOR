using KeysightMOR.Assets;
using System;
using System.Configuration;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.DataVisualization.Charting;
using System.Collections;

namespace KeysightMOR.ReportView
{
    public partial class Graph1 : System.Web.UI.Page
    {
        ArrayList displayDate = new ArrayList();
        protected void Page_Load(object sender, EventArgs e){
            //Display data table for line chart
            try{
                DataTable dt = new DataTable();
                dt.Columns.Add("Responsiveness");
                dt.Columns.Add("Delivery");
                dt.Columns.Add("Business");
                dt.Columns.Add("Quality");

                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString)){
                    using (SqlCommand cmd = new SqlCommand("select top 12 * from dbo.[RDBMonthlyScore] where CMID='"+Session["CM_Report"]+"' order by date desc", conn)){
                        conn.Open();
                        using (SqlDataReader record = cmd.ExecuteReader()){
                            int count_Record = 0;
                            while (record.Read()){
                                DataRow dr = dt.NewRow();
                                if (count_Record == 0)
                                {
                                    object[] objrow = new object[] { "MOR Monthly Trend" };
                                    dr.ItemArray = objrow;
                                    dt.Rows.InsertAt(dr, 1);
                                    BoundField b = new BoundField();
                                    b.HeaderText = "Monthly Operation Report";
                                    b.DataField = count_Record.ToString();
                                    count_Record++;
                                    Graph.Columns.Add(b);
                                    displayDate.Add(headerText(Convert.ToInt32(record[1].ToString()), Convert.ToInt32(record[2].ToString())));
                                    DataRow dr2 = dt.NewRow();
                                    dr2["Responsiveness"] = record[3].ToString();
                                    dr2["Delivery"] = record[4].ToString();
                                    dr2["Business"] = record[5].ToString();
                                    dr2["Quality"] = record[6].ToString();
                                    dt.Rows.Add(dr2);
                                    BoundField bf = new BoundField();
                                    bf.HeaderText = headerText(Convert.ToInt32(record[1].ToString()), Convert.ToInt32(record[2].ToString()));
                                    count_Record++;
                                    bf.DataField = count_Record.ToString();
                                    Graph.Columns.Add(bf);
                                }
                                else
                                {
                                    dr["Responsiveness"] = record[3].ToString();
                                    dr["Delivery"] = record[4].ToString();
                                    dr["Business"] = record[5].ToString();
                                    dr["Quality"] = record[6].ToString();
                                    dt.Rows.Add(dr);
                                    count_Record++;
                                    BoundField bf = new BoundField();
                                    bf.HeaderText = headerText(Convert.ToInt32(record[1].ToString()),Convert.ToInt32(record[2].ToString()));
                                    displayDate.Add(bf.HeaderText);
                                    bf.DataField = count_Record.ToString();
                                    Graph.Columns.Add(bf);
                                }
                            }
                        }
                    }
                }
                
                Graph.DataSource = FlipDataTable(dt);
                Graph.DataBind();
                Graph.HeaderRow.Visible = true;
                Graph.Columns[0].ItemStyle.CssClass = "itemStyle";
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
                error_Msg.Text = "Some error(s) occur while retrieving full report";
            }
            //DataSource for line chart
            try
            {
                displayChart();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        public static DataTable FlipDataTable(DataTable dt)
        {
            DataTable table = new DataTable();
            //Get all the rows and change into columns
            for (int i = 0; i <= dt.Rows.Count; i++)
            {
                table.Columns.Add(Convert.ToString(i));
                
                
            }
            DataRow dr;
            //get all the columns and make it as rows
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                dr = table.NewRow();
                dr[0] = dt.Columns[j].ToString();
                for (int k = 1; k <= dt.Rows.Count; k++)
                    dr[k] = dt.Rows[k - 1][j];
                table.Rows.Add(dr);
            }
            return table;
        }
        public static string headerText(int m, int y)
        {
            string date = (CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(m)).Substring(0,3) + " " + (y.ToString()).Substring((y.ToString()).Length - 2);
            return date;
        }
        public void displayChart()
        {
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd = new SqlCommand("select top 12 * from dbo.[RDBMonthlyScore] where CMID='" + Session["CM_Report"] + "' order by date desc", conn))
                    {
                        conn.Open();
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            int i = 0;
                            List<string> xvals = new List<string>();
                            List<decimal> rvals = new List<decimal>();
                            List<decimal> dvals = new List<decimal>();
                            List<decimal> bvals = new List<decimal>();
                            List<decimal> qvals = new List<decimal>();
                            while (reader.Read())
                            {
                                xvals.Add(displayDate[i].ToString());
                                rvals.Add(Convert.ToDecimal(reader[3].ToString()));
                                dvals.Add(Convert.ToDecimal(reader[4].ToString()));
                                bvals.Add(Convert.ToDecimal(reader[5].ToString()));
                                qvals.Add(Convert.ToDecimal(reader[6].ToString()));
                                i++;
                            }
                            if (reader.HasRows)
                            {
                                Chart1.ChartAreas.Add("chtArea");
                                Chart1.Titles.Add(new Title(Session["CM_Report"].ToString()+ " Monthly Operation Report", Docking.Top, new Font("Verdana",14,FontStyle.Bold), Color.Black));
                                Chart1.ChartAreas[0].AxisX.Title = "Evaluation date";
                                Chart1.ChartAreas[0].AxisX.TitleFont = new Font("Verdana", 12, FontStyle.Bold);
                                Chart1.ChartAreas[0].AxisY.Title = "Score";
                                Chart1.ChartAreas[0].AxisY.TitleFont = new Font("Verdana", 12, FontStyle.Bold);
                                Chart1.ChartAreas[0].BorderDashStyle = ChartDashStyle.Solid;
                                Chart1.Legends.Add("Legend");
                                Chart1.Legends[0].Docking = Docking.Bottom;
                                Chart1.BorderSkin.SkinStyle = BorderSkinStyle.Emboss;
                                Chart1.Series.Add("Responsiveness");
                                Chart1.Series[0].ChartType = SeriesChartType.Line;
                                Chart1.Series[0].Points.DataBindXY(xvals.ToArray(), rvals.ToArray());
                                Chart1.Series[0].IsVisibleInLegend = true;
                                Chart1.Series[0].IsValueShownAsLabel = true;
                                Chart1.Series[0].BorderWidth = 3;
                                Chart1.Series[0].Color = Color.Red;
                                Chart1.Series.Add("Delivery");
                                Chart1.Series[1].ChartType = SeriesChartType.Line;
                                Chart1.Series[1].Points.DataBindXY(xvals.ToArray(), dvals.ToArray());
                                Chart1.Series[1].IsVisibleInLegend = true;
                                Chart1.Series[1].IsValueShownAsLabel = true;
                                Chart1.Series[1].BorderWidth = 3;
                                Chart1.Series[1].Color = Color.GreenYellow;
                                Chart1.Series.Add("Business");
                                Chart1.Series[2].ChartType = SeriesChartType.Line;
                                Chart1.Series[2].Points.DataBindXY(xvals.ToArray(), bvals.ToArray());
                                Chart1.Series[2].IsVisibleInLegend = true;
                                Chart1.Series[2].IsValueShownAsLabel = true;
                                Chart1.Series[2].BorderWidth = 3;
                                Chart1.Series[2].Color = Color.Orange;
                                Chart1.Series.Add("Quality");
                                Chart1.Series[3].ChartType = SeriesChartType.Line;
                                Chart1.Series[3].Points.DataBindXY(xvals.ToArray(), dvals.ToArray());
                                Chart1.Series[3].IsVisibleInLegend = true;
                                Chart1.Series[3].IsValueShownAsLabel = true;
                                Chart1.Series[3].BorderWidth = 3;
                                Chart1.Series[3].Color = Color.DeepSkyBlue;
                            }
                        }
                    }
                }
            
        }
    }
}