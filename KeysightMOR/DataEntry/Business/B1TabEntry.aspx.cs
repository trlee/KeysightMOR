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

namespace KeysightMOR.DataEntry.Business
{
    public partial class B1TabEntry1 : System.Web.UI.Page
    {
        string b1_1_1_comment, b1_1_2_comment, b1_1_3_comment, b2_1_1_comment, b2_1_2_comment, b2_1_3_comment, b2_1_4_comment, b2_1_5_comment, b2_2_1_comment;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["SelectedCMName"].ToString();
            Label2.Text = Session["SelectedDivisionName"].ToString();

            SqlConnection sqlConn1 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn1)
            {
                try
                {
                    SqlCommand getB1_1_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 20 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn1);
                    sqlConn1.Open();

                    SqlDataReader reader = getB1_1_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B1_1_1 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B1_1_1.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC1_1_1 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B1_1_1C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B1_1_1.Enabled = false;
                        B1_1_1.Text = "N/A";
                        RangeValidator1.Enabled = false;
                        Comment1.Enabled = false;
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
                    SqlCommand getB1_1_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 21 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn2);
                    sqlConn2.Open();

                    SqlDataReader reader = getB1_1_2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B1_1_2 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B1_1_2.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC1_1_2 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B1_1_2C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B1_1_2.Enabled = false;
                        B1_1_2.Text = "N/A";
                        RangeValidator2.Enabled = false;
                        Comment2.Enabled = false;
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
                    SqlCommand getB2_1_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 22 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn3);
                    sqlConn3.Open();

                    SqlDataReader reader = getB2_1_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_1 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B2_1_1.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_1 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B2_1_1C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B2_1_1.Enabled = false;
                        B2_1_1.Text = "N/A";
                        RangeValidator3.Enabled = false;
                        Comment3.Enabled = false;
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
                    SqlCommand getB2_1_2 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 23 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn4);
                    sqlConn4.Open();

                    SqlDataReader reader = getB2_1_2.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_2 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B2_1_2.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_2 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B2_1_2C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B2_1_2.Enabled = false;
                        B2_1_2.Text = "N/A";
                        RangeValidator4.Enabled = false;
                        Comment4.Enabled = false;
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
                    SqlCommand getB2_1_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 24 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn5);
                    sqlConn5.Open();

                    SqlDataReader reader = getB2_1_3.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_3 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B2_1_3.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_3 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B2_1_3C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B2_1_3.Enabled = false;
                        B2_1_3.Text = "N/A";
                        RangeValidator5.Enabled = false;
                        Comment5.Enabled = false;
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
                    SqlCommand getB2_1_4 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 25 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn6);
                    sqlConn6.Open();

                    SqlDataReader reader = getB2_1_4.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_4 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B2_1_4.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_4 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B2_1_4C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B2_1_4.Enabled = false;
                        B2_1_4.Text = "N/A";
                        RangeValidator6.Enabled = false;
                        Comment6.Enabled = false;
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
                    SqlCommand getB2_1_5 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 26 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn7);
                    sqlConn7.Open();

                    SqlDataReader reader = getB2_1_5.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B2_1_5 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B2_1_5.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_1_5 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B2_1_5C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B2_1_5.Enabled = false;
                        B2_1_5.Text = "N/A";
                        RangeValidator7.Enabled = false;
                        Comment7.Enabled = false;
                    }
                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            SqlConnection sqlConn8 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn8)
            {
                try
                {
                    SqlCommand getB2_2_1 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 27 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn8);
                    sqlConn8.Open();

                    SqlDataReader reader = getB2_2_1.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B2_2_1FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B2_2_1.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC2_2_1 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B2_2_1C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B2_2_1.Enabled = false;
                        B2_2_1.Text = "N/A";
                        RangeValidator8.Enabled = false;
                        Comment8.Enabled = false;
                    }

                    reader.Close();
                }
                //}
                catch (Exception ex)
                {
                    lblSubmitDbStatusFalse.Text = ex.Message;
                }
            }

            //B1_1_3 BACKEND, COMMENT THIS OUT IF YOU HAVENT UPDATE THE DB
            SqlConnection sqlConn9 = new SqlConnection(Shared.SqlConnString);
            using (sqlConn9)
            {
                try
                {
                    SqlCommand getB1_1_3 = new SqlCommand("SELECT * FROM UserCriteria UC, UserDivID UDI WHERE UC.UserDivID = UDI.UserDivID AND UDI.UserID = '" + Session["UserID"].ToString() + "' AND UC.CriteriaID = 27 AND UC.CMID = '" + Session["SelectedCMID"].ToString() + "' AND UDI.DivID = '" + Session["SelectedDivisionID"].ToString() + "'", sqlConn9);
                    sqlConn9.Open();

                    SqlDataReader reader = getB1_1_3.ExecuteReader();

                    if (reader.HasRows)
                    {
                        string BusID = "";
                        SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);

                        using (SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn))
                        {
                            reader.Close();
                            sqlConn.Open();
                            SqlDataReader writer = getBusID.ExecuteReader();

                            if (writer.HasRows)
                            {
                                while (writer.Read())
                                {
                                    Console.WriteLine(String.Format("{0}", writer[0]));
                                    BusID = writer[0].ToString();
                                }
                                writer.Close();
                                using (SqlCommand getRecord = new SqlCommand("SELECT B1_1_3 FROM dbo.[BusinessScore] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                {
                                    try
                                    {
                                        SqlDataReader record = getRecord.ExecuteReader();

                                        if (record.HasRows)
                                        {
                                            while (record.Read())
                                            {
                                                Console.WriteLine(String.Format("{0}", record[0]));
                                                B1_1_3.Text = record[0].ToString();
                                            }
                                            using (SqlCommand getComment = new SqlCommand("SELECT BC1_1_3 FROM dbo.[BusinessComment] WHERE BusinessID = '" + BusID + "'", sqlConn))
                                            {
                                                record.Close();
                                                SqlDataReader comment = getComment.ExecuteReader();

                                                if (comment.HasRows)
                                                {
                                                    while (comment.Read())
                                                    {
                                                        Console.WriteLine(String.Format("{0}", comment[0]));
                                                        B1_1_3C.Text = comment[0].ToString();
                                                    }
                                                }
                                                comment.Close();
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
                        B1_1_3.Enabled = false;
                        B1_1_3.Text = "N/A";
                        RangeValidator9.Enabled = false;
                        Comment9.Enabled = false;
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
        //==============================================================//
        protected void Save_Draft_Click(object sender, EventArgs e)
        {
            /*if (Page.IsValid)
            {
                lblValidMsg.Text = "Thank you.";
            }
            else
            {
            }*/
            if (Page.IsValid)
            {
                lblValidMsg.Text = "Thank you.";
                string BusID = "";
                double b1 = 4, b2 = 4, b3 = 4, b4 = 4, b5 = 4, b6 = 4, b7 = 4, b8 = 4, b9 = 4;
                if (B1_1_1.Text != "N/A")
                {
                    b1 = Convert.ToDouble(B1_1_1.Text);
                    b1.ToString("0.0");
                }
                if (B1_1_2.Text != "N/A")
                {
                    b2 = Convert.ToDouble(B1_1_2.Text);
                    b2.ToString("0.0");
                }

                //BACKEND FOR B1_1_3
                if (B1_1_3.Text != "N/A")
                {
                    b3 = Convert.ToDouble(B1_1_3.Text);
                    b3.ToString("0.0");
                }
                if (B2_1_1.Text != "N/A")
                {
                    b4 = Convert.ToDouble(B2_1_1.Text);
                    b4.ToString("0.0");
                }
                if (B2_1_2.Text != "N/A")
                {
                    b5 = Convert.ToDouble(B2_1_2.Text);
                    b5.ToString("0.0");
                }
                if (B2_1_3.Text != "N/A")
                {
                    b6 = Convert.ToDouble(B2_1_3.Text);
                    b6.ToString("0.0");
                }
                if (B2_1_4.Text != "N/A")
                {
                    b7 = Convert.ToDouble(B2_1_4.Text);
                    b7.ToString("0.0");
                }
                if (B2_1_5.Text != "N/A")
                {
                    b8 = Convert.ToDouble(B2_1_5.Text);
                    b8.ToString("0.0");
                }
                if (B2_2_1.Text != "N/A")
                {
                    b9 = Convert.ToDouble(B2_2_1.Text);
                    b9.ToString("0.0");
                }

                SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
                using (sqlConn)
                {
                    try
                    {
                        SqlCommand getBusID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "'", sqlConn);
                        sqlConn.Open();

                        SqlDataReader reader = getBusID.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(String.Format("{0}", reader[0]));
                                BusID = reader[0].ToString();
                            }

                            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                try
                                {
                                    conn.Open();
                                    if (B1_1_1.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B1_1_1 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B1_1_1 = '" + b1 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B1_1_2.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B1_1_2 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B1_1_2 = '" + b2 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    //BACKEND FOR B1_1_3
                                    if (B1_1_3.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B1_1_3 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B1_1_3 = '" + b3 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B2_1_1.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_1 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_1 = '" + b4 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B2_1_2.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_2 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_2 = '" + b5 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B2_1_3.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_3 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_3 = '" + b6 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B2_1_4.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_4 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_4 = '" + b7 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B2_1_5.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_5 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_1_5 = '" + b8 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    if (B2_2_1.Text == "N/A")
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_2_1 = -3 WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }
                                    else
                                    {
                                        using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessScore] SET B2_2_1 = '" + b9 + "' WHERE BusinessID = '" + BusID + "'", conn))
                                        {

                                            SqlCommand.ExecuteNonQuery();
                                        }
                                    }

                                    
                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC1_1_1 = '" + b1_1_1_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {
                                    
                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC1_1_2 = '" + b1_1_2_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC1_1_3 = '" + b1_1_3_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_1 = '" + b2_1_1_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_2 = '" + b2_1_2_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_3 = '" + b2_1_3_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_4 = '" + b2_1_4_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_1_5 = '" + b2_1_5_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
                                    {

                                        SqlCommand.ExecuteNonQuery();
                                    }

                                    using (SqlCommand = new SqlCommand("UPDATE dbo.[BusinessComment] SET BC2_2_1 = '" + b2_2_1_comment + "' WHERE BusinessID = '" + BusID + "'", conn))
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
                        else
                        {
                            string InsertB = "INSERT INTO dbo.[Business](UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";
                            SqlConnection SqlConnection1 = new SqlConnection(Shared.SqlConnString);
                            SqlCommand sqlCommand1 = new SqlCommand(InsertB, SqlConnection1);
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

                                    using (SqlCommand get = new SqlCommand("SELECT BusinessID FROM [dbo].Business WHERE UserDivID = '" + Session["UserDivID"].ToString() + "' AND CMID = '" + Session["SelectedCMID"].ToString() + "' AND Month = '" + Session["MonthNow"].ToString() + "' AND Year = " + Session["YearNow"].ToString(), SqlConnection1))
                                    {

                                        using (SqlDataReader dr = get.ExecuteReader())
                                        {
                                            dr.Read();
                                            BusID = dr[0].ToString();
                                        }
                                    }
                                }

                                catch (Exception ex)
                                {
                                    lblSubmitDbStatusFalse.Text = ex.Message;
                                }
                            }                           

                            //CHECK FOR B1_1_3 INSERTION BACKEND
                            SqlConnection SqlConnection = new SqlConnection(Shared.SqlConnString);
                            SqlCommand SqlCommand;
                            string SqlQuery = "INSERT INTO dbo.[BusinessScore](B1_1_1, B1_1_2, B1_1_3, B2_1_1, B2_1_2, B2_1_3, B2_1_4, B2_1_5, B2_2_1, BusinessID, Status) VALUES (@B1_1_1, @B1_1_2, @B1_1_3, @B2_1_1, @B2_1_2, @B2_1_3, @B2_1_4, @B2_1_5, @B2_2_1, @BusID, 1)";

                            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                            {
                                try
                                {
                                    SqlConnection.Open();

                                    SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                                    SqlCommand.Parameters.AddWithValue("@B1_1_1", b1);
                                    SqlCommand.Parameters.AddWithValue("@B1_1_2", b2);
                                    SqlCommand.Parameters.AddWithValue("@B1_1_3", b3);
                                    SqlCommand.Parameters.AddWithValue("@B2_1_1", b4);
                                    SqlCommand.Parameters.AddWithValue("@B2_1_2", b5);
                                    SqlCommand.Parameters.AddWithValue("@B2_1_3", b6);
                                    SqlCommand.Parameters.AddWithValue("@B2_1_4", b7);
                                    SqlCommand.Parameters.AddWithValue("@B2_1_5", b8);
                                    SqlCommand.Parameters.AddWithValue("@B2_2_1", b9);
                                    SqlCommand.Parameters.AddWithValue("@BusID", BusID);

                                    SqlCommand.ExecuteNonQuery();

                                    using (SqlCommand = new SqlCommand("INSERT INTO dbo.[BusinessComment](BC1_1_1, BC1_1_2, BC1_1_3, BC2_1_1, BC2_1_2, BC2_1_3, BC2_1_4, B2_1_5, B2_2_1, BusinessID, Status) VALUES (@BC1_1_1, @BC1_1_2, @BC1_1_3, @BC2_1_1, @BC2_1_2, @BC2_1_3, @BC2_1_4, @BC2_1_5, @BC2_2_1, @BusID, 1)", conn))
                                    {

                                        SqlCommand.Parameters.AddWithValue("@B1_1_1", B1_1_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B1_1_2", B1_1_2C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B1_1_3", B1_1_3C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B2_1_1", B2_1_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B2_1_2", B2_1_2C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B2_1_3", B2_1_3C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B2_1_4", B2_1_4C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B2_1_5", B2_1_5C.Text);
                                        SqlCommand.Parameters.AddWithValue("@B2_2_1", B2_2_1C.Text);
                                        SqlCommand.Parameters.AddWithValue("@BusID", BusID);

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
        //=========================================================================//
        protected void Save_Submit_Click(object sender, EventArgs e)
        {
            string BusinessID = "";
            int b1 = 4, b2 = 4, b3 = 4, b4 = 4, b5 = 4, b6 = 4, b7 = 4, b8 = 4;
            if (B1_1_1.Text != "N/A")
            {
                b1 = Convert.ToInt32(B1_1_1.Text);
            }
            if (B1_1_1.Text != "N/A")
            {
                b1 = Convert.ToInt32(B1_1_1.Text);
            }
            if(B1_1_2.Text!="N/A"){
                b2 = Convert.ToInt32(B1_1_2.Text);
            }
            if(B2_1_1.Text!="N/A"){
                b3 = Convert.ToInt32(B2_1_1.Text);
            }
            if(B2_1_2.Text!="N/A"){
                b4 = Convert.ToInt32(B2_1_2.Text);
            }
            if(B2_1_3.Text!="N/A"){
                b5 = Convert.ToInt32(B2_1_3.Text);
            }
            if(B2_1_4.Text!="N/A"){
                b6 = Convert.ToInt32(B2_1_4.Text);
            }
            if(B2_1_5.Text!="N/A"){
                b7 = Convert.ToInt32(B2_1_5.Text);
            }
            if (B2_2_1.Text != "N/A")
            {
                b8 = Convert.ToInt32(B2_2_1.Text);
            } 

            /*if (Page.IsValid)
            {
                lblValidMsg.Text = "Thank you.";
            }
            else
            {
            }*/
            if (@B1_1_1.Text == "" || @B1_1_2.Text == ""||@B2_1_1.Text == ""||@B2_1_2.Text == ""||@B2_1_3.Text == ""||@B2_1_4.Text == ""||@B2_1_5.Text == ""||@B2_2_1.Text == "")
            {
                lblValidInMsg.Text = "Please fill in all the blank textbox";
            }
            /*else if (@B1_1_2.Text == "")
            {
                lblValidInMsg.Text = "Please enter value for B1-1b";
            }
            else if (@B2_1_1.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit values as null";
            }
            else if (@B2_1_2.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit values as null";
            }
            else if (@B2_1_3.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit values as null";
            }
            else if (@B2_1_4.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit values as null";
            }
            else if (@B2_1_5.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit values as null";
            }
            else if (@B2_2_1.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit values as null";
            }
            else if ((@B1_1_1.Text == "2" || @B1_1_1.Text == "1" || @B1_1_1.Text == "0") && @B1_1_1C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B1_1_2.Text == "2" || @B1_1_2.Text == "1" || @B1_1_2.Text == "0") && @B1_1_2C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B2_1_1.Text == "2" || @B2_1_1.Text == "1" || @B2_1_1.Text == "0") && @B2_1_1C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B2_1_2.Text == "2" || @B2_1_2.Text == "1" || @B2_1_2.Text == "0") && @B2_1_2C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B2_1_3.Text == "2" || @B2_1_3.Text == "1" || @B2_1_3.Text == "0") && @B2_1_3C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B2_1_4.Text == "2" || @B2_1_4.Text == "1" || @B2_1_4.Text == "0") && @B2_1_4C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B2_1_5.Text == "2" || @B2_1_5.Text == "1" || @B2_1_5.Text == "0") && @B2_1_5C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }
            else if ((@B2_2_1.Text == "2" || @B2_2_1.Text == "1" || @B2_2_1.Text == "0") && @B2_2_1C.Text == "")
            {
                lblValidInMsg.Text = "Cannot submit comment as null";
            }*/
            else if ((b1 <= 2 && B1_1_1.Text == "")|| (b2<=2 && B1_1_2.Text=="")||(b3<=2&&B2_1_1.Text=="")||(b4<=2 && B2_1_2.Text=="")||(b5<=2 && B2_1_3.Text=="")||(b6<=2 && B2_1_4.Text=="")||(b7<=2 && B2_1_5.Text=="")||(b8<=2&&B2_2_1.Text=="")) 
            {
                lblValidInMsg.Text = "Please enter comment if score is below '2'";
            }
            else
            {
                string InsertB = "INSERT INTO dbo.[Business](UserDivID, CMID, Month, Year) VALUES (@UserDivID, @CMID, @MonthNow, @YearNow)";
                SqlConnection SqlConnection1 = new SqlConnection(Shared.SqlConnString);
                SqlCommand sqlCommand1 = new SqlCommand(InsertB, SqlConnection1);
                sqlCommand1.Parameters.AddWithValue("@UserDivID", Session["UserDivID"].ToString());
                sqlCommand1.Parameters.AddWithValue("@CMID", Session["SelectedCMID"].ToString());
                sqlCommand1.Parameters.AddWithValue("@MonthNow", Session["MonthNow"].ToString());
                sqlCommand1.Parameters.AddWithValue("@YearNow", Session["YearNow"].ToString());
               // sqlCommand1.Parameters.AddWithValue("@DivID", Session["SelectedDivisionID"].ToString());

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
                        SqlCommand getRID = new SqlCommand("SELECT BusinessID FROM dbo.[Business] WHERE UserDivID = '" + Session["UserDivID"].ToString() + "' AND CMID = '" + Session["SelectedCMID"].ToString() + "' AND Month = '" + Session["MonthNow"].ToString() + "' AND Year = '" + Session["YearNow"].ToString()+"'", SqlConnection2);
                        SqlConnection2.Open();

                        SqlDataReader reader = getRID.ExecuteReader();
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(String.Format("{0}", reader[0]));
                                BusinessID = reader[0].ToString();
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

                string InsertIntoBScore = "INSERT INTO dbo.[BusinessScore](B1_1_1, B1_1_2, B2_1_1, B2_1_2, B2_1_3, B2_1_4, B2_1_5, B2_2_1, BusinessID) VALUES (@B1_1_1, @B1_1_2, @B2_1_1, @B2_1_2, @B2_1_3, @B2_1_4, @B2_1_5, @B2_2_1, @BusinessID)";
                SqlConnection SqlConnection3 = new SqlConnection(Shared.SqlConnString);
                SqlCommand sqlCommand3 = new SqlCommand(InsertIntoBScore, SqlConnection3);

                if (B1_1_1.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B1_1_1", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B1_1_1", B1_1_1.Text);

                if (B1_1_2.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B1_1_2", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B1_1_2", B1_1_2.Text);

                if (B2_1_1.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B2_1_1", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B2_1_1", B2_1_1.Text);

                if (B2_1_2.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B2_1_2", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B2_1_2", B2_1_2.Text);

                if (B2_1_3.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B2_1_3", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B2_1_3", B2_1_3.Text);

                if (B2_1_4.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B2_1_4", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B2_1_4", B2_1_4.Text);

                if (B2_1_5.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B2_1_5", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B2_1_5", B2_1_5.Text);

                if (B2_2_1.Text == "N/A")
                    sqlCommand3.Parameters.AddWithValue("@B2_2_1", -3);
                else
                    sqlCommand3.Parameters.AddWithValue("@B2_2_1", B2_2_1.Text);

                sqlCommand3.Parameters.AddWithValue("@BusinessID", BusinessID);

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

                string InsertIntoBComment = "INSERT INTO dbo.[BusinessComment](BC1_1_1, BC1_1_2, BC2_1_1, BC2_1_2, BC2_1_3, BC2_1_4, BC2_1_5, BC2_2_1, BusinessID) VALUES (@B1_1_1C, @B1_1_2C, @B2_1_1C, @B2_1_2C, @B2_1_3C, @B2_1_4C, @B2_1_5C, @B2_2_1C, @BusinessID)";
                SqlConnection SqlConnection4 = new SqlConnection(Shared.SqlConnString);
                SqlCommand sqlCommand4 = new SqlCommand(InsertIntoBComment, SqlConnection4);

                sqlCommand4.Parameters.AddWithValue("@B1_1_1C", B1_1_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@B1_1_2C", B1_1_2C.Text);
                sqlCommand4.Parameters.AddWithValue("@B2_1_1C", B2_1_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@B2_1_2C", B2_1_2C.Text);
                sqlCommand4.Parameters.AddWithValue("@B2_1_3C", B2_1_3C.Text);
                sqlCommand4.Parameters.AddWithValue("@B2_1_4C", B2_1_4C.Text);
                sqlCommand4.Parameters.AddWithValue("@B2_1_5C", B2_1_5C.Text);
                sqlCommand4.Parameters.AddWithValue("@B2_2_1C", B2_2_1C.Text);
                sqlCommand4.Parameters.AddWithValue("@BusinessID", BusinessID);

                using (SqlConnection4)
                {
                    try
                    {
                        SqlConnection4.Open();
                        sqlCommand4.ExecuteNonQuery();
                        lblSubmitDbStatusTrue.Text = "Data entry successful";
                    }
                    catch (Exception ex)
                    {
                        lblSubmitDbStatusFalse.Text = ex.Message;
                        lblValidInMsg.Text = "Data entry unsuccessful";
                    }
                }
            }
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