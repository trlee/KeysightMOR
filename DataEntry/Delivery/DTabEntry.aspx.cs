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

namespace KeysightMOR.DataEntry.Delivery
{
    public partial class DTabEntry1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadData();
            }
                

        }

        private void LoadData()
        {
            Label1.Text = Session["SelectedCMName"].ToString();
            Label2.Text = Session["SelectedDivisionName"].ToString();
            SqlConnection conn;

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD1_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD1_1.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD1_1.Parameters.AddWithValue("@UCCriteriaID", 1);
                    getD1_1.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD1_1.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD1_1.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 1", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D1_1 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    //Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D1_1.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D1_1.Enabled = false;
                            D1_1.Text = "N/A";
                            RangeValidator1.Enabled = false;
                        }
                    }

                    if (!reader.IsClosed)
                        reader.Close();

                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD1_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD1_2.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD1_2.Parameters.AddWithValue("@UCCriteriaID", 2);
                    getD1_2.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD1_2.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD1_2.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 2", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D1_2 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D1_2.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D1_2.Enabled = false;
                            D1_2.Text = "N/A";
                            RangeValidator2.Enabled = false;
                        }
                    }

                    if (!reader.IsClosed)
                        reader.Close();

                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD1_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD1_3.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD1_3.Parameters.AddWithValue("@UCCriteriaID", 3);
                    getD1_3.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD1_3.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD1_3.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 3", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D1_3 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    //Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D1_3.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D1_3.Enabled = false;
                            D1_3.Text = "N/A";
                            RangeValidator3.Enabled = false;
                        }
                    }

                    if (!reader.IsClosed)
                        reader.Close();

                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }


            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD1_4 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD1_4.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD1_4.Parameters.AddWithValue("@UCCriteriaID", 4);
                    getD1_4.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD1_4.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD1_4.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 4", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D1_4 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D1_4.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D1_4.Enabled = false;
                            D1_4.Text = "N/A";
                            RangeValidator4.Enabled = false;
                        }
                    }

                    if (!reader.IsClosed)
                        reader.Close();

                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }


            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD2_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD2_1.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD2_1.Parameters.AddWithValue("@UCCriteriaID", 5);
                    getD2_1.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD2_1.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD2_1.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 5", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D2_1 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    //Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D2_1.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D2_1.Enabled = false;
                            D2_1.Text = "N/A";
                            RangeValidator5.Enabled = false;
                        }
                    }

                    if (!reader.IsClosed)
                        reader.Close();

                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }


            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD2_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD2_2.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD2_2.Parameters.AddWithValue("@UCCriteriaID", 6);
                    getD2_2.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD2_2.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD2_2.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 6", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D2_2 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    //Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D2_2.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D2_2.Enabled = false;
                            D2_2.Text = "N/A";
                            RangeValidator6.Enabled = false;
                        }
                    }

                    if (!reader.IsClosed)
                        reader.Close();

                }
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            conn = new SqlConnection(Shared.SqlConnString);
            using (conn)
            {
                try
                {
                    conn.Open();

                    SqlCommand getD2_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = @UDIDivID", conn);
                    getD2_3.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD2_3.Parameters.AddWithValue("@UCCriteriaID", 7);
                    getD2_3.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    getD2_3.Parameters.AddWithValue("@UDIDivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                    //Response.Write("UserID: " + Session["UserID"].ToString() + "<br />");
                    //Response.Write("UserCriteriaID: " + 1 + "<br />");
                    //Response.Write("UCCMID: " + Session["SelectedCMID"].ToString() + "<br />");
                    //Response.Write("UDIDivID: " + Session["SelectedDivisionID"].ToString() + "<br />");
                    SqlDataReader reader = getD2_3.ExecuteReader();

                    int DeliveryID = 0;

                    using (reader)
                    {
                        if (reader.HasRows)
                        {
                            // Response.Write("Reader HasRows" + "<br />");

                            using (SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString))
                            {
                                using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND DeliveryID = 7", sqlConn))
                                {
                                    reader.Close();
                                    // Response.Write("Reader Closed" + reader.IsClosed.ToString() +"<br />");

                                    sqlConn.Open();

                                    SqlDataReader writer = getDeliID.ExecuteReader();
                                    bool writer_HasRows = writer.HasRows;

                                    if (writer.HasRows)
                                    {
                                        //Response.Write("Writer HasRows" + "<br />");

                                        while (writer.Read())
                                        {
                                            // Console.WriteLine(String.Format("{0}", writer[0]));
                                            DeliveryID = Convert.ToInt32(writer[0].ToString());
                                        }

                                        using (SqlCommand getRecord = new SqlCommand("SELECT D2_3 FROM dbo.[DeliveryScore] WHERE DeliveryID = " + DeliveryID + "", sqlConn))
                                        {
                                            try
                                            {
                                                writer.Close();

                                                SqlDataReader record = getRecord.ExecuteReader();

                                                if (record.HasRows)
                                                {
                                                    Response.Write("Record HasRows" + "<br />");
                                                    while (record.Read())
                                                    {
                                                        // Console.WriteLine(String.Format("{0}", record[0]));
                                                        D2_3.Text = record[0].ToString();
                                                    }
                                                }
                                            }
                                            catch (Exception ex)
                                            {
                                                Response.Write(ex.ToString());
                                            }

                                        }

                                        writer.Close();
                                    }
                                }
                            }
                        }
                        else
                        {
                            D2_3.Enabled = false;
                            D2_3.Text = "N/A";
                            RangeValidator7.Enabled = false;
                        }
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

        //====================================================================//
        protected void SaveDraft_Click(object sender, EventArgs e)
        {
            //NEW VERSION BELOW
            if (Page.IsValid)
            {
                int DeliveryID = 0;
                double d1 = 99, d2 = 99, d3 = 99, d4 = 99, d5 = 99, d6 = 99, d7 = 99;

                double[] dScore = new double[7];
                TextBox[] dScoreTxtBox = new TextBox[] { D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3 };

                bool HasRows = false;

                for (int i = 0; i < dScoreTxtBox.Length; i++)
                {
                    if (dScoreTxtBox[i].Text.ToUpper() != "N/A")
                    {
                        dScore[i] = Convert.ToDouble(dScoreTxtBox[i].Text);
                    }
                    else
                    {
                        dScore[i] = -3.00;
                    }
                }

                ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
                SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
                using (sqlConn)
                {
                    try
                    {
                        SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + ";", sqlConn);
                        sqlConn.Open();

                        SqlDataReader reader = getDeliID.ExecuteReader();

                        if (reader.HasRows)
                        {
                            HasRows = true;

                            while (reader.Read())
                            {
                                // Console.WriteLine(String.Format("{0}", reader[0]));
                                DeliveryID = Convert.ToInt32(reader[0].ToString());
                            }
                        }

                        if (HasRows)
                        {
                            Response.Write("HasRows true" + "<br />");

                            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                try
                                {
                                    conn.Open();
                                    //Response.Write("conn opened" + "<br />");

                                    string QueryUpdate = "";

                                    for (int j = 0; j < dScoreTxtBox.Length; j++)
                                    {
                                        for (int k = 1; k <= dScoreTxtBox.Length; k++)
                                        {
                                            if (dScoreTxtBox[j].Text.ToUpper() == "N/A")
                                            {
                                                QueryUpdate += "UPDATE dbo.[DeliveryScore] SET " + dScoreTxtBox[j].ID + " = -3 WHERE DeliveryID = " + k + " ;";
                                            }
                                            else
                                            {
                                                QueryUpdate += "UPDATE dbo.[DeliveryScore] SET " + dScoreTxtBox[j].ID + " = " + dScore[j] + " WHERE DeliveryID = " + k + " ;";
                                            }
                                        }
                                    }

                                    //Response.Write("QueryUpdate" + QueryUpdate + "<br />");

                                    using (SqlCommand = new SqlCommand(QueryUpdate, conn))
                                    {
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    lblValidMsg.Text = "Thank you.";
                                    lblSubmitDbStatusTrue.Text = "Delivery data entry successful";

                                }
                                catch (Exception ex)
                                {
                                    Response.Write(ex.ToString());
                                    lblSubmitDbStatusFalse.Text = "Delivery data entry unsuccessful";
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
            else // if !Page.IsValid
            {
                lblValidInMsg.Text = null;
                int DeliID = 0;

                SqlCommand SqlCommand;
                SqlConnection conn;

                string SqlQuery = "INSERT INTO [dbo].DeliveryScore(D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3, DeliveryID) VALUES (@D1_1, @D1_2, @D1_3, @D1_4, @D2_1, @D2_2, @D2_3, @DeliID)";
                string InsertQuery = "INSERT INTO [dbo].Delivery(UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";

                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    using (SqlCommand cmd1 = new SqlCommand(InsertQuery, conn))
                    {
                        try
                        {
                            conn.Open();

                            cmd1.Parameters.AddWithValue("@UserDivID", Convert.ToInt32(Session["UserDivID"].ToString()));
                            cmd1.Parameters.AddWithValue("@CMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                            cmd1.Parameters.AddWithValue("@MonthNow", Convert.ToInt32(Session["MonthNow"].ToString()));
                            cmd1.Parameters.AddWithValue("@YearNow", Convert.ToInt32(Session["YearNow"].ToString()));
                            //cmd1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

                            cmd1.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.ToString());
                        }
                    }
                }

                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        using (SqlCommand get = new SqlCommand("SELECT DeliveryID FROM [dbo].Delivery WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND CMID = " + Convert.ToInt32(Session["SelectedCMID"].ToString()) + " AND Month = " + Convert.ToInt32(Session["MonthNow"].ToString()) + " AND Year = " + Convert.ToInt32(Session["YearNow"].ToString()) + ";", conn))
                        {

                            using (SqlDataReader dr = get.ExecuteReader())
                            {
                                dr.Read();
                                DeliID = Convert.ToInt32(dr[0].ToString());
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        SqlCommand = new SqlCommand(SqlQuery, conn);

                        if (D1_1.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_1", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_1", D1_1.Text);

                        if (D1_2.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_2", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_2", D1_2.Text);

                        if (D1_3.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_3", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_3", D1_3.Text);

                        if (D1_4.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_4", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_4", D1_4.Text);

                        if (D2_1.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_1", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_1", D2_1.Text);

                        if (D2_2.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_2", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_2", D2_2.Text);

                        if (D2_3.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_3", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_3", D2_2.Text);

                        SqlCommand.Parameters.AddWithValue("@DeliID", DeliID);

                        SqlCommand.ExecuteNonQuery();

                        lblSubmitDbStatusTrue.Text = "Data entry successful.";
                        lblValidInMsg.Text = null;

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());

                        lblSubmitDbStatusFalse.Text = "Data entry unsuccessful.";
                    }
                }
            }
        }

        //==============================================================================//
        protected void SaveSubmit_Click(object sender, EventArgs e)
        {
            /*if (Page.IsValid)
            {
                lblValidMsg.Text = "Thank you.";
            }
            else
            {
            }*/

            bool D1_1_HasFilled = D1_1.Text == null ? true : false;
            bool D1_2_HasFilled = D1_2.Text == null ? true : false;
            bool D1_3_HasFilled = D1_3.Text == null ? true : false;
            bool D1_4_HasFilled = D1_4.Text == null ? true : false;
            bool D2_1_HasFilled = D2_1.Text == null ? true : false;
            bool D2_2_HasFilled = D2_2.Text == null ? true : false;
            bool D2_3_HasFilled = D2_3.Text == null ? true : false;

            bool DTextBoxAllFilled = D1_1_HasFilled && D1_2_HasFilled && D1_3_HasFilled && D1_4_HasFilled && D2_1_HasFilled && D2_2_HasFilled && D2_3_HasFilled ? true : false;

            if (!DTextBoxAllFilled)
            {
                lblValidInMsg.ForeColor = System.Drawing.Color.Red;
                lblValidInMsg.Text = "Please fill in all the scores!";
            }
            else
            {
                lblValidInMsg.Text = null;
                int DeliID = 0;

                SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                SqlCommand SqlCommand;

                string SqlQuery = "INSERT INTO [dbo].DeliveryScore(D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3, DeliveryID) VALUES (@D1_1, @D1_2, @D1_3, @D1_4, @D2_1, @D2_2, @D2_3, @DeliID)";
                string InsertQuery = "INSERT INTO [dbo].Delivery(UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";

                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    conn.Open();

                    using (SqlCommand cmd1 = new SqlCommand(InsertQuery, conn))
                    {
                        cmd1.Parameters.AddWithValue("@UserDivID", Convert.ToInt32(Session["UserDivID"].ToString()));
                        cmd1.Parameters.AddWithValue("@CMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                        cmd1.Parameters.AddWithValue("@MonthNow", Convert.ToInt32(Session["MonthNow"].ToString()));
                        cmd1.Parameters.AddWithValue("@YearNow", Convert.ToInt32(Session["YearNow"].ToString()));
                        cmd1.Parameters.AddWithValue("@DivID", Convert.ToInt32(Session["SelectedDivisionID"].ToString()));

                        cmd1.ExecuteNonQuery();
                    }

                    using (SqlCommand get = new SqlCommand("SELECT DeliveryID FROM [dbo].Delivery WHERE UserDivID = " + Convert.ToInt32(Session["UserDivID"].ToString()) + " AND CMID = " + Convert.ToInt32(Session["SelectedCMID"].ToString()) + " AND Month = " + Convert.ToInt32(Session["MonthNow"].ToString()) + " AND Year = " + Convert.ToInt32(Session["YearNow"].ToString()) + ";" , conn))
                    {
                        using (SqlDataReader dr = get.ExecuteReader())
                        {
                            dr.Read();
                            DeliID = Convert.ToInt32(dr[0].ToString());
                        }
                    }

                    try
                    {
                        SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                        if (D1_1.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_1", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_1", D1_1.Text);

                        if (D1_2.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_2", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_2", D1_2.Text);

                        if (D1_3.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_3", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_3", D1_3.Text);

                        if (D1_4.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_4", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_4", D1_4.Text);

                        if (D2_1.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_1", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_1", D2_1.Text);

                        if (D2_2.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_2", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_2", D2_2.Text);

                        if (D2_3.Text.ToUpper() == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_3", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_3", D2_2.Text);

                        SqlCommand.Parameters.AddWithValue("@DeliID", DeliID);

                        SqlCommand.ExecuteNonQuery();

                        lblSubmitDbStatusTrue.Text = "Data entry successful.";
                        lblValidInMsg.Text = null;

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());

                        lblSubmitDbStatusFalse.Text = "Data entry unsuccessful.";
                    }
                }
            }
        }

        protected void Cancel1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/Index.aspx");
        }
    }
}