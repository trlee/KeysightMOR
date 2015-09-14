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
            Label1.Text = Session["SelectedCMName"].ToString();
            Label2.Text = Session["SelectedDivisionName"].ToString();

            SqlConnection sqlConn1 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn1)
            {
                try
                {
                    sqlConn1.Open();

                    SqlCommand getD1_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = @UDIUserID AND UC.CriteriaID = @UCCriteriaID AND UC.CMID = @UCCMID AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn1);
                    getD1_1.Parameters.AddWithValue("@UDIUserID", Convert.ToInt32(Session["UserID"].ToString()));
                    getD1_1.Parameters.AddWithValue("@UCCriteriaID", 13);
                    getD1_1.Parameters.AddWithValue("@UCCMID", Convert.ToInt32(Session["SelectedCMID"].ToString()));
                    SqlDataReader reader = getD1_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D1_1 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D1_1.Text = record[0].ToString();
                                            }                                            
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
                            }
                        }
                    }
                    else
                    {
                        D1_1.Enabled = false;
                        D1_1.Text = "N/A";
                        RangeValidator1.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn2 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn2)
            {
                try
                {
                    SqlCommand getD1_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 14 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn2);
                    sqlConn2.Open();

                    SqlDataReader reader = getD1_2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D1_2 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D1_2.Text = record[0].ToString();
                                            }
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
                            }
                        }
                    }
                    else
                    {
                        D1_2.Enabled = false;
                        D1_2.Text = "N/A";
                        RangeValidator2.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn3 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn3)
            {
                try
                {
                    SqlCommand getD1_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 15 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn3);
                    sqlConn3.Open();

                    SqlDataReader reader = getD1_3.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D1_3 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D1_3.Text = record[0].ToString();
                                            }
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
                            }
                        }
                    }
                    else
                    {
                        D1_3.Enabled = false;
                        D1_3.Text = "N/A";
                        RangeValidator3.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn4 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn4)
            {
                try
                {
                    SqlCommand getD1_4 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 16 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn4);
                    sqlConn4.Open();

                    SqlDataReader reader = getD1_4.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D1_4 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D1_4.Text = record[0].ToString();
                                            }
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
                            }
                        }
                    }
                    else
                    {
                        D1_4.Enabled = false;
                        D1_4.Text = "N/A";
                        RangeValidator4.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn5 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn5)
            {
                try
                {
                    SqlCommand getD2_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 17 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn5);
                    sqlConn5.Open();

                    SqlDataReader reader = getD2_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D2_1 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D2_1.Text = record[0].ToString();
                                            }
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
                            }
                        }
                    }
                    else
                    {
                        D2_1.Enabled = false;
                        D2_1.Text = "N/A";
                        RangeValidator5.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn6 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn6)
            {
                try
                {
                    SqlCommand getD2_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 18 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn6);
                    sqlConn6.Open();

                    SqlDataReader reader = getD2_2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D2_2 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D2_2.Text = record[0].ToString();
                                            }
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
                            }
                        }
                    }
                    else
                    {
                        D2_2.Enabled = false;
                        D2_2.Text = "N/A";
                        RangeValidator6.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn7 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn7)
            {
                try
                {
                    SqlCommand getD2_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 19 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn7);
                    sqlConn7.Open();

                    SqlDataReader reader = getD2_3.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string DeliveryID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getDeliID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    DeliveryID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT D2_3 FROM dbo.[DeliveryScore] WHERE DeliveryID = '" + DeliveryID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                D2_3.Text = record[0].ToString();
                                            }
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
                            }
                        }
                    }
                    else
                    {
                        D2_3.Enabled = false;
                        D2_3.Text = "N/A";
                        RangeValidator7.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }
        }


        //====================================================================//
        protected void SaveDraft_Click(object sender, EventArgs e)
        {
            /*if (Page.IsValid)
            {
                lblValidMsg.Text = "Thank you.";
            }
            else
            {
            }*//*

            string DeliID = "";

            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
            SqlCommand SqlCommand;
            string SqlQuery = "INSERT INTO [dbo].DeliveryScore(D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3, DeliveryID) VALUES (@D1_1, @D1_2, @D1_3, @D1_4, @D2_1, @D2_2, @D2_3, '1')";
            string InsertQuery = "INSERT INTO [dbo].Delivery(UserDivID, CMID, Month, Year) VALUES (@UserDiv, @CM, @Month, @Year)";

            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                SqlConnection.Open();
                using (SqlCommand cmd1 = new SqlCommand(InsertQuery, conn))
                {

                    conn.Open();

                    cmd1.Parameters.AddWithValue("@UserDiv", Session["userdivid"].ToString());
                    cmd1.Parameters.AddWithValue("@CM", "1");
                    cmd1.Parameters.AddWithValue("@Month", "12");
                    cmd1.Parameters.AddWithValue("@Year", "2015");

                    cmd1.ExecuteNonQuery();

                    using (SqlCommand get = new SqlCommand("SELECT DeliveryID FROM [dbo].Delivery WHERE UserDivID =" + Session["userdivid"].ToString(), conn))
                    {

                        using (SqlDataReader dr = get.ExecuteReader())
                        {
                            dr.Read();
                            DeliID = dr[0].ToString();
                        }
                    }
                }
                try
                {
                    SqlConnection.Open();

                    SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                    SqlCommand.Parameters.AddWithValue("@D1_1", D1_1.Text);
                    SqlCommand.Parameters.AddWithValue("@D1_2", D1_2.Text);
                    SqlCommand.Parameters.AddWithValue("@D1_3", D1_3.Text);
                    SqlCommand.Parameters.AddWithValue("@D1_4", D1_4.Text);
                    SqlCommand.Parameters.AddWithValue("@D2_1", D2_1.Text);
                    SqlCommand.Parameters.AddWithValue("@D2_2", D2_2.Text);
                    SqlCommand.Parameters.AddWithValue("@D2_3", D2_3.Text);

                    SqlCommand.ExecuteNonQuery();

                    lblSubmitDbStatusTrue.Text = "Delivery data entry successful";
                    lblValidInMsg.Text = null;

                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());

                    lblSubmitDbStatusFalse.Text = "Delivery data entry unsuccessful";
                }

                D1_1.Text = null;
                D1_2.Text = null;
                D1_3.Text = null;
                D1_4.Text = null;
                D2_1.Text = null;
                D2_2.Text = null;
                D2_3.Text = null;
            }*/

            //NEW VERSION BELOW
            if (Page.IsValid)
            {
                string DeliveryID = "";
                double d1 = 99, d2 = 99, d3 = 99, d4 = 99, d5 = 99, d6 = 99, d7 = 99;
                if (D1_1.Text != "N/A")
                {
                    d1 = Convert.ToDouble(D1_1.Text);
                    d1.ToString("0.0");
                }
                if (D1_2.Text != "N/A")
                {
                    d2 = Convert.ToDouble(D1_2.Text);
                    d2.ToString("0.0");
                }
                if (D1_3.Text != "N/A")
                {
                    d3 = Convert.ToDouble(D1_3.Text);
                    d3.ToString("0.0");
                }
                if (D1_4.Text != "N/A")
                {
                    d4 = Convert.ToDouble(D1_4.Text);
                    d4.ToString("0.0");
                }
                if (D2_1.Text != "N/A")
                {
                    d5 = Convert.ToDouble(D2_1.Text);
                    d5.ToString("0.0");
                }
                if (D2_2.Text != "N/A")
                {
                    d6 = Convert.ToDouble(D2_2.Text);
                    d6.ToString("0.0");
                }
                if (D2_3.Text != "N/A")
                {
                    d7 = Convert.ToDouble(D2_3.Text);
                    d7.ToString("0.0");
                }
                
                SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
                using (sqlConn)
                {
                    try
                    {
                        SqlCommand getDeliID = new SqlCommand("SELECT DeliveryID FROM dbo.[Delivery] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn);
                        sqlConn.Open();

                        SqlDataReader reader = getDeliID.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(String.Format("{0}", reader[0]));
                                DeliveryID = reader[0].ToString();
                            }

                            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                try
                                {
                                    conn.Open();
                                    if (D1_1.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_1 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_1 = '" + d1 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (D1_2.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_2 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_2 = '" + d2 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (D1_3.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_3 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_3 = '" + d3 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (D1_4.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_4 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D1_4 = '" + d4 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (D2_1.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D2_1 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D2_1 = '" + d5 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (D2_2.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D2_2 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D2_2 = '" + d6 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (D2_3.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D2_3 = -3 WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[DeliveryScore] SET D2_3 = '" + d7 + "' WHERE DeliveryID = '" + DeliveryID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
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
                        else
                        {
                            lblValidInMsg.Text = null;
                            string DeliID = "";

                            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;

                            string SqlQuery = "INSERT INTO [dbo].DeliveryScore(D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3, DeliveryID) VALUES (@D1_1, @D1_2, @D1_3, @D1_4, @D2_1, @D2_2, @D2_3, @DeliID)";
                            string InsertQuery = "INSERT INTO [dbo].Delivery(UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                SqlConnection.Open();
                                using (SqlCommand cmd1 = new SqlCommand(InsertQuery, conn))
                                {
                                    conn.Open();

                                    cmd1.Parameters.AddWithValue("@UserDivID", Session["UserDivID"].ToString());
                                    cmd1.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
                                    cmd1.Parameters.AddWithValue("@MonthNow", Session["MonthNow"].ToString());
                                    cmd1.Parameters.AddWithValue("@YearNow", Session["YearNow"].ToString());
                                    //cmd1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

                                    cmd1.ExecuteNonQuery();


                                }
                                using (SqlCommand get = new SqlCommand("SELECT DeliveryID FROM [dbo].Delivery WHERE UserDivID = '" + Session["UserDivID"].ToString() + "' AND CMID = '" + Session["SelectedCMID"].ToString() + "' AND Month = '" + Session["MonthNow"].ToString() + "' AND Year = " + Session["YearNow"].ToString(), conn))
                                {

                                    using (SqlDataReader dr = get.ExecuteReader())
                                    {
                                        dr.Read();
                                        DeliID = dr[0].ToString();
                                    }
                                }

                                try
                                {

                                    SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                                    if (D1_1.Text == "N/A")
                                        SqlCommand.Parameters.AddWithValue("@D1_1", -3);
                                    else
                                        SqlCommand.Parameters.AddWithValue("@D1_1", D1_1.Text);

                                    if (D1_2.Text == "N/A")
                                        SqlCommand.Parameters.AddWithValue("@D1_2", -3);
                                    else
                                        SqlCommand.Parameters.AddWithValue("@D1_2", D1_2.Text);

                                    if (D1_3.Text == "N/A")
                                        SqlCommand.Parameters.AddWithValue("@D1_3", -3);
                                    else
                                        SqlCommand.Parameters.AddWithValue("@D1_3", D1_3.Text);

                                    if (D1_4.Text == "N/A")
                                        SqlCommand.Parameters.AddWithValue("@D1_4", -3);
                                    else
                                        SqlCommand.Parameters.AddWithValue("@D1_4", D1_4.Text);

                                    if (D2_1.Text == "N/A")
                                        SqlCommand.Parameters.AddWithValue("@D2_1", -3);
                                    else
                                        SqlCommand.Parameters.AddWithValue("@D2_1", D2_1.Text);

                                    if (D2_2.Text == "N/A")
                                        SqlCommand.Parameters.AddWithValue("@D2_2", -3);
                                    else
                                        SqlCommand.Parameters.AddWithValue("@D2_2", D2_2.Text);

                                    if (D2_3.Text == "N/A")
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
                        reader.Close();

                    }

                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            }
            else
            {

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


            if (@D1_1.Text == "" || @D1_2.Text == ""||@D1_3.Text == ""||@D1_4.Text == ""||@D2_1.Text == ""||@D2_2.Text == ""||@D2_3.Text == "")
            {
                lblValidInMsg.Text = "Please fill in all the blank textbox";
            }
            /*else if (@D1_2.Text == "")
            {
                lblValidInMsg.Text = "Please fill in value for 'OTD' in Delivery Template(BRP and Manual)";
            }
            else if (@D1_3.Text == "")
            {
                lblValidInMsg.Text = "Please fill in value for 'Commit' in Delivery Template(BRP and Manual)";
            }
            else if (@D1_4.Text == "")
            {
                lblValidInMsg.Text = "Please fill in value for 'Exception' in Delivery Template(BRP and Manual)";
            }
            else if (@D2_1.Text == "")
            {
                lblValidInMsg.Text = "Please fill in value for 'CRD' in Delivery Template(IODM)";
            }
            else if (@D2_2.Text == "")
            {
                lblValidInMsg.Text = "Please fill in value for 'Commit' in Delivery Template(IODM)";
            }
            else if (@D2_3.Text == "")
            {
                lblValidInMsg.Text = "Please fill in value for 'Exception' in Delivery Template(IODM)";
            }*/
            else
            {
                lblValidInMsg.Text = null;
                string DeliID = "";

                SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                SqlCommand SqlCommand;

                string SqlQuery = "INSERT INTO [dbo].DeliveryScore(D1_1, D1_2, D1_3, D1_4, D2_1, D2_2, D2_3, DeliveryID) VALUES (@D1_1, @D1_2, @D1_3, @D1_4, @D2_1, @D2_2, @D2_3, @DeliID)";
                string InsertQuery = "INSERT INTO [dbo].Delivery(UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";

                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    SqlConnection.Open();
                    using (SqlCommand cmd1 = new SqlCommand(InsertQuery, conn))
                    {
                        conn.Open();

                        cmd1.Parameters.AddWithValue("@UserDivID", Session["UserDivID"].ToString());
                        cmd1.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
                        cmd1.Parameters.AddWithValue("@MonthNow", Session["MonthNow"].ToString());
                        cmd1.Parameters.AddWithValue("@YearNow", Session["YearNow"].ToString());
                        cmd1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

                        cmd1.ExecuteNonQuery();

                        
                    }
                    using (SqlCommand get = new SqlCommand("SELECT DeliveryID FROM [dbo].Delivery WHERE UserDivID = '" + Session["UserDivID"].ToString() + "' AND CMID = '" + Session["SelectedCMID"].ToString() + "' AND Month = '" + Session["MonthNow"].ToString() + "' AND Year = " + Session["YearNow"].ToString() , conn))
                        {
                            
                            using (SqlDataReader dr = get.ExecuteReader())
                            {
                                dr.Read();
                                DeliID = dr[0].ToString();
                            }
                        }

                    try
                    {

                        SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                        if (D1_1.Text == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_1", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_1", D1_1.Text);

                        if (D1_2.Text == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_2", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_2", D1_2.Text);

                        if (D1_3.Text == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_3", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_3", D1_3.Text);

                        if (D1_4.Text == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D1_4", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D1_4", D1_4.Text);

                        if (D2_1.Text == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_1", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_1", D2_1.Text);

                        if (D2_2.Text == "N/A")
                            SqlCommand.Parameters.AddWithValue("@D2_2", -3);
                        else
                            SqlCommand.Parameters.AddWithValue("@D2_2", D2_2.Text);

                        if (D2_3.Text == "N/A")
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

                    D1_1.Text = null;
                    D1_2.Text = null;
                    D1_3.Text = null;
                    D1_4.Text = null;
                    D2_1.Text = null;
                    D2_2.Text = null;
                    D2_3.Text = null;
                }
            }
        }

        protected void Cancel1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/Index.aspx");
        }
    }
}