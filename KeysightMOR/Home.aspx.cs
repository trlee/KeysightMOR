using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Linq;

namespace KeysightMOR
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
                FetchDb();
            }
        }

        private void LoadData()
        {
            // lblCurrentMonth.Text = DateTime.Now.ToString("MMMM");
            // Label2.Text = DateTime.Now.AddMonths(-1).ToString("MMMM");

            Session["MonthNow"] = DateTime.Now.Month.ToString();
            Session["MonthPrevious"] = DateTime.Now.AddMonths(-1).ToString();
            Session["YearNow"] = DateTime.Now.Year.ToString();

            sqlEvalTableFetchData.ConnectionString = "KeysightMORDB";
            sqlEvalTableFetchData.SelectCommand = "";
        }

        private void FetchDb()
        {
            int MonthCurr = DateTime.Now.Month;
                int MonthPrev = (DateTime.Now.Month) - 1;
                int YearCurr = DateTime.Now.Year;

                int UserID = Convert.ToInt32(Session["UserID"].ToString());
                int DivID = Convert.ToInt32(Session["SelectedDivisionID"].ToString());
                int CMID = Convert.ToInt32(Session["SelectedCMID"].ToString());

                int CriteriaID = 0;

                // Values to be populated by SqlDataReader
                int UserDivID = 0;
                int ResponsivenessID = 0;
                int BusinessID = 0;
                int DeliveryID = 0;

                SqlConnection conn;
                SqlCommand cmd;
                SqlDataReader rdr;

                int i = 0;

                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                //
                // Retrieves UserDivID from DB based on UserID and DivID
                //
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        string QueryGetUserDivID = "SELECT UD.UserDivID "
                                    + "FROM dbo.[UserDivID] UD "
                                    + "WHERE UD.DivID = @DivID AND UD.UserID = @UserID;";

                        cmd = new SqlCommand(QueryGetUserDivID, conn);
                        cmd.Parameters.AddWithValue("@DivID", DivID);
                        cmd.Parameters.AddWithValue("@UserID", UserID);

                        rdr = cmd.ExecuteReader();

                        while (rdr.Read())
                        {
                            UserDivID = Convert.ToInt32(rdr["UserDivID"].ToString());
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //
            // Retrieves UserCriteriaIDs from DB based on UserDivID
            //
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            int[] IDArray = new int[99];

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    string QueryGetUserCriteriaID = "SELECT UC.CriteriaID "
                                            + "FROM [dbo].UserCriteria UC "
                                            + "INNER JOIN [dbo].Criteria C "
                                            + "ON UC.CriteriaID = C.CriteriaID "
                                            + "WHERE UC.UserDivID = @UserDivID";

                    cmd = new SqlCommand(QueryGetUserCriteriaID, conn);
                    cmd.Parameters.AddWithValue("@UserDivID", UserDivID);

                    rdr = cmd.ExecuteReader();
                    

                    while(rdr.Read())
                    {
                        IDArray = new int[rdr.FieldCount];
                        for (i = 0; i < rdr.FieldCount; i++)
                            IDArray[i] = Convert.ToInt32(rdr["CriteriaID"].ToString());

                    }
                }
                catch(Exception ex)
                {
                    Response.Write(ex.ToString() + "<br />");
                }
            }

            bool hasResponsiveness = false, hasDelivery = false, hasBusiness = false;

            int[] hasRArray = new int[12];
            int[] hasDArray = new int[7];
            int[] hasBArray = new int[9];
            int x = 0, y = 0, z = 0;
            for (int r = 1; r <= 12; r++)
            {
                if (IDArray.Contains(r))
                {
                    hasResponsiveness = true;
                    hasRArray[x] = r;
                    x++;
                }
                    
            }

            for(int d=13;d<=19;d++)
            {
                if (IDArray.Contains(d))
                {
                    hasDelivery = true;
                    hasDArray[y] = d;
                    y++;
                }
                    
            }

            for (int b=20;b<=28;b++)
            {
                if (IDArray.Contains(b))
                {
                    hasBusiness = true;
                    hasBArray[z] = b;
                    z++;
                }
            }

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //
            // Retrieves ResponsivenessID based on UserDivID, CMID, Month and Year
            //
            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            using (conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    string QueryGetRespID = "SELECT R.ResponsivenessID "
                                    + "FROM dbo.[Responsiveness] R "
                                    + "WHERE R.UserDivID = @UserDivID AND R.CMID = @CMID;";

                    cmd = new SqlCommand(QueryGetRespID, conn);
                    cmd.Parameters.AddWithValue("@UserDivID", UserDivID);
                    cmd.Parameters.AddWithValue("@CMID", CMID);
                    cmd.Parameters.AddWithValue("@Month", MonthCurr);
                    cmd.Parameters.AddWithValue("@Year", YearCurr);

                    rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        ResponsivenessID = Convert.ToInt32(rdr["ResponsivenessID"].ToString());
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }

                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                //
                // Retrieves DeliveryID based on UserDivID, CMID, Month and Year
                //
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        string QueryGetDeliID = "SELECT D.DeliveryID "
                                            + "FROM [dbo].Delivery D "
                                            + "WHERE D.UserDivID = @UserDivID AND D.CMID = @CMID AND D.Month = @Month AND D.Year = @Year;";

                        cmd = new SqlCommand(QueryGetDeliID, conn);
                        cmd.Parameters.AddWithValue("@UserDivID", UserDivID);
                        cmd.Parameters.AddWithValue("@CMID", CMID);
                        cmd.Parameters.AddWithValue("@Month", MonthCurr);
                        cmd.Parameters.AddWithValue("@Year", YearCurr);

                        rdr = cmd.ExecuteReader();

                        while (rdr.Read())
                        {
                            DeliveryID = Convert.ToInt32(rdr["DeliveryID"].ToString());
                        }
                    }
                    catch(Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                //
                // Retrieves BusinessID from UserDivID, CMID, Month, Year
                //
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        string QueryGetBusiID = "SELECT B.BusinessID "
                                        + "FROM dbo.[Business] B "
                                        + "WHERE B.UserDivID = @UserDivID AND B.CMID = @CMID AND B.Month = @Month AND B.Year = @Year;";

                        cmd = new SqlCommand(QueryGetBusiID, conn);
                        cmd.Parameters.AddWithValue("@UserDivID", UserDivID);
                        cmd.Parameters.AddWithValue("@CMID", CMID);
                        cmd.Parameters.AddWithValue("@Month", MonthCurr);
                        cmd.Parameters.AddWithValue("@Year", YearCurr);

                        rdr = cmd.ExecuteReader();

                        while (rdr.Read())
                        {
                            BusinessID = Convert.ToInt32(rdr["BusinessID"].ToString());
                        }
                    }
                    catch(Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }

                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                //
                //  Retrieves the status determined (Open, Draft, Close)
                //      
                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                bool RSStatus = false, DSStatus = false, BSStatus = false;
                bool isOpen = false, isDraft = false, isClosed = false;

                using (conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();

                        string QueryGetStatuses = "SELECT D.Status, R.Status, B.Status "
                                            + "FROM [dbo].Delivery D "
                                            + "INNER JOIN [dbo].Responsiveness R "
                                            + "ON D.DeliveryID = R.ResponsivenessID "
                                            + "INNER JOIN [dbo].Business B "
                                            + "ON D.DeliveryID = B.BusinessID "
                                            + "WHERE D.DeliveryID = @DeliveryID AND B.BusinessID = @BusinessID AND R.ResponsivenessID = @ResponsivenessID; ";
                        cmd = new SqlCommand(QueryGetStatuses, conn);
                        cmd.Parameters.AddWithValue("@DeliveryID", DeliveryID);
                        cmd.Parameters.AddWithValue("@BusinessID", BusinessID);
                        cmd.Parameters.AddWithValue("@ResponsivenessID", ResponsivenessID);

                        rdr = cmd.ExecuteReader();

                        while (rdr.Read())
                        {
                            DSStatus = Convert.ToBoolean(rdr[0].ToString());
                            RSStatus = Convert.ToBoolean(rdr[1].ToString());
                            BSStatus = Convert.ToBoolean(rdr[2].ToString());
                        }
                    
                    }
                    catch(Exception ex)
                    {
                        Response.Write(ex.ToString() + "<br />");
                    }
                }

            string statusToString = "";
            if (RSStatus && DSStatus && BSStatus)
                statusToString = "Open";
            else if (!RSStatus || !DSStatus || !BSStatus)
                statusToString = "Draft";
            else if (!RSStatus && !DSStatus && !BSStatus)
                statusToString = "Closed";

                /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                
                CreateRow(MonthCurr, statusToString);
            
        }

        private void CreateRow(int month, string status)
        {
            HtmlTable table = tblEvaluate;
            HtmlTableRow row = new HtmlTableRow();
            HtmlTableCell cellMonth = new HtmlTableCell();
            HtmlTableCell cellStatus = new HtmlTableCell();
            HtmlTableCell cellProgress = new HtmlTableCell();

            cellMonth.InnerText = month.ToString();
            row.Cells.Add(cellMonth);
            table.Rows.Add(row);

            /////////////////////////////////////////////////////////////////////////////

            string statusToString = status;
            string statusOpen = "Open", statusDraft = "Draft", statusClosed = "Closed";

            if (status == null)
                statusToString = "Unknown";
            else if (status == "Open")
                statusToString = statusOpen;
            else if (status == "Draft")
                statusToString = statusDraft;
            else if (status == "Closed")
                statusToString = statusClosed;

            cellStatus.InnerText = statusToString;
            row.Cells.Add(cellStatus);

            /////////////////////////////////////////////////////////////////////////////

            HyperLink lnkResponsiveness = new HyperLink();
            HyperLink lnkDelivery = new HyperLink();
            HyperLink lnkBusiness = new HyperLink();

            lnkResponsiveness.Text = "Edit";
            lnkBusiness.Text = "Edit";
            lnkDelivery.Text = "Edit";

            lnkResponsiveness.NavigateUrl = "~/DataEntry/Responsiveness/R1TabEntry.aspx";
            lnkDelivery.NavigateUrl = "~/DataEntry/Delivery/D1TabEntry.aspx";
            lnkBusiness.NavigateUrl = "~/DataEntry/Business/B1TabEntry.aspx";

            if (status == "Closed")
            {
                lnkResponsiveness.Enabled = false;
                lnkBusiness.Enabled = false;
                lnkDelivery.Enabled = false;
            }

            /////////////////////////////////////////////////////////////////////////////
            ///
            ///  TD Progress
            ///
            /////////////////////////////////////////////////////////////////////////////
            HtmlTable tblProgress = new HtmlTable();
            HtmlTableRow prgRowR = new HtmlTableRow();
            HtmlTableRow prgRowD = new HtmlTableRow();
            HtmlTableRow prgRowB = new HtmlTableRow();

            HtmlTableCell prgCellRName = new HtmlTableCell();
            HtmlTableCell prgCellRLink = new HtmlTableCell();
            HtmlTableCell prgCellDName = new HtmlTableCell();
            HtmlTableCell prgCellDLink = new HtmlTableCell();
            HtmlTableCell prgCellBName = new HtmlTableCell();
            HtmlTableCell prgCellBLink = new HtmlTableCell();

            prgCellBName.InnerText = "Business";
            prgCellDName.InnerText = "Delivery";
            prgCellRName.InnerText = "Responsiveness";

            prgCellBLink.Controls.Add(lnkBusiness);
            prgCellDLink.Controls.Add(lnkDelivery);
            prgCellRLink.Controls.Add(lnkResponsiveness);

            prgRowR.Cells.Add(prgCellRName);
            prgRowR.Cells.Add(prgCellRLink);
            prgRowB.Cells.Add(prgCellBName);
            prgRowB.Cells.Add(prgCellBLink);
            prgRowD.Cells.Add(prgCellDName);
            prgRowD.Cells.Add(prgCellDLink);

            tblProgress.Rows.Add(prgRowR);
            tblProgress.Rows.Add(prgRowD);
            tblProgress.Rows.Add(prgRowB);

            cellProgress.Controls.Add(tblProgress);
            row.Cells.Add(cellProgress);
        }
    }

        
    }
