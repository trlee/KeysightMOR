using KeysightMOR.Assets;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace KeysightMOR
{
    public partial class ChangeLogSelectCM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getRespDev();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (CM.SelectedItem.Value.ToString() != "0" || RespDev.SelectedItem.Value.ToString() != "0")
            {
                if (RespDev.SelectedValue.ToString() == "1")
                {
                    string redirectURL = "~/ControlPanel/ChangeLog.aspx?";
                    string CMValue = "CM=" + CM.SelectedItem.Value + "&";

                    Response.Redirect(redirectURL + CMValue);
                }
                else
                {
                    string redirectURL = "~/ControlPanel/ChangeLogDelivery.aspx?";
                    string CMValue = "CM=" + CM.SelectedItem.Value + "&";

                    Response.Redirect(redirectURL + CMValue);
                }
            }
            else 
            {
                lblStatus.Text = "Data incomplete";
            }
        }

        protected void getRespDev()
        {
            ListItem nothing = new ListItem("-Select-", "0");
            ListItem item = new ListItem("Responsiveness", "1");
            ListItem item2 = new ListItem("Delivery", "2");

            RespDev.Items.Add(nothing);
            RespDev.Items.Add(item);
            RespDev.Items.Add(item2);

        }

        protected void RespDev_Changed(object sender, EventArgs e)
        {
            if (RespDev.SelectedValue.ToString() != "0") 
            {
                if (RespDev.SelectedValue.ToString() == "1")
                {
                    getResp();
                }
                else
                {
                    getDev();
                }
            }
        }

        protected void getResp() 
        {
            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand getCM = new SqlCommand("SELECT DISTINCT RSS.CMID, C.CMName FROM ResponsivenessScoreSettings RSS, CM C WHERE RSS.CMID = C.CMID", sqlConn);
            SqlDataAdapter da = new SqlDataAdapter(getCM);
            DataSet setCM = new DataSet();
            da.Fill(setCM);
            CM.DataSource = setCM.Tables[0];
            CM.DataValueField = "CMID";
            CM.DataTextField = "CMName";
            CM.DataBind();
            CM.Items.Insert(0, new ListItem("-Select-", "0"));
        }

        protected void getDev()
        {
            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand getCM = new SqlCommand("SELECT DISTINCT DSS.CMID, C.CMName FROM DeliveryScoreSettings DSS, CM C WHERE DSS.CMID = C.CMID", sqlConn);
            SqlDataAdapter da = new SqlDataAdapter(getCM);
            DataSet setCM = new DataSet();
            da.Fill(setCM);
            CM.DataSource = setCM.Tables[0];
            CM.DataValueField = "CMID";
            CM.DataTextField = "CMName";
            CM.DataBind();
            CM.Items.Insert(0, new ListItem("-Select-", "0"));
        }
    }
}