using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Text;

namespace KeysightMOR.ControlPanel
{
    public partial class ResponsivenessScore : System.Web.UI.Page
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
            using (SqlConnection conn = new SqlConnection(Shared.SqlConnString))
            {
                conn.Open();

                string QueryPopulateDdlCM = "SELECT * FROM [dbo].CM; ";
                SqlCommand cmd = new SqlCommand(QueryPopulateDdlCM, conn);

                SqlDataReader rdr = cmd.ExecuteReader();

                ddlCM.DataSource = rdr;
                ddlCM.DataValueField = "CMID";
                ddlCM.DataTextField = "CMName";
                ddlCM.DataBind();                
            }

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/Index.aspx");
        }

        protected void ddlCM_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlCM.SelectedItem.Value != "-1")
            {
                //Fill Years
                for (int i = DateTime.Now.Year; i <= 2020; i++)
                {
                    ListItem year = new ListItem(i.ToString(), i.ToString());
                    ddlYear.Items.Add(year);
                }
            }
        }

        protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlYear.SelectedItem.Value != "-1")
            {
                //Fill Months
                for (int month = 1; month <= 12; month++)
                {
                    string monthName = DateTimeFormatInfo.CurrentInfo.GetMonthName(month);
                    ddlMonth.Items.Add(new ListItem(monthName, month.ToString().PadLeft(2, '0')));
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                string redirectURL = "~/ControlPanel/ResponsivenessScoreViewEdit.aspx?";
                string CM = "CM=" + ddlCM.SelectedItem.Value + "&";
                string month = "Month=" + ddlMonth.SelectedItem.Value + "&";
                string year = "Year=" + ddlYear.SelectedItem.Value;

                Response.Redirect(redirectURL + CM + month + year);
            }
        }
    }
}