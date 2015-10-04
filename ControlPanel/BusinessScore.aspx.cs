using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;

namespace KeysightMOR.ControlPanel
{
    public partial class BusinessScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                InitDropDownList();
                DisableSelection();
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
                Month.Items.Add(new ListItem(monthinfo.GetMonthName(i), i.ToString()));
            }

            // Populate the Year dropdownlist from current year to 5 years after it
            for (int year = currentYear; year <= currentYear + 5; year++)
            {
                Year.Items.Add(new ListItem((year).ToString(), year.ToString()));
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

                    CM.DataSource = cmd.ExecuteReader();
                    CM.DataTextField = "CMName";
                    CM.DataValueField = "CMId";

                    CM.DataBind();
                }
                catch(Exception ex)
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
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            // As long the selected value is not "Pick Month" & "Pick CM", set Month dropdownlist to be selectable
            if (CM.SelectedValue != "-1" && Month.SelectedValue != "=1")
            {
                Year.Enabled = true;
            }
        }

        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(CM.SelectedValue != "-1" && Month.SelectedValue != "-1" && Year.SelectedValue != "-1")
            {
                // Do code...
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           if(Page.IsValid)
            {
                Response.Redirect("BusinessScoreViewEdit.aspx");
            }
        }
    }
}