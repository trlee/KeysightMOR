using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR
{
    public partial class BusinessEditScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SetScoreReadOnly();
            }
        }

        private void SetScoreReadOnly()
        {
            txtB1CmAos1a.ReadOnly = true;
            txtB1CmAos1b.ReadOnly = true;

            txtB1Msc1a.ReadOnly = true;
            txtB1Msc1b.ReadOnly = true;

            txtB1Scm1a.ReadOnly = true;
            txtB1Scm1b.ReadOnly = true;

            txtB2CmAos1a.ReadOnly = true;
            txtB2CmAos1b.ReadOnly = true;
            txtB2CmAos1c.ReadOnly = true;
            txtB2CmAos1d.ReadOnly = true;
            txtB2CmAos1e.ReadOnly = true;
            txtB2CmAos2.ReadOnly = true;

            txtB2Msc1a.ReadOnly = true;
            txtB2Msc1b.ReadOnly = true;
            txtB2Msc1c.ReadOnly = true;
            txtB2Msc1d.ReadOnly = true;
            txtB2Msc1e.ReadOnly = true;
            txtB2Msc2.ReadOnly = true;

            txtB2Scm1a.ReadOnly = true;
            txtB2Scm1b.ReadOnly = true;
            txtB2Scm1c.ReadOnly = true;
            txtB2Scm1d.ReadOnly = true;
            txtB2Scm1e.ReadOnly = true;
            txtB2Scm2.ReadOnly = true;

            lblEditStatus.ForeColor = System.Drawing.Color.Red;
            lblEditStatus.Text = "Non-Editable, click Edit to start editing";
        }

        private void SetScoreEditable()
        {
            txtB1CmAos1a.ReadOnly = false;
            txtB1CmAos1b.ReadOnly = false;

            txtB1Msc1a.ReadOnly = false;
            txtB1Msc1b.ReadOnly = false;

            txtB1Scm1a.ReadOnly = false;
            txtB1Scm1b.ReadOnly = false;

            txtB2CmAos1a.ReadOnly = false;
            txtB2CmAos1b.ReadOnly = false;
            txtB2CmAos1c.ReadOnly = false;
            txtB2CmAos1d.ReadOnly = false;
            txtB2CmAos1e.ReadOnly = false;
            txtB2CmAos2.ReadOnly = false;

            txtB2Msc1a.ReadOnly = false;
            txtB2Msc1b.ReadOnly = false;
            txtB2Msc1c.ReadOnly = false;
            txtB2Msc1d.ReadOnly = false;
            txtB2Msc1e.ReadOnly = false;
            txtB2Msc2.ReadOnly = false;

            txtB2Scm1a.ReadOnly = false;
            txtB2Scm1b.ReadOnly = false;
            txtB2Scm1c.ReadOnly = false;
            txtB2Scm1d.ReadOnly = false;
            txtB2Scm1e.ReadOnly = false;
            txtB2Scm2.ReadOnly = false;

            lblEditStatus.ForeColor = System.Drawing.Color.Green;
            lblEditStatus.Text = "Editable, click Save Changes to save any changes done";
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            SetScoreEditable();
            btnSave.Visible = true;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
        }
    }
}