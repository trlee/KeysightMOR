using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR
{
    public partial class Quality : System.Web.UI.Page
    {
        static string ConnString = "Server=LIMCW;Database=KeysightMOR;Integrated Security=SSPI";

        // Opens a new connection to the SQL Server
        SqlConnection SqlConnection = new SqlConnection(ConnString);
        SqlCommand SqlCommand;

       
        
        //protected void Page_Load(object sender, EventArgs e)
        //{
       
        //    if (!IsPostBack)
        //    {
        //        DisableSelection();
        //    }
        //}

        // Disables the selection for Month and Year by default
        private void DisableSelection()
        {
            Month.Enabled = false;
            Year.Enabled = false;
        }

        protected void CM_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CM.SelectedValue != "-1")
            {
                Month.Enabled = true;
                Response.Write("");
            }
        }

        protected void Month_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CM.SelectedValue != "-1" && Month.SelectedValue != "=1")
            {
                Year.Enabled = true;
                
            }
        }

        protected void Year_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CM.SelectedValue != "-1" && Month.SelectedValue != "-1" && Year.SelectedValue != "-1")
            {
                
            }
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            
                /*string SqlQuery = "INSERT INTO [dbo].Quality(Month, Year, Score, CMID) VALUES (@Month, @Year, @Score, @CMID)";
                SqlConnection.Open();

                SqlCommand = new SqlCommand(SqlQuery, SqlConnection);

                SqlCommand.Parameters.AddWithValue("@Month", Month.SelectedValue);
                SqlCommand.Parameters.AddWithValue("@Year", Year.SelectedValue);
                SqlCommand.Parameters.AddWithValue("@CMID", CM.SelectedValue);
                SqlCommand.ExecuteNonQuery();*/

                Session["Month"] = Month.SelectedValue;
                Session["Year"] = Year.SelectedValue;
                Session["CMID"] = CM.SelectedValue;
                Response.Redirect("QualityScoreViewEdit.aspx");
        }

    }
}