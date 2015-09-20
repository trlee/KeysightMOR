using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR.ControlPanel
{
    public partial class DeliveryScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitDropDownList();
                // DisableSelection();
            }
        }

        // Fetches CM data from database and populates the CM, Month, and Year drop down list 
        private void InitDropDownList()
        {
            DateTimeFormatInfo monthinfo = DateTimeFormatInfo.GetInstance(null);
            int currentYear = DateTime.Now.Year;

            // Populate the Month dropdownlist from January to December
            for (int i = 1; i < 13; i++)
            {
                ddlMonth.Items.Add(new ListItem(monthinfo.GetMonthName(i), i.ToString()));
            }

            // Populate the Year dropdownlist from current year to 5 years after it
            for (int year = currentYear; year <= currentYear + 5; year++)
            {
                ddlYear.Items.Add(new ListItem((year).ToString(), year.ToString()));
            }

            /////////////////////////////////////////////////////////////////////////////////

            // SQL query to retrieve CM data from DB
            string SqlRetrieveCmQuery = "SELECT * FROM [dbo].[CM]";

            // Opens the SQL connection
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                try
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(SqlRetrieveCmQuery, conn);

                    ddlCM.DataSource = cmd.ExecuteReader();
                    ddlCM.DataTextField = "CMName";
                    ddlCM.DataValueField = "CMId";

                    ddlCM.DataBind();
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
            ddlMonth.Enabled = false;
            ddlYear.Enabled = false;
        }

        protected void CM_SelectedIndexChanged(object sender, EventArgs e)
        {
            // As long the selected value is not "Pick CM", set Month dropdownlist to be selectable 
            //if (ddlCM.SelectedValue != "-1")
            //{
            //    ddlMonth.Enabled = true;
            //}
            //else
            //{
            //    DisableSelection();

            //}
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            // As long the selected value is not "Pick Month" & "Pick CM", set Month dropdownlist to be selectable
            //if (ddlCM.SelectedValue != "-1" && ddlMonth.SelectedValue != "=1")
            //{
            //    ddlYear.Enabled = true;
            //}
            //else if (ddlCM.SelectedValue == "-1")
            //{
            //    ddlMonth.SelectedIndex = 0;
            //    DisableSelection();
            //}
        }

        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (ddlCM.SelectedValue != "-1" && ddlMonth.SelectedValue != "-1" && ddlYear.SelectedValue != "-1")
            //{
            //    // Do code...
            //}
            //else if (ddlCM.SelectedValue != "-1" && ddlMonth.SelectedValue == "-1")
            //{
            //    ddlYear.Enabled = false;
            //}
            //else if (ddlCM.SelectedValue == "-1")
            //{
            //    ddlMonth.SelectedIndex = 0;
            //    ddlYear.SelectedIndex = 0;
            //}
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string URL = "DeliveryEditScore.aspx?";
                string CM = ddlCM.SelectedItem.Value;
                string month = ddlMonth.SelectedItem.Value;
                string year = ddlYear.SelectedItem.Value;

                string redirectURL = URL + "CM=" + CM + "&" + "Month=" + month + "&" + "Year=" + year;

                Response.Redirect(redirectURL);
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            // do some more code...
            Response.Redirect("~/ControlPanel/Index.aspx");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string URL = "~/ControlPanel/DeliveryScoreViewEdit.aspx?";
                string CM = ddlCM.SelectedItem.Value;
                string month = ddlMonth.SelectedItem.Value;
                string year = ddlYear.SelectedItem.Value;

                string redirectURL = URL + "CM=" + CM + "&" + "Month=" + month + "&" + "Year=" + year;

                Response.Redirect(redirectURL);
            }
        }
    }
}