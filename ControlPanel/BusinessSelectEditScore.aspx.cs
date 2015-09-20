using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR
{
    public partial class BusinessSelectEditScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            InitDropDownList();
            if (!IsPostBack)
            {
                DisableSelection();
            }
        }

        private void InitDropDownList()
        {
            DateTimeFormatInfo monthinfo = DateTimeFormatInfo.GetInstance(null);
            int currentYear = DateTime.Now.Year;

            // Month Value
            if (Month.Items.Count <= 1)
            {
                for (int i = 1; i < 13; i++)
                {
                    Month.Items.Add(new ListItem(monthinfo.GetMonthName(i), i.ToString()));
                }
            }

            // Year Value
            if (Year.Items.Count <= 1)
            {
                for (int year = currentYear; year <= currentYear + 5; year++)
                {
                    Year.Items.Add(new ListItem((year).ToString(), year.ToString()));
                }
            }
        }

        private void DisableSelection()
        {
            CM.Enabled = false;
            Division.Enabled = false;
            User.Enabled = false;
        }
        
        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Month.SelectedValue!="-1" && Year.SelectedValue != "-1")
            {
                CM.Enabled = true;
                Division.Enabled = false;
                User.Enabled = false;
                string SqlRetrieveCmQuery = "select distinct c.CMID, c.CMName from CM c, Business b where b.CMID=c.CMID and b.Month='" + Month.SelectedValue + "' and b.Year='" + Year.SelectedValue + "'";
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();
                        CM.Items.Clear();
                        CM.Items.Add("Pick CM");
                        CM.Items[0].Value = "-1";
                        SqlCommand cmd = new SqlCommand(SqlRetrieveCmQuery, conn);
                        SqlDataReader dr = cmd.ExecuteReader();
                        CM.DataSource = dr;
                        CM.DataTextField = "CMName";
                        CM.DataValueField = "CMID";
                        CM.DataBind();
                        dr.Close();
                    }
                    catch (Exception ex) {
                        Response.Write(ex.ToString());
                    }
                }
            }
            else
            {
                DisableSelection();
            }
        }
        protected void CM_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CM.SelectedValue != "-1")
            {
                Division.Enabled = true;
                User.Enabled = false;
                string getDiv = "select distinct d.DivName, d.DivID from dbo.[Division] d, dbo.[UserDivID] u, dbo.[Business] b where b.UserDivID=u.UserDivID and u.DivID=d.DivID and b.Month='" + Month.SelectedValue + "' and b.Year='" + Year.SelectedValue + "' and b.CMID='" + CM.SelectedValue + "'";
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();
                        Division.Items.Clear();
                        Division.Items.Add("Pick Division");
                        Division.Items[0].Value = "-1";
                        SqlCommand getDivCmd = new SqlCommand(getDiv, conn);
                        SqlDataReader dr = getDivCmd.ExecuteReader();
                        Division.DataSource = dr;
                        Division.DataTextField = "DivName";
                        Division.DataValueField = "DivID";
                        Division.DataBind();
                        dr.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
            }
            else
            {
                Division.Enabled = false;
                User.Enabled = false;
            }
        }
        protected void Division_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Division.SelectedValue!="-1")
            {
                User.Enabled = true;
                string getUser = "select u.UserID, u.UserName from dbo.[User] u, Business b, UserDivID i where b.UserDivID=i.UserDivID and i.UserID=u.UserID and b.Month='" + Month.SelectedValue + "' and b.Year='" + Year.SelectedValue + "' and b.CMID='" + CM.SelectedValue + "' and i.DivID='" + Division.SelectedValue + "'";
                using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
                {
                    try
                    {
                        conn.Open();
                        User.Items.Clear();
                        SqlCommand getUserCmd = new SqlCommand(getUser, conn);
                        SqlDataReader dr = getUserCmd.ExecuteReader();
                        User.DataSource = dr;
                        User.DataTextField = "UserName";
                        User.DataValueField = "UserID";
                        User.DataBind();
                        dr.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.ToString());
                    }
                }
            }
            else
            {
                User.Enabled = false;
            }
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/BusinessEditScore.aspx?Month=" + Month.SelectedValue.ToString()+"&Year="+Year.SelectedValue.ToString()+"&CM="+CM.SelectedValue.ToString()+"&DivID="+Division.SelectedValue.ToString()+"&UserID="+User.SelectedValue.ToString());
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }
    }
}