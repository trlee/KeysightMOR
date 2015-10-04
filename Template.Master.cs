using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KeysightMOR
{
    public partial class Template : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //-----------------------------------------------
            //ADD THIS CODE AT PAGE_LOAD METHOD IN EVERY PAGE
           /* if (Session["username"] == null)
            {
                Response.Redirect("~/SignIn.aspx");
            }*/
            //-----------------------------------------------
            lblCopyrightMessage.Text = Shared.CopyrightMessage;
            if (Session["username"] != null)
            {
                welcome_msg.Text = "Welcome, " + Session["username"].ToString();
            }
           
        }
    }
}