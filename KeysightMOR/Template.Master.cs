using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;

namespace KeysightMOR
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/SignIn.aspx");
            }
            //-----------------------------------------------
            lblCopyrightMessage.Text = Shared.CopyrightMessage;
            if (Session["username"] != null)
            {
                welcome_msg.Text = "Welcome, " + Session["username"].ToString();
            }
            if (Request.FilePath.ToString().Contains("ControlPanel"))
            {
                navbar_admin.Attributes["class"] = "active";
            }
            else if (Request.FilePath.ToString().Contains("ReportView"))
            {
                navbar_report.Attributes["class"] = "active";
            }
            else if (Request.FilePath.ToString().Contains("DataEntry"))
            {
                navbar_evaluate.Attributes["class"] = "active";
            }
            else if (Request.FilePath.ToString().Contains("ProfileSetting"))
            {
                navbar_setting.Attributes["class"] = "active";

            }

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void hlLogOut_Click(object sender, EventArgs e)
        {
           
            Session["username"] = null;
            Session["userid"] = null;
            Session["position"] = null;

            Response.Redirect("LogOut.aspx");
        }
    }
}