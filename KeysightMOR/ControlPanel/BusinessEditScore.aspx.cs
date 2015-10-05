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

namespace KeysightMOR.ControlPanel
{
    public partial class BusinessEditScore : System.Web.UI.Page
    {
        string b1_1_1_comment, b1_1_2_comment, b1_1_3_comment, b2_1_1_comment, b2_1_2_comment, b2_1_3_comment, b2_1_4_comment, b2_1_5_comment, b2_2_1_comment;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        private void LoadData()
        {
            string CMID = Request.QueryString["CM"].ToString();
            string month = Request.QueryString["Month"].ToString();
            string year = Request.QueryString["Year"].ToString();
            string divID = Request.QueryString["DivID"].ToString();
            string userID = Request.QueryString["UserID"].ToString();

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            SqlConnection conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB1_1_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 1 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB1_1_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
                        //lcw add userid and bla bla
                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID="+ userID +" and i.DivID="+ divID +" and b.Month="+ month + "and b.Year="+ year +" and b.CMID="+CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B1_1_1 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B1_1_1.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC1_1_1 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B1_1_1C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }
                    else
                    {
                        B1_1_1.Enabled = false;
                        B1_1_1.Text = "N/A";
                        RangeValidator1.Enabled = false;
                        Comment1.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B1_1_2
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB1_1_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 2 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB1_1_2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B1_1_2 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B1_1_2.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC1_1_2 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B1_1_2C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B1_1_2.Enabled = false;
                        B1_1_2.Text = "N/A";
                        RangeValidator2.Enabled = false;
                        Comment2.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }


            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B1_1_3
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB1_1_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 7 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB1_1_3.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B1_1_3 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B1_1_3.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC1_1_3 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B1_1_3C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B1_1_3.Enabled = false;
                        B1_1_3.Text = "N/A";
                        //RangeValidator3.Enabled = false;
                        Comment3.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B2_1_1
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB2_1_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 3 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB2_1_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_1 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B2_1_1.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_1 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B2_1_1C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B2_1_1.Enabled = false;
                        B2_1_1.Text = "N/A";
                        RangeValidator3.Enabled = false; //delete later
                        //RangeValidator4.Enabled = false;
                        Comment4.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B2_1_2
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB2_1_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 4 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB2_1_2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_2 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B2_1_2.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_2 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B2_1_2C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B2_1_2.Enabled = false;
                        B2_1_2.Text = "N/A";
                        RangeValidator4.Enabled = false; //delete later
                        //RangeValidator5.Enabled = false;
                        Comment5.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B2_1_3
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB2_1_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 5 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB2_1_3.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_3 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B2_1_3.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_3 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B2_1_3C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B2_1_3.Enabled = false;
                        B2_1_3.Text = "N/A";
                        RangeValidator5.Enabled = false; //delete later
                        //RangeValidator6.Enabled = false;
                        Comment6.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }


            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B2_1_4
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB2_1_4 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 7 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB2_1_4.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_4 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B2_1_4.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_4 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B2_1_4C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B2_1_4.Enabled = false;
                        B2_1_4.Text = "N/A";
                        RangeValidator6.Enabled = false; //delete later
                        RangeValidator7.Enabled = false;
                        Comment7.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //B2_1_5
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB2_1_5 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 6 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB2_1_5.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_5 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B2_1_5.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_5 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B2_1_5C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B2_1_5.Enabled = false;
                        B2_1_5.Text = "N/A";
                        RangeValidator8.Enabled = false;
                        Comment8.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //////B1_1_3 BACKEND, COMMENT THIS OUT IF YOU HAVENT UPDATE THE DB
            //B2_2_1
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                conn.Open();

                try
                {
                    SqlCommand getB2_2_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = " + userID + " AND UC.CriteriaID = 28 AND UC.CMID = " + CMID + " AND UDI.DivID = " + divID + ";", conn);
                    SqlDataReader reader = getB2_2_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        int BusID = 0;

                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn))
                        {
                            sqlConn.Open();

                            reader.Close();

                            SqlDataReader writer = getBusID.ExecuteReader();

                            using (writer)
                            {
                                if (writer.HasRows)
                                {
                                    while (writer.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", writer[0]));
                                        BusID = Convert.ToInt32(writer[0].ToString());
                                    }
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getRecord = new SqlCommand("SELECT B2_2_1 FROM dbo.[BusinessScore] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader record = getRecord.ExecuteReader();
                                try
                                {
                                    if (record.HasRows)
                                    {
                                        while (record.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", record[0]));
                                            B2_2_1.Text = record[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                }

                                finally
                                {
                                    record.Close();
                                }
                            }
                        }

                        using (sqlConn = new SqlConnection(Shared.SqlConnString))
                        {
                            sqlConn.Open();

                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_2_1 FROM dbo.[BusinessComment] WHERE BusinessID = " + BusID + "", sqlConn))
                            {
                                SqlDataReader comment = getComment.ExecuteReader();

                                if (comment.HasRows)
                                {
                                    while (comment.Read())
                                    {
                                        // Console.WriteLine(String.Format("{0}", comment[0]));
                                        B2_2_1C.Text = comment[0].ToString();
                                    }
                                }

                                comment.Close();
                            }
                        }
                    }

                    else
                    {
                        B2_2_1.Enabled = false;
                        B2_2_1.Text = "N/A";
                        RangeValidator9.Enabled = false;
                        Comment9.Enabled = false;
                    }

                    if (!reader.IsClosed)
                        reader.Close();
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }
        }
        protected void Save_Draft_Click(object sender, EventArgs e)
        {
            string CMID = Request.QueryString["CM"].ToString();
            string month = Request.QueryString["Month"].ToString();
            string year = Request.QueryString["Year"].ToString();
            string divID = Request.QueryString["DivID"].ToString();
            string userID = Request.QueryString["UserID"].ToString();
            int BusID = 0;
            // double b1 = 4, b2 = 4, b3 = 4, b4 = 4, b5 = 4, b6 = 4, b7 = 4, b8 = 4, b9 = 4;

            TextBox[] bTextBoxScore = new TextBox[] { B1_1_1, B1_1_2, B1_1_3, B2_1_1, B2_1_2, B2_1_3, B2_1_4, B2_1_5, B2_2_1 };
            // TextBox[] bTextBoxComment = new TextBox[] { B1_1_1C, B1_1_2C, B1_1_3C, B2_1_1C, B2_1_2C, B2_1_3C, B2_1_4C, B2_1_5C, B2_2_1C };
            double[] bScore = new double[bTextBoxScore.Length];

            if (Page.IsValid)
            {
                lblValidMsg.Text = "Thank you.";

                for (int i = 0; i < bTextBoxScore.Length; i++)
                {
                    if (bTextBoxScore[i].Text.ToUpper() != "N/A")
                    {
                        bScore[i] = Convert.ToDouble(bTextBoxScore[i].Text);
                    }
                }


                SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
                //lcw
                SqlCommand getBusID = new SqlCommand("SELECT b.BusinessID FROM dbo.[Business] b, dbo.[UserDivID] i WHERE b.UserDivID = i.UserDivID and i.UserID=" + userID + " and i.DivID=" + divID + " and b.Month=" + month + "and b.Year=" + year + " and b.CMID=" + CMID, sqlConn);


                using (sqlConn)
                {
                    try
                    {
                        sqlConn.Open();

                        SqlDataReader reader = getBusID.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                // Console.WriteLine(String.Format("{0}", reader[0]));
                                BusID = Convert.ToInt32(reader[0].ToString());
                            }

                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

                //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                SqlCommand SqlCommand;

                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        string QueryUpdateBScore = "";

                        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                        // Business Scoring

                        for (int i = 0; i < bTextBoxScore.Length; i++)
                        {
                            if (bTextBoxScore[i].Text.ToUpper() == "N/A")
                            {
                                QueryUpdateBScore += "UPDATE dbo.[BusinessScore] SET " + bTextBoxScore[i].ID + " = -3 WHERE BusinessID = " + BusID + ";";
                            }
                            else
                            {
                                QueryUpdateBScore += "UPDATE dbo.[BusinessScore] SET " + bTextBoxScore[i].ID + " = " + bScore[i] + "WHERE BusinessID = " + BusID + ";";
                            }
                        }

                        using (SqlCommand = new SqlCommand(QueryUpdateBScore, conn))
                        {
                            SqlCommand.ExecuteNonQuery();
                        }

                        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                        // Business Comment

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC1_1_1 = '" + b1_1_1_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC1_1_2 = '" + b1_1_2_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        //using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC1_1_3 = '" + b1_1_3_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        //{

                        //    SqlCommand.ExecuteNonQuery();
                        //}

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_1 = '" + b2_1_1_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_2 = '" + b2_1_2_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_3 = '" + b2_1_3_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_4 = '" + b2_1_4_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_5 = '" + b2_1_5_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_2_1 = '" + b2_2_1_comment + "' WHERE BusinessID = " + BusID + ";", conn))
                        {

                            SqlCommand.ExecuteNonQuery();
                        }

                        lblValidMsg.Text = "Thank you.";
                        lblSubmitDbStatusTrue.Text = "Business data entry successful";

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                        lblSubmitDbStatusFalse.Text = "Business data entry unsuccessful";
                    }

                }
            }
            //else//lcw delete?
            //{
            //    string InsertB = "INSERT INTO dbo.[Business](UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";
            //    SqlConnection SqlConnection1 = new SqlConnection(Shared.SqlConnString);
            //    SqlCommand sqlCommand1 = new SqlCommand(InsertB, SqlConnection1);
            //    sqlCommand1.Parameters.AddWithValue("@UserDivID", Session["UserDivID"].ToString());
            //    sqlCommand1.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
            //    sqlCommand1.Parameters.AddWithValue("@MonthNow", Session["MonthNow"].ToString());
            //    sqlCommand1.Parameters.AddWithValue("@YearNow", Session["YearNow"].ToString());
            //    //sqlCommand1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

            //    using (SqlConnection1)
            //    {
            //        try
            //        {
            //            SqlConnection1.Open();
            //            sqlCommand1.ExecuteNonQuery();

            //            using (SqlCommand get = new SqlCommand("SELECT BusinessID FROM [dbo].Business WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND CMID = " + CMID + " AND Month = " + Convert.ToInt32(Session["MonthNow"].ToString()) + " AND Year = " + Convert.ToInt32(Session["YearNow"].ToString()) + " ;", SqlConnection1))
            //            {

            //                using (SqlDataReader dr = get.ExecuteReader())
            //                {
            //                    dr.Read();
            //                    BusID = Convert.ToInt32(dr[0].ToString());
            //                }
            //            }
            //        }

            //        catch (Exception ex)
            //        {
            //            lblSubmitDbStatusFalse.Text = ex.Message;
            //        }
            //    }

            //    //CHECK FOR B1_1_3 INSERTION BACKEND
            //    SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
            //    SqlCommand SqlCommand;
            //    string SqlQuery = "INSERT INTO dbo.[BusinessScore](B1_1_1, B1_1_2, B1_1_3, B2_1_1, B2_1_2, B2_1_3, B2_1_4, B2_1_5, B2_2_1, BusinessID, Status) VALUES (@B1_1_1, @B1_1_2, @B1_1_3, @B2_1_1, @B2_1_2, @B2_1_3, @B2_1_4, @B2_1_5, @B2_2_1, @BusID, 1)";

            //    using (SqlConnection = new SqlConnection(Shared.SqlConnString))
            //    {
            //        try
            //        {
            //            SqlConnection.Open();

            //            SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

            //            SqlCommand.Parameters.AddWithValue("@B1_1_1", bScore[0]);
            //            SqlCommand.Parameters.AddWithValue("@B1_1_2", bScore[1]);
            //            SqlCommand.Parameters.AddWithValue("@B1_1_3", bScore[2]);
            //            SqlCommand.Parameters.AddWithValue("@B2_1_1", bScore[3]);
            //            SqlCommand.Parameters.AddWithValue("@B2_1_2", bScore[4]);
            //            SqlCommand.Parameters.AddWithValue("@B2_1_3", bScore[5]);
            //            SqlCommand.Parameters.AddWithValue("@B2_1_4", bScore[6]);
            //            SqlCommand.Parameters.AddWithValue("@B2_1_5", bScore[7]);
            //            SqlCommand.Parameters.AddWithValue("@B2_2_1", bScore[8]);
            //            SqlCommand.Parameters.AddWithValue("@BusID", BusID);

            //            SqlCommand.ExecuteNonQuery();

            //            using (SqlCommand = new SqlCommand("INSERT INTO dbo.[BusinessComment](BC1_1_1, BC1_1_2, BC1_1_3, BC2_1_1, BC2_1_2, BC2_1_3, BC2_1_4, B2_1_5, B2_2_1, BusinessID, Status) VALUES (@BC1_1_1, @BC1_1_2, @BC1_1_3, @BC2_1_1, @BC2_1_2, @BC2_1_3, @BC2_1_4, @BC2_1_5, @BC2_2_1, @BusID, 1)", SqlConnection))
            //            {

            //                SqlCommand.Parameters.AddWithValue("@B1_1_1", B1_1_1C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B1_1_2", B1_1_2C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B1_1_3", B1_1_3C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B2_1_1", B2_1_1C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B2_1_2", B2_1_2C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B2_1_3", B2_1_3C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B2_1_4", B2_1_4C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B2_1_5", B2_1_5C.Text);
            //                SqlCommand.Parameters.AddWithValue("@B2_2_1", B2_2_1C.Text);
            //                SqlCommand.Parameters.AddWithValue("@BusID", BusID);

            //                SqlCommand.ExecuteNonQuery();
            //            }

            //            lblValidMsg.Text = "Thank you.";
            //            lblSubmitDbStatusTrue.Text = "Business data entry successful";

            //        }
            //        catch (Exception ex)
            //        {
            //            Response.Write(ex.ToString());
            //            lblSubmitDbStatusFalse.Text = "Business data entry unsuccessful";
            //        }
            //    }
            //}
        }
        protected void submit_b1_1_1_comment_Click(object sender, EventArgs e)
        {
            b1_1_1_comment = B1_1_1C.Text;
        }

        protected void cancel_b1_1_1_comment_Click(object sender, EventArgs e)
        {
            B1_1_1C.Text = null;
        }

        protected void submit_b1_1_2_comment_Click(object sender, EventArgs e)
        {
            b1_1_2_comment = B1_1_2C.Text;
        }

        protected void cancel_b1_1_2_comment_Click(object sender, EventArgs e)
        {
            B1_1_2C.Text = null;
        }

        protected void submit_b2_1_1_comment_Click(object sender, EventArgs e)
        {
            b2_1_1_comment = B2_1_1C.Text;
        }

        protected void cancel_b2_1_1_comment_Click(object sender, EventArgs e)
        {
            B2_1_1C.Text = null;
        }

        protected void submit_b2_1_2_comment_Click(object sender, EventArgs e)
        {
            b2_1_2_comment = B2_1_2C.Text;
        }

        protected void cancel_b2_1_2_comment_Click(object sender, EventArgs e)
        {
            B2_1_2C.Text = null;
        }

        protected void submit_b2_1_3_comment_Click(object sender, EventArgs e)
        {
            b2_1_3_comment = B2_1_3C.Text;
        }

        protected void cancel_b2_1_3_comment_Click(object sender, EventArgs e)
        {
            B2_1_3C.Text = null;
        }

        protected void submit_b2_1_4_comment_Click(object sender, EventArgs e)
        {
            b2_1_4_comment = B2_1_4C.Text;
        }

        protected void cancel_b2_1_4_comment_Click(object sender, EventArgs e)
        {
            B2_1_4C.Text = null;
        }

        protected void submit_b2_1_5_comment_Click(object sender, EventArgs e)
        {
            b2_1_5_comment = B2_1_5C.Text;
        }

        protected void cancel_b2_1_5_comment_Click(object sender, EventArgs e)
        {
            B2_1_5C.Text = null;
        }

        protected void submit_b2_2_1_comment_Click(object sender, EventArgs e)
        {
            b2_2_1_comment = B2_2_1C.Text;
        }

        protected void cancel_b2_2_1_comment_Click(object sender, EventArgs e)
        {
            B2_2_1C.Text = null;
        }

        protected void submit_b1_1_3_comment_Click(object sender, EventArgs e)
        {
            b1_1_3_comment = B1_1_3C.Text;
        }

        protected void cancel_b1_1_3_comment_Click(object sender, EventArgs e)
        {
            B1_1_3C.Text = null;
        }
    }
}