using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR.ControlPanel
{
    public partial class DeliveryScoreViewEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            // Load the textbox values from DB based on session IDs and values
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlPanel/DeliveryScore.aspx");
        }
    }
}