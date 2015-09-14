using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR.ControlPanel
{
    public partial class EditScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitDropDownList_EditScore();
                DisableSelection();
            }
        }

        // Fetches CM data from database and populates the CM, Month, and Year drop down list 
        private void InitDropDownList_EditScore()
        {
            // SQL query to retrieve CM data from DB
            string SqlRetrieveCmQuery = "SELECT * FROM [dbo].[CM]";

            // Opens the SQL connection
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(SqlRetrieveCmQuery, conn);

                    CM.DataSource = cmd.ExecuteReader();
                    CM.DataTextField = "CMName";
                    CM.DataValueField = "CMId";

                    CM.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }


            }
        }

        // Disables the selection for Month and Year by default
        private void DisableSelection()
        {
            Month.Enabled = false;
            Year.Enabled = false;
        }

        protected void CM_SelectedIndexChanged(object sender, EventArgs e)
        {
            // As long the selected value is not "Pick CM", set Month dropdownlist to be selectable 
            if (CM.SelectedValue != "-1")
            {
                Month.Enabled = true;
            }
            else
            {
                DisableSelection();

            }
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            // As long the selected value is not "Pick Month" & "Pick CM", set Month dropdownlist to be selectable
            if (CM.SelectedValue != "-1" && Month.SelectedValue != "=1")
            {
                Year.Enabled = true;
            }
            else if (CM.SelectedValue == "-1")
            {
                Month.SelectedIndex = 0;
                DisableSelection();
            }
        }

        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CM.SelectedValue != "-1" && Month.SelectedValue != "-1" && Year.SelectedValue != "-1")
            {
                // Do code...
            }
            else if (CM.SelectedValue != "-1" && Month.SelectedValue == "-1")
            {
                Year.Enabled = false;
            }
            else if (CM.SelectedValue == "-1")
            {
                DisableSelection();
                Month.SelectedIndex = 0;
                Year.SelectedIndex = 0;
            }
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // store selection into session
                Session["CM_Report"] = CM.SelectedValue;
                Session["Month_Report"] = Month.SelectedValue;
                Session["Year_Report"] = Year.SelectedValue;
                Response.Redirect("~/ReportView/Report.aspx");
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            // do some more code...
            Response.Redirect("~/ControlPanel/Index.aspx");
        }

    }
}