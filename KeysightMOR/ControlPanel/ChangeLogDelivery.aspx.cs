using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace KeysightMOR
{
    public partial class ChangeLogDelivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int CMId = Convert.ToInt32(Request.QueryString["CM"].ToString());
            string[] Date = new string[3];
            int i = 0;
            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

            using (sqlConn)
            {
                using (SqlCommand cmd = new SqlCommand("SELECT LastUpdate FROM DeliveryScoreSettings WHERE CMID = '" + CMId + "'", sqlConn))
                {
                    sqlConn.Open();
                    SqlDataReader writer = cmd.ExecuteReader();

                    if (writer.HasRows)
                    {
                        while (writer.Read())
                        {
                            Console.WriteLine(String.Format("{0}", writer[i]));
                            Date[i] = writer[i].ToString();                           
                        }
                    }
                    writer.Close();

                    if (Date[0] == "")
                    {
                        Response.Write("Error");
                    }
                    else
                    {
                        Response.Write(Date[0]);
                    }
                   
                }
            }

             try
             {
                 using (SqlConnection sqlConn1 = new SqlConnection(Shared.SqlConnString))
                 {
                     using (SqlCommand cmd = new SqlCommand("SELECT BPRWeightage FROM DeliveryScoreSettings WHERE CMID = '" + CMId + "'", sqlConn1))
                     {
                         sqlConn1.Open();
                         SqlDataReader dr = cmd.ExecuteReader();

                         if (dr.HasRows)
                         {
                             while (dr.Read())
                             {
                                 Console.WriteLine(String.Format("{0}", dr[0]));
                                 BRPWeight.Text = dr[0].ToString();
                             }
                         }
                         dr.Close();
                     }
                 }

                 using (SqlConnection sqlConn2 = new SqlConnection(Shared.SqlConnString))
                 {
                     using (SqlCommand cmd = new SqlCommand("SELECT IODMWeightage FROM DeliveryScoreSettings WHERE CMID = '" + CMId + "'", sqlConn2))
                     {
                         sqlConn2.Open();
                         SqlDataReader dr = cmd.ExecuteReader();

                         if (dr.HasRows)
                         {
                             while (dr.Read())
                             {
                                 Console.WriteLine(String.Format("{0}", dr[0]));
                                 IODMWeight.Text = dr[0].ToString();
                             }
                         }
                         dr.Close();
                     }
                 }

                 using (SqlConnection sqlConn3 = new SqlConnection(Shared.SqlConnString))
                 {
                     using (SqlCommand cmd = new SqlCommand("SELECT Score0101, Score0102, Score0103, Score0104, Score0105, Score0106, Score0107, Score0108, Score0109 FROM DeliveryCriteriaScore01 WHERE LastUpdate = '2014-05-03'", sqlConn3))
                     {
                         sqlConn3.Open();
                         SqlDataReader dr = cmd.ExecuteReader();

                         if (dr.HasRows)
                         {
                             while (dr.Read())
                             {
                                 Console.WriteLine(String.Format("{0}", dr[0]));
                                 Score0101.Text = dr[0].ToString();
                                 Score0102.Text = dr[1].ToString();
                                 Score0103.Text = dr[2].ToString();
                                 Score0104.Text = dr[3].ToString();
                                 Score0105.Text = dr[4].ToString();
                                 Score0106.Text = dr[5].ToString();
                                 Score0107.Text = dr[6].ToString();
                                 Score0108.Text = dr[7].ToString();
                                 Score0109.Text = dr[8].ToString();
                             }
                         }
                         dr.Close();

                     }
                 }

                 using (SqlConnection sqlConn4 = new SqlConnection(Shared.SqlConnString))
                 {
                     using (SqlCommand cmd = new SqlCommand("SELECT Score01, Score02, Score03, Score04, Score05, Score06, Score07, Score08, Score09 FROM DeliveryCriteriaScore02 WHERE LastUpdate = '2014-05-03'", sqlConn4))
                     {
                         sqlConn4.Open();
                         SqlDataReader dr = cmd.ExecuteReader();

                         if (dr.HasRows)
                         {
                             while (dr.Read())
                             {
                                 Console.WriteLine(String.Format("{0}", dr[0]));
                                 Score0201.Text = dr[0].ToString();
                                 Score0202.Text = dr[1].ToString();
                                 Score0203.Text = dr[2].ToString();
                                 Score0204.Text = dr[3].ToString();
                                 Score0205.Text = dr[4].ToString();
                                 Score0206.Text = dr[5].ToString();
                                 Score0207.Text = dr[6].ToString();
                                 Score0208.Text = dr[7].ToString();
                                 Score0209.Text = dr[8].ToString();
                             }
                         }
                         dr.Close();

                     }

                     using (SqlConnection sqlConn5 = new SqlConnection(Shared.SqlConnString))
                     {
                         using (SqlCommand cmd = new SqlCommand("SELECT Score01, Score02, Score03, Score04, Score05, Score06, Score07, Score08, Score09 FROM DeliveryCriteriaScore03 WHERE LastUpdate = '2014-05-03'", sqlConn5))
                         {
                             sqlConn5.Open();
                             SqlDataReader dr = cmd.ExecuteReader();

                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Console.WriteLine(String.Format("{0}", dr[0]));
                                     Score0301.Text = dr[0].ToString();
                                     Score0302.Text = dr[1].ToString();
                                     Score0303.Text = dr[2].ToString();
                                     Score0304.Text = dr[3].ToString();
                                     Score0305.Text = dr[4].ToString();
                                     Score0306.Text = dr[5].ToString();
                                     Score0307.Text = dr[6].ToString();
                                     Score0308.Text = dr[7].ToString();
                                     Score0309.Text = dr[8].ToString();
                                 }
                             }
                             dr.Close();

                         }
                     }

                     using (SqlConnection sqlConn6 = new SqlConnection(Shared.SqlConnString))
                     {
                         using (SqlCommand cmd = new SqlCommand("SELECT Score01, Score02, Score03, Score04, Score05, Score06 FROM DeliveryCriteriaScore04 WHERE LastUpdate = '2014-05-03'", sqlConn6))
                         {
                             sqlConn6.Open();
                             SqlDataReader dr = cmd.ExecuteReader();

                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Console.WriteLine(String.Format("{0}", dr[0]));
                                     Score0401.Text = dr[0].ToString();
                                     Score0402.Text = dr[1].ToString();
                                     Score0403.Text = dr[2].ToString();
                                     Score0404.Text = dr[3].ToString();
                                     Score0405.Text = dr[4].ToString();
                                     Score0406.Text = dr[5].ToString();
                                 }
                             }
                             dr.Close();
                         }
                     }

                     using (SqlConnection sqlConn7 = new SqlConnection(Shared.SqlConnString))
                     {
                         using (SqlCommand cmd = new SqlCommand("SELECT Score01, Score02, Score03, Score04, Score05, Score06, Score07, Score08, Score09 FROM DeliveryCriteriaScore05 WHERE LastUpdate = '2014-05-03'", sqlConn7))
                         {
                             sqlConn7.Open();
                             SqlDataReader dr = cmd.ExecuteReader();

                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Console.WriteLine(String.Format("{0}", dr[0]));
                                     Score0501.Text = dr[0].ToString();
                                     Score0502.Text = dr[1].ToString();
                                     Score0503.Text = dr[2].ToString();
                                     Score0504.Text = dr[3].ToString();
                                     Score0505.Text = dr[4].ToString();
                                     Score0506.Text = dr[5].ToString();
                                     Score0507.Text = dr[6].ToString();
                                     Score0508.Text = dr[7].ToString();
                                     Score0509.Text = dr[8].ToString();
                                 }
                             }
                             dr.Close();
                         }
                     }

                     using (SqlConnection sqlConn8 = new SqlConnection(Shared.SqlConnString))
                     {
                         using (SqlCommand cmd = new SqlCommand("SELECT Score01, Score02, Score03, Score04, Score05, Score06, Score07, Score08, Score09 FROM DeliveryCriteriaScore06 WHERE LastUpdate = '2014-05-03'", sqlConn8))
                         {
                             sqlConn8.Open();
                             SqlDataReader dr = cmd.ExecuteReader();

                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Console.WriteLine(String.Format("{0}", dr[0]));
                                     Score0601.Text = dr[0].ToString();
                                     Score0602.Text = dr[1].ToString();
                                     Score0603.Text = dr[2].ToString();
                                     Score0604.Text = dr[3].ToString();
                                     Score0605.Text = dr[4].ToString();
                                     Score0606.Text = dr[5].ToString();
                                     Score0607.Text = dr[6].ToString();
                                     Score0608.Text = dr[7].ToString();
                                     Score0609.Text = dr[8].ToString();
                                 }
                             }
                             dr.Close();
                         }
                     }

                     using (SqlConnection sqlConn9 = new SqlConnection(Shared.SqlConnString))
                     {
                         using (SqlCommand cmd = new SqlCommand("SELECT Score01, Score02, Score03, Score04, Score05, Score06 FROM DeliveryCriteriaScore07 WHERE LastUpdate = '2014-05-03'", sqlConn9))
                         {
                             sqlConn9.Open();
                             SqlDataReader dr = cmd.ExecuteReader();

                             if (dr.HasRows)
                             {
                                 while (dr.Read())
                                 {
                                     Console.WriteLine(String.Format("{0}", dr[0]));
                                     Score0701.Text = dr[0].ToString();
                                     Score0702.Text = dr[1].ToString();
                                     Score0703.Text = dr[2].ToString();
                                     Score0704.Text = dr[3].ToString();
                                     Score0705.Text = dr[4].ToString();
                                     Score0706.Text = dr[5].ToString();
                                 }
                             }
                             dr.Close();
                         }
                     }
                 }
             }
             catch (Exception ex)
             {
                 Response.Write(ex.ToString());
             }
        }
    }
}