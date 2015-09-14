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

namespace KeysightMOR.DataEntry.Responsiveness
{
    public partial class R1TabEntry1 : System.Web.UI.Page
    {
        string r1_2_comment, r1_3_comment, r2_1_comment, r2_2_1_comment, r2_2_2_comment, r2_3_1_comment, r2_3_2_comment, r2_3_3_comment, r2_3_4_comment, r2_3_5_comment, r2_3_6_comment;
        static int RespID = 1; // starts at 1st textbox
        static int CriteriaID = 1; // starts at 1st textbox
        // static SqlConnection conn = new SqlConnection(Shared.SqlConnString);

        /// <summary>
        ///     Statement executes upon page loads
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void GetRTextBoxScore(RangeValidator rangeValidator, HyperLink comment, SqlCommand cmd, TextBox txtR)
        {
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                conn.Open();
                cmd.Connection = conn;

                using (cmd)
                {
                    try
                    {
                        SqlDataReader reader = cmd.ExecuteReader();

                        using (reader)
                        {
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    Session["UserDivID"] = reader["UserDivID"].ToString();
                                    CriteriaID = int.Parse(reader["CriteriaID"].ToString());
                                }
                            }
                            else
                            {
                                txtR.Enabled = false;
                                rangeValidator.Enabled = false;
                                comment.Enabled = false;
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

        /// <summary>
        ///     Executes SQL query that will retrieve the Responsiveness ID.
        /// </summary>
        /// <param name="cmd">SQLCommand object which has the query and connection string constructed.</param>
        private void GetResponsivenessID(SqlCommand cmd)
        {
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                conn.Open();

                using (cmd)
                {
                    try
                    {
                        SqlDataReader writer = cmd.ExecuteReader();

                        using (writer)
                        {
                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    RespID = int.Parse(writer[0].ToString());
                                }
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("From SqlCommand getRespID - " + ex.ToString() + "<br />");
                    }
                }
            }
        }

        private void GetRecord(SqlCommand cmd, TextBox txtR, int RespID)
        {
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                conn.Open();

                using (cmd)
                {
                    try
                    {
                        SqlDataReader record = cmd.ExecuteReader();

                        using (record)
                        {
                            if (record.HasRows)
                            {
                                while (record.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", record[0]));

                                    if (!txtR.Enabled)
                                        txtR.Text = "N/A";
                                    else
                                        txtR.Text = record[0].ToString();
                                }
                            }
                            else
                            {
                                
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("From SqlCommand getRecord: " + ex.ToString() + "<br /><br />");
                    }
                }
            }
        }

        private void GetComment(SqlCommand cmd, TextBox txtRC)
        {
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                conn.Open();

                try
                {
                    using (cmd)
                    {
                        SqlDataReader comment = cmd.ExecuteReader();

                        using (comment)
                        {

                            if (comment.HasRows)
                            {
                                while (comment.Read())
                                {
                                    // Console.WriteLine(String.Format("{0}", comment[0]));
                                    txtRC.Text = comment[0].ToString();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("From SqlCommand getRecord: " + ex.ToString() + "<br /><br />");
                }
            }
        }

        /// <summary>
        ///     Populates the R textboxes - TODO: Make the controls dynamic, not hardcoded (R1_1, R1_C)...
        /// </summary>
        /// <param name="conn"></param>
        /// <param name="rangeValidator"></param>
        /// <param name="comment"></param>
        /// <param name="txtRScore"></param>
        /// <param name="txtRComment"></param>
        private void PopulateRTextBox(RangeValidator rangeValidator, HyperLink comment, TextBox txtRScore, TextBox txtRComment)
        {
            SqlConnection conn = new SqlConnection(Shared.SqlConnString);
            
            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID ";

            SqlCommand getR = new SqlCommand(SqlGetRQuery, conn);
            getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
            getR.Parameters.AddWithValue("@UCCriteriaID", CriteriaID);
            getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
            getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

            GetRTextBoxScore(RangeValidator1, Comment1, getR, R1_1);

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID";

            SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
            getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
            getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

            GetResponsivenessID(getRespID);

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            string QueryGetRecord = "SELECT R1_1 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID ";

            SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
            getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

            GetRecord(getRecord, R1_1, RespID);

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            string QueryGetCommentSql = "SELECT RC1_1 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID";

            SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
            getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

            GetComment(getComment, R1_1C);

            ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        }

        /// <summary>
        ///     Loads the textboxes with appropriate scores on load
        /// </summary>
        private void LoadData()
        {
            Label1.Text = Session["SelectedCMName"].ToString();
            Label2.Text = Session["SelectedDivisionName"].ToString();


            //Response.Write("SelectedCMID: " + Session["SelectedCMID"].ToString() + "<br />");
            //Response.Write("SelectedDivisionID: " + Session["SelectedDivisionID"].ToString() + "<br />");
            //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");

            /* 
            Session["SelectedCMName"] = 4;
            Session["SelectedDivisionName"] = 4;
            Session["UserDivID"] = 4;
             */

            /// Summary: Retrieves R1_1 data and set its properties based on conditions
            ///   
            ///  
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery, conn);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 1);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator1, Comment1, getR, R1_1);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R1_1 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R1_1, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC1_1 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R1_1C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.ToString() + "<br /><br />";
                }
            }

            /// Summary: Retrieves R1_2 data and set its properties based on conditions
            ///   
            ///  
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery, conn);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 2);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator2, Comment2, getR, R1_2);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R1_2 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R1_2, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC1_2 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R1_2C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.ToString() + "<br /><br />";
                }
            }

            /// Summary: Retrieves R1_3 data and set its properties based on conditions
            ///   
            ///  
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 3);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator3, Comment3, getR, R1_3);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R1_3 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R1_3, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC1_3 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R1_3C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message + "<br /><br />";
                }
            }

            /// Summary: Retrieves R2_1 data and set its properties based on conditions
            ///   
            ///  
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery, conn);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 4);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator4, Comment4, getR, R2_1);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_1 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_1, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_1 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_1C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message + "<br /><br />";
                }
            }

            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 5);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator5, Comment5, getR, R2_2_1);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_2_1 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_2_1, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_2_1 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_2_1C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }

            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 6);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator6, Comment6, getR, R2_2_2);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_2_2 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_2_2, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_2_2 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_2_2C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }

            //SqlConnection sqlConn7 = new SqlConnection(Shared.SqlConnString);
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 7);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator7, Comment7, getR, R2_3_1);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_3_1 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_3_1, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_3_1 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_3_1C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }

            //SqlConnection sqlConn8 = new SqlConnection(Shared.SqlConnString);
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 8);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator8, Comment8, getR, R2_3_2);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_3_2 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_3_2, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_3_2 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_3_2C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }

            //SqlConnection sqlConn9 = new SqlConnection(Shared.SqlConnString);
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 9);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator9, Comment9, getR, R2_3_3);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_3_3 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_3_3, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_3_3 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_3_3C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }

            //SqlConnection sqlConn10 = new SqlConnection(Shared.SqlConnString);
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 10);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator10, Comment10, getR, R2_3_4);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_3_4 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_3_4, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_3_4 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_3_4C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            
        }

            //SqlConnection sqlConn11 = new SqlConnection(Shared.SqlConnString);
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 11);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator11, Comment11, getR, R2_3_5);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_3_5 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_3_5, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_3_5 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_3_5C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }

            //SqlConnection sqlConn12 = new SqlConnection(Shared.SqlConnString);
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string SqlGetRQuery = "SELECT * FROM UserCriteria UC, UserDivID UDI "
                        + "WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND "
                        + "UC.CriteriaID = @UCCriteriaID AND UC.CMID = @SelectedCMID AND UDI.DivID = @SelectedDivisionID; ";

                    SqlCommand getR = new SqlCommand(SqlGetRQuery);
                    getR.Parameters.AddWithValue("@UserID", int.Parse(Session["UserID"].ToString()));
                    getR.Parameters.AddWithValue("@UCCriteriaID", 12);
                    getR.Parameters.AddWithValue("@SelectedCMID", int.Parse(Session["SelectedCMID"].ToString()));
                    getR.Parameters.AddWithValue("@SelectedDivisionID", int.Parse(Session["SelectedDivisionID"].ToString()));

                    GetRTextBoxScore(RangeValidator11, Comment11, getR, R2_3_6);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                    string QueryGetRespID = "SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID AND ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getRespID = new SqlCommand(QueryGetRespID, conn);
                    getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                    getRespID.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetResponsivenessID(getRespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetRecord = "SELECT R2_3_6 FROM dbo.[ResponsivenessScore] WHERE ResponsivenessID = @ResponsivenessID; ";

                    SqlCommand getRecord = new SqlCommand(QueryGetRecord, conn);
                    getRecord.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetRecord(getRecord, R2_3_6, RespID);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string QueryGetCommentSql = "SELECT RC2_3_6 FROM dbo.[ResponsivenessComment] WHERE ResponsivenessID = @ResponsivenessID;";

                    SqlCommand getComment = new SqlCommand(QueryGetCommentSql, conn);
                    getComment.Parameters.AddWithValue("@ResponsivenessID", RespID);

                    GetComment(getComment, R2_3_6C);

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                }
                catch (Exception ex)
                {
                    lblSubmitDbStatus.Text = ex.Message;
                }
            }
        }

        /// <summary>
        ///     Saves existing entered data into database as Draft
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SaveDraft_Click(object sender, EventArgs e)
        {
          //  if (Page.IsValid)
          //  {
                lblValidMsg.Text = "Thank you.";
                SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                string RespID = "";
                // double r1 = 4, r2 = 4, r3 = 4, r4 = 4, r5 = 4, r6 = 4, r7 = 4, r8 = 4, r9 = 4, r10 = 4, r11 = 4, r12 = 4;

                double[] rScore = new double[] { 4,4,4,4,4,4,4,4,4,4,4,4 };
                TextBox[] r = new TextBox[] { R1_1, R1_2, R1_3, R2_1, R2_2_1, R2_2_2, R2_3_1, R2_3_2, R2_3_3, R2_3_4, R2_3_5, R2_3_6 };

                // Replacing the lists of if-else statements
                for(int i=0;i<r.Length;i++)
                {
                    if(r[i].Text.ToUpper() != "N/A")
                    {
                        rScore[i] = double.Parse(r[i].Text);
                        rScore[i].ToString("0.0");
                    }
                }

                using (sqlConn)
                {
                    try
                    {
                        sqlConn.Open();

                        //  summary: Gets the Responsiveness ID based on UserDivID retrieved from session
                        //  
                        //
                        SqlCommand getRespID = new SqlCommand("SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = @UserDivID", sqlConn);
                        getRespID.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));

                        //
                        //  Executes the getRespId command
                        //
                        SqlDataReader reader = getRespID.ExecuteReader();

                        //
                        // Executes when record exists and updates the values based on input entered
                        //
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(String.Format("{0}", reader[0]));
                                RespID = reader[0].ToString();
                            }

                            // SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                try
                                {
                                    conn.Open();

                                    bool R1_1_HasNA = R1_1.Text == "N/A" ? true : false;
                                    bool R1_2_HasNA = R1_2.Text == "N/A" ? true : false;
                                    bool R1_3_HasNA = R1_3.Text == "N/A" ? true : false;
                                    bool R2_1_HasNA = R2_1.Text == "N/A" ? true : false;
                                    bool R2_2_1_HasNA = R2_2_1.Text == "N/A" ? true : false;
                                    bool R2_2_2_HasNA = R2_2_1.Text == "N/A" ? true : false;
                                    bool R2_3_1_HasNA = R2_3_1.Text == "N/A" ? true : false;
                                    bool R2_3_2_HasNA = R2_3_2.Text == "N/A" ? true : false;
                                    bool R2_3_3_HasNA = R2_3_3.Text == "N/A" ? true : false;
                                    bool R2_3_4_HasNA = R2_3_4.Text == "N/A" ? true : false;
                                    bool R2_3_5_HasNA = R2_3_5.Text == "N/A" ? true : false;
                                    bool R2_3_6_HasNA = R2_3_6.Text == "N/A" ? true : false;

                                    string UpdateDraftSqlQuery = UpdateSetScoreSqlQuery(R1_1, R1_1_HasNA)
                                                                + UpdateSetScoreSqlQuery(R1_2, R1_2_HasNA) +
                                                                UpdateSetScoreSqlQuery(R1_3, R1_3_HasNA) + UpdateSetScoreSqlQuery(R2_1, R2_1_HasNA) +
                                                               UpdateSetScoreSqlQuery(R2_2_1, R2_2_1_HasNA) + UpdateSetScoreSqlQuery(R2_2_2, R2_2_2_HasNA) +
                                                                UpdateSetScoreSqlQuery(R2_3_3, R2_3_3_HasNA) + UpdateSetScoreSqlQuery(R2_3_4, R2_3_4_HasNA) +
                                                               UpdateSetScoreSqlQuery(R2_3_5, R2_3_5_HasNA) + UpdateSetScoreSqlQuery(R2_3_6, R2_3_6_HasNA);

                                    using (SqlCommand = new SqlCommand(UpdateDraftSqlQuery, conn))
                                    {
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    // AK: ResponsivenessComment can be ignored for now (10/9)
                                    // Create a string method that will accept 2 arguments - TextBox r, bool hasNA
                                    
                                    /*
                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC1_1 = '" + r1_1_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC1_2 = '" + r1_2_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC1_3 = '" + r1_3_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_1 = '" + r2_1_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_2_1 = '" + r2_2_1_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_2_2 = '" + r2_2_2_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                   
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_3_1 = '" + r2_3_1_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_3_2 = '" + r2_3_2_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_3_3 = '" + r2_3_3_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_3_4 = '" + r2_3_4_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_3_5 = '" + r2_3_5_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC2_3_6 = '" + r2_3_6_comment + "' WHERE ResponsivenessID = '" + RespID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }
                                    */

                                    lblValidMsg.Text = "Thank you.";
                                    lblSubmitDbStatusTrue.Text = "Responsiveness data entry successful";
                                
                                }
                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                    lblSubmitDbStatusFalse.Text = "Responsiveness data entry unsuccessful";
                                }
                            }
                        }

                        //
                        // Executes only if no records were able to be retrieved
                        //
                        else
                        {
                            string InsertR = "INSERT INTO dbo.[Responsiveness](UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";
                            SqlConnection SqlConnection1 = new SqlConnection(Shared.SqlConnString);
                            SqlCommand sqlCommand1 = new SqlCommand(InsertR, SqlConnection1);
                            sqlCommand1.Parameters.AddWithValue("@UserDivID", int.Parse(Session["UserDivID"].ToString()));
                            sqlCommand1.Parameters.AddWithValue("@CMID", int.Parse(Session["SelectedCMID"].ToString()));
                            sqlCommand1.Parameters.AddWithValue("@MonthNow", int.Parse(Session["MonthNow"].ToString()));
                            sqlCommand1.Parameters.AddWithValue("@YearNow", int.Parse(Session["YearNow"].ToString()));
                            //sqlCommand1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

                            using (SqlConnection1)
                            {
                                try
                                {
                                    SqlConnection1.Open();
                                    sqlCommand1.ExecuteNonQuery();
                                }

                                catch (Exception ex)
                                {
                                    lblSubmitDbStatusFalse.Text = ex.Message;
                                }
                            }

                            //  Summary: Inserting score into DB (double)
                            //
                            //
                            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;
                            string SqlQuery = "INSERT INTO dbo.[ResponsivenessScore](R1_1, R1_2, R1_3, R2_1, R2_2_1, R2_2_2, R2_3_1, R2_3_2, R2_3_3, R2_3_4, R2_3_5, R2_3_6, ResponsivenessID, Status) VALUES (@R1_1, @R1_2, @R1_3, @R2_1, @R2_2_1, @R2_2_2, @R2_3_1, @R2_3_2, @R2_3_3, @R2_3_4, @R2_3_5, @R2_3_6, @RespID, 1)";

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                try
                                {
                                    SqlConnection.Open();

                                    SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                                    SqlCommand.Parameters.AddWithValue("@R1_1", rScore[0]);
                                    SqlCommand.Parameters.AddWithValue("@R1_2", rScore[1]);
                                    SqlCommand.Parameters.AddWithValue("@R1_3", rScore[2]);
                                    SqlCommand.Parameters.AddWithValue("@R2_1", rScore[3]);
                                    SqlCommand.Parameters.AddWithValue("@R2_2_1", rScore[4]);
                                    SqlCommand.Parameters.AddWithValue("@R2_2_2", rScore[5]);
                                    SqlCommand.Parameters.AddWithValue("@R2_3_1", rScore[6]);
                                    SqlCommand.Parameters.AddWithValue("@R2_3_2", rScore[7]);
                                    SqlCommand.Parameters.AddWithValue("@R2_3_3", rScore[8]);
                                    SqlCommand.Parameters.AddWithValue("@R2_3_4", rScore[9]);
                                    SqlCommand.Parameters.AddWithValue("@R2_3_5", rScore[10]);
                                    SqlCommand.Parameters.AddWithValue("@R2_3_6", rScore[11]);
                                    SqlCommand.Parameters.AddWithValue("@RespID", int.Parse(RespID));

                                    SqlCommand.ExecuteNonQuery();

                                    using (SqlCommand = new SqlCommand("INSERT INTO dbo.[ResponsivenessComment](R1_1, R1_2, R1_3, R2_1, R2_2_1, R2_2_2, R2_3_1, R2_3_2, R2_3_3, R2_3_4, R2_3_5, R2_3_6, ResponsivenessID) VALUES (@R1_1, @R1_2, @R1_3, @R2_1, @R2_2_1, @R2_2_2, @R2_3_1, @R2_3_2, @R2_3_3, @R2_3_4, @R2_3_5, @R2_3_6, @RespID, 1)", conn))
                                    {

                                        SqlCommand.Parameters.AddWithValue("@R1_1", R1_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R1_2", R1_2C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R1_3", R1_3C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_1", R2_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_2_1", R2_2_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_2_2", R2_2_2C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_3_1", R2_3_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_3_2", R2_3_2C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_3_3", R2_3_3C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_3_4", R2_3_4C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_3_5", R2_3_5C.Text);
                                        SqlCommand.Parameters.AddWithValue("@R2_3_6", R2_3_6C.Text);
                                        SqlCommand.Parameters.AddWithValue("@RespID", RespID);

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    lblValidMsg.Text = "Thank you.";
                                    lblSubmitDbStatus.Text = "Responsiveness data entry successful";

                                }
                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                    lblSubmitDbStatus.Text = "Responsiveness data entry failed";
                                }

                                ClearTextBoxes();
                            }
                        }
                        reader.Close();

                    }

                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
             //   }
                //else
                //{

                //}
                        
        }

        /// <summary>
        ///     Submits the data entered to the database.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SaveSubmit_Click(object sender, EventArgs e)
        {
            int r1 = 4, r2 = 4, r3 = 4, r4 = 4, r5 = 4, r6 = 4, r7 = 4, r8 = 4, r9 = 4, r10 = 4, r11 = 4, r12 = 4;
            bool isValid = true;

            TextBox[] rScore = new TextBox[] { R1_1, R1_2, R1_3, R2_1, R2_2_1, R2_2_2, R2_3_1, R2_3_2, R2_3_3, R2_3_4, R2_3_5, R2_3_6 };
            TextBox[] rComment = new TextBox[] { R1_1C, R1_2C, R1_3C, R2_1C, R2_2_1C, R2_2_2C, R2_3_1C, R2_3_2C, R2_3_3C, R2_3_4C, R2_3_5C, R2_3_6C };

            double[] rScoreArray = new double[rScore.Length];

            ///  For loop to check if value is not N/A, if not N/A
            ///  convert to Double
            ///
            for (int i = 0; i < rScore.Length; i++)
            {
                rScore[i].ToString().ToUpper();

                if (rScore[i].Text == null)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append(rScore[i].ID + " score cannot be empty (Enter \"N/A\" where applicable)!" + "<br />");

                    lblValidInMsg.ForeColor = System.Drawing.Color.Red;
                    lblValidInMsg.Text = sb.ToString();
                }

                else if(((Convert.ToDouble(rScore[i].Text) <= 2) && (Convert.ToDouble(rScore[i].Text) > 0)) && rComment[i].Text == null)
                {
                    StringBuilder sb = new StringBuilder();
                    sb.Append(rScore[i].ID + " comment must be entered!" + "<br />");

                    lblValidInMsg.ForeColor = System.Drawing.Color.Red;
                    lblValidInMsg.Text = sb.ToString();
                }

                else if (rScore[i].Text == "N/A")
                {
                    rScoreArray[i] = -3.00;
                }

                else if (rScore[i].Text != "N/A")
                {
                    rScoreArray[i] = Convert.ToDouble(rScore[i].Text);
                    isValid = true;
                }
            }      
             
           if(isValid)
            {
                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string InsertR = "INSERT INTO dbo.[Responsiveness](UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";
                    SqlConnection SqlConnection1 = new SqlConnection(Shared.SqlConnString);
                    SqlCommand sqlCommand1 = new SqlCommand(InsertR, SqlConnection1);
                    sqlCommand1.Parameters.AddWithValue("@UserDivID", Session["UserDivID"].ToString());
                    sqlCommand1.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
                    sqlCommand1.Parameters.AddWithValue("@MonthNow", Session["MonthNow"].ToString());
                    sqlCommand1.Parameters.AddWithValue("@YearNow", Session["YearNow"].ToString());
                    //sqlCommand1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

                    using (SqlConnection1)
                    {
                        try
                        {
                            SqlConnection1.Open();
                            sqlCommand1.ExecuteNonQuery();
                        }

                        catch (Exception ex)
                        {
                            lblSubmitDbStatusFalse.Text = ex.Message;
                        }
                    }

                    SqlConnection SqlConnection2 = new SqlConnection(Shared.SqlConnString);
                    using (SqlConnection2)
                    {
                        try
                        {
                            SqlCommand getRID = new SqlCommand("SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "' AND CMID = '" + Session["SelectedCMID"].ToString() + "' AND Month = '" + Session["MonthNow"].ToString() + "' AND Year = '" + Session["YearNow"].ToString() + "'", SqlConnection2);
                            SqlConnection2.Open();

                            SqlDataReader reader = getRID.ExecuteReader();
                            if (reader.HasRows)
                            {
                                while (reader.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", reader[0]));
                                    RespID = Convert.ToInt32(reader[0].ToString());
                                }
                            }
                            else
                            {
                                Console.WriteLine("No rows found.");
                            }
                            reader.Close();
                        }
                        catch (Exception ex)
                        {
                            // TODO: Use label to print any exception occurred at this stage
                            lblSubmitDbStatusFalse.Text = ex.Message;
                        }
                    }

                    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    string InsertIntoRScore = "INSERT INTO dbo.[ResponsivenessScore](R1_1, R1_2, R1_3, R2_1, R2_2_1, R2_2_2, R2_3_1, R2_3_2, R2_3_3, R2_3_4, R2_3_5, R2_3_6, ResponsivenessID) VALUES (@R1_1, @R1_2, @R1_3, @R2_1, @R2_2_1, @R2_2_2, @R2_3_1, @R2_3_2, @R2_3_3, @R2_3_4, @R2_3_5, @R2_3_6, @RespID)";
                    SqlConnection SqlConnection3 = new SqlConnection(Shared.SqlConnString);
                    SqlCommand sqlCommand3 = new SqlCommand(InsertIntoRScore, SqlConnection3);
                    double[] respScore = new double[rScore.Length];

                    for (int j = 0; j < rScore.Length; j++)
                    {
                        double paramValue;

                        if (rScore[j].Text == "N/A")
                            paramValue = -3.00;
                        else
                            paramValue = Convert.ToDouble(rScore[j].Text);

                        respScore[j] = paramValue;
                    }

                    sqlCommand3.Parameters.AddWithValue("@R1_1", respScore[0]);
                    sqlCommand3.Parameters.AddWithValue("@R1_2", respScore[1]);
                    sqlCommand3.Parameters.AddWithValue("@R1_3", respScore[2]);
                    sqlCommand3.Parameters.AddWithValue("@R2_1", respScore[3]);
                    sqlCommand3.Parameters.AddWithValue("@R2_2_1", respScore[4]);
                    sqlCommand3.Parameters.AddWithValue("@R2_2_2", respScore[5]);
                    sqlCommand3.Parameters.AddWithValue("@R2_3_1", respScore[6]);
                    sqlCommand3.Parameters.AddWithValue("@R2_3_2", respScore[7]);
                    sqlCommand3.Parameters.AddWithValue("@R2_3_3", respScore[8]);
                    sqlCommand3.Parameters.AddWithValue("@R2_3_4", respScore[9]);
                    sqlCommand3.Parameters.AddWithValue("@R2_3_5", respScore[10]);
                    sqlCommand3.Parameters.AddWithValue("@R2_3_6", respScore[11]);

                    sqlCommand3.Parameters.AddWithValue("@RespID", RespID);

                    using (SqlConnection3)
                    {
                        try
                        {
                            SqlConnection3.Open();
                            sqlCommand3.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            lblSubmitDbStatusFalse.Text = ex.Message;
                        }
                }

                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                string InsertIntoRComment = "INSERT INTO dbo.[ResponsivenessComment](RC1_1, RC1_2, RC1_3, RC2_1, RC2_2_1, RC2_2_2, RC2_3_1, RC2_3_2, RC2_3_3, RC2_3_4, RC2_3_5, RC2_3_6, ResponsivenessID) VALUES (@R1_1, @R1_2, @R1_3, @R2_1, @R2_2_1, @R2_2_2, @R2_3_1, @R2_3_2, @R2_3_3, @R2_3_4, @R2_3_5, @R2_3_6, @RespID)";
                SqlConnection SqlConnection4 = new SqlConnection(Shared.SqlConnString);
                SqlCommand sqlCommand4 = new SqlCommand(InsertIntoRComment, SqlConnection4);

                sqlCommand4.Parameters.AddWithValue("@R1_1", R1_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@R1_2", R1_2C.Text);
                sqlCommand4.Parameters.AddWithValue("@R1_3", R1_3C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_1", R2_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_2_1", R2_2_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_2_2", R2_2_2C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_3_1", R2_3_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_3_2", R2_3_2C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_3_3", R2_3_3C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_3_4", R2_3_4C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_3_5", R2_3_5C.Text);
                sqlCommand4.Parameters.AddWithValue("@R2_3_6", R2_3_6C.Text);
                sqlCommand4.Parameters.AddWithValue("@RespID", RespID);

                using (SqlConnection4)
                {
                    try
                    {
                        SqlConnection4.Open();
                        sqlCommand4.ExecuteNonQuery();
                        //lblValidMsg.Text = "Thank you.";
                        lblSubmitDbStatusTrue.Text = "Data entry successful.";
                    }
                    catch (Exception ex)
                    {
                        lblSubmitDbStatusFalse.Text = ex.Message;
                        lblSubmitDbStatusFalse.Text = "Data entry unsuccessful.";
                    }
                }
            }

            // ClearTextBoxes();
        }

        protected void submit_r1_1_comment_Click(object sender, EventArgs e)
        {
            int RespID = 0;
            string r1_1_comment = R1_1C.Text;
            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            using (sqlConn)
            {
                try
                {
                    sqlConn.Open();

                    SqlCommand getRespID = new SqlCommand("SELECT ResponsivenessID FROM dbo.[Responsiveness] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn);
                    

                    SqlDataReader reader = getRespID.ExecuteReader();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Console.WriteLine(String.Format("{0}", reader[0]));
                            RespID = int.Parse(reader[0].ToString());
                           
                        }

                        SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                        SqlCommand SqlCommand;

                        using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                        {
                            try
                            {                                
                                using (SqlCommand = new SqlCommand("UPDATE dbo.[ResponsivenessComment] SET RC1_1 = @R1_1C WHERE ResponsivenessID = '" + RespID + "'", conn))
                                {
                                    conn.Open();
                                    SqlCommand.Parameters.AddWithValue("@R1_1C", R1_1C.Text);
                                    SqlCommand.ExecuteNonQuery();
                                }
                            }
                            catch (Exception ex)
                            {
                                Response.Write(ex.ToString());
                            }
                        }
                    }
                    else
                    {
                        string InsertR = "INSERT INTO dbo.[Responsiveness](UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";
                        SqlConnection SqlConnection1 = new SqlConnection(Shared.SqlConnString);
                        SqlCommand sqlCommand1 = new SqlCommand(InsertR, SqlConnection1);
                        sqlCommand1.Parameters.AddWithValue("@UserDivID", Session["UserDivID"].ToString());
                        sqlCommand1.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
                        sqlCommand1.Parameters.AddWithValue("@MonthNow", Session["MonthNow"].ToString());
                        sqlCommand1.Parameters.AddWithValue("@YearNow", Session["YearNow"].ToString());
                        //sqlCommand1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

                        using (SqlConnection1)
                        {
                            try
                            {
                                SqlConnection1.Open();
                                sqlCommand1.ExecuteNonQuery();
                            }

                            catch (Exception ex)
                            {
                                lblSubmitDbStatusFalse.Text = ex.Message;
                            }
                        }

                        SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                        SqlCommand SqlCommand;

                        using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                        {
                            try
                            {
                                SqlConnection.Open();

                                using (SqlCommand = new SqlCommand("INSERT INTO dbo.[ResponsivenessComment](R1_1, ResponsivenessID, Status) VALUES (@R1_1, @RespID, 1)", conn))
                                {
                                    conn.Open();
                                    SqlCommand.Parameters.AddWithValue("@R1_1", R1_1C.Text);
                                    SqlCommand.Parameters.AddWithValue("@RespID", RespID);

                                    SqlCommand.ExecuteNonQuery();
                                }

                            }
                            catch (Exception ex)
                            {
                                Response.Write(ex.ToString());
                            }
                        }
                    }
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }
        }

        protected void submit_r2_3_6_comment_Click(object sender, EventArgs e)
        {
            r2_3_6_comment = R2_3_6C.Text;
        }

        protected void submit_r2_3_5_comment_Click(object sender, EventArgs e)
        {
            r2_3_5_comment = R2_3_5C.Text;
        }

        protected void submit_r2_3_4_comment_Click(object sender, EventArgs e)
        {
            r2_3_4_comment = R2_3_4C.Text;
        }

        protected void submit_r2_3_3_comment_Click(object sender, EventArgs e)
        {
            r2_3_3_comment = R2_3_3C.Text;
        }

        protected void submit_r2_3_2_comment_Click(object sender, EventArgs e)
        {
            r2_3_2_comment = R2_3_2C.Text;
        }

        protected void submit_r2_3_1_comment_Click(object sender, EventArgs e)
        {
            r2_3_1_comment = R2_3_1C.Text;
        }

        protected void submit_r2_2_2_comment_Click(object sender, EventArgs e)
        {
            r2_2_2_comment = R2_2_2C.Text;
        }

        protected void submit_r2_2_1_comment_Click(object sender, EventArgs e)
        {
            r2_2_1_comment = R2_2_1C.Text;
        }

        protected void submit_r2_1_comment_Click(object sender, EventArgs e)
        {
            r2_1_comment = R2_1C.Text;
        }

        protected void submit_r1_2_comment_Click(object sender, EventArgs e)
        {
            r1_2_comment = R1_2C.Text;
        }

        protected void submit_r1_3_comment_Click(object sender, EventArgs e)
        {
            r1_3_comment = R1_3C.Text;
        }

        protected void btnCancelEntry_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        private SqlCommand GetScoreWithCriteriaID(int CriteriaID)
        {
            SqlConnection conn = new SqlConnection(Shared.SqlConnString);

            string query = "SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UserID AND UC.CriteriaID = @CriteriaID AND UC.CMID = @CMID AND UDI.DivID = @DivID";

            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@UserID", Session["UserID"].ToString());
            cmd.Parameters.AddWithValue("@CriteriaID", CriteriaID);
            cmd.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
            cmd.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

            return cmd;
        }

        private void ClearTextBoxes()
        {
            R1_1.Text = null;
            R1_2.Text = null;
            R1_3.Text = null;
            R2_1.Text = null;
            R2_2_1.Text = null;
            R2_2_2.Text = null;
            R2_3_1.Text = null;
            R2_3_2.Text = null;
            R2_3_3.Text = null;
            R2_3_4.Text = null;
            R2_3_5.Text = null;
            R2_3_6.Text = null;

            R1_1C.Text = null;
            R1_2C.Text = null;
            R1_3C.Text = null;
            R2_1C.Text = null;
            R2_2_1C.Text = null;
            R2_2_2C.Text = null;
            R2_3_1C.Text = null;
            R2_3_2C.Text = null;
            R2_3_3C.Text = null;
            R2_3_4C.Text = null;
            R2_3_5C.Text = null;
            R2_3_6C.Text = null;
        }

        /// <summary>
        ///     Creates a SQL query to update the score of Responsiveness for different TextBox control.
        /// </summary>
        /// <param name="r">TextBox control for Responsiveness score.</param>
        /// <param name="hasNA">Indicates if the Text hold by the Responsiveness score TextBox control has a value of "N/A".</param>
        /// <returns></returns>
        private string UpdateSetScoreSqlQuery(TextBox r, bool hasNA)
        {
            double score; 
            bool isDraft = false;

            // Set value as -3 in database if N/A was entered by user in data entry interface
            if (hasNA)
            {
                score = -3.00;
                isDraft = true;
            }
            else
            {
                score = Convert.ToDouble(r.Text);
            }

            int draftStatus = Convert.ToInt32(isDraft);

            string query = "UPDATE dbo.[ResponsivenessScore] SET " + r.ID + " = " + score + ", Status = " + draftStatus + " WHERE ResponsivenessID = " + RespID + ";";

            return query;
        }

    }
}