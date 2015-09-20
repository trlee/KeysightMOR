using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR.ControlPanel
{
    public partial class BusinessScoreViewEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                btnSave.Visible = false;
                SetScoreReadOnly();
            }
        }

        private void SetScoreReadOnly()
        {
            txtB1_1aN.ReadOnly = true;
            txtB1_1aP.ReadOnly = true;
            txtB1_1aY.ReadOnly = true;

            txtB1_1bN.ReadOnly = true;
            txtB1_1bP.ReadOnly = true;
            txtB1_1bY.ReadOnly = true;

            txtB2_1aN.ReadOnly = true;
            txtB2_1aP.ReadOnly = true;
            txtB2_1aY.ReadOnly = true;

            txtB2_1bN.ReadOnly = true;
            txtB2_1bP.ReadOnly = true;
            txtB2_1bY.ReadOnly = true;

            txtB2_1cN.ReadOnly = true;
            txtB2_1cP.ReadOnly = true;
            txtB2_1cY.ReadOnly = true;

            txtB2_1dN.ReadOnly = true;
            txtB2_1dP.ReadOnly = true;
            txtB2_1dY.ReadOnly = true;

            txtB2_1eN.ReadOnly = true;
            txtB2_1eP.ReadOnly = true;
            txtB2_1eY.ReadOnly = true;

            txtB2_2N.ReadOnly = true;
            txtB2_2P.ReadOnly = true;
            txtB2_2Y.ReadOnly = true;
        }

        private void SetScoreEditable()
        {
            txtB1_1aN.ReadOnly = false;
            txtB1_1aP.ReadOnly = false;
            txtB1_1aY.ReadOnly = false;

            txtB1_1bN.ReadOnly = false;
            txtB1_1bP.ReadOnly = false;
            txtB1_1bY.ReadOnly = false;

            txtB2_1aN.ReadOnly = false;
            txtB2_1aP.ReadOnly = false;
            txtB2_1aY.ReadOnly = false;

            txtB2_1bN.ReadOnly = false;
            txtB2_1bP.ReadOnly = false;
            txtB2_1bY.ReadOnly = false;

            txtB2_1cN.ReadOnly = false;
            txtB2_1cP.ReadOnly = false;
            txtB2_1cY.ReadOnly = false;

            txtB2_1dN.ReadOnly = false;
            txtB2_1dP.ReadOnly = false;
            txtB2_1dY.ReadOnly = false;

            txtB2_1eN.ReadOnly = false;
            txtB2_1eP.ReadOnly = false;
            txtB2_1eY.ReadOnly = false;

            txtB2_2N.ReadOnly = false;
            txtB2_2P.ReadOnly = false;
            txtB2_2Y.ReadOnly = false;
    }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                btnSave.Visible = true;
                SetScoreEditable();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                // TODO: Write UPDATE SQL query to save any changes made to the DB
                // string SqlUpdateQuery = "UPDATE [dbo] SET ...";
            }
        }
    }
}