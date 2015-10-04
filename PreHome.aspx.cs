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
    public partial class PreHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                getCM();
                //getdivision();
            }
        }

        protected void getCM() 
        { 
            Session["UserID"] = 1;
            string userid = Session["UserID"].ToString();
            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand getCM = new SqlCommand("SELECT DISTINCT UC.CMID, CM.CMName FROM UserCriteria UC, UserDivID UDI, CM CM WHERE UC.UserDivID = UDI.UserDivID AND UC.CMID = CM.CMID AND UDI.UserID = '" + userid + "'", sqlConn);
            SqlDataAdapter da = new SqlDataAdapter(getCM);
            DataSet ds = new DataSet();
            da.Fill(ds);
            CM.DataSource = ds.Tables[0];
            CM.DataValueField = "CMID";
            CM.DataTextField = "CMName";
            CM.DataBind();
            CM.Items.Insert(0, new ListItem("-Select-", "0"));
        }


        protected void CM_Changed(object sender, EventArgs e) 
        {
            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand getdivision = new SqlCommand("SELECT DISTINCT UDI.DivID, D.DivName FROM UserDivID UDI, UserCriteria UC, Division D WHERE UDI.DivID = D.DivID AND UDI.UserDivID = UC.UserDivID AND UDI.UserID = 1 AND UC.CMID = @selectedcm", sqlConn);
            getdivision.Parameters.AddWithValue("@selectedcm", CM.SelectedItem.Value.ToString());
            SqlDataAdapter getdiv = new SqlDataAdapter(getdivision);
            DataSet setdiv = new DataSet();
            getdiv.Fill(setdiv);
            Division.DataSource = setdiv.Tables[0];
            Division.DataValueField = "DivID";
            Division.DataTextField = "DivName";
            Division.DataBind();
            Division.Items.Insert(0, new ListItem("-Select-", "0"));          
        }

        protected void Select_Click(object sender, EventArgs e)
        {
            if (CM.SelectedItem.Value.ToString() != "0" && Division.SelectedItem.Value.ToString() != "0")
            {
                Session["SelectedCMID"] = CM.SelectedItem.Value.ToString();
                Session["SelectedDivisionID"] = Division.SelectedItem.Value.ToString();
                Session["SelectedCMName"] = CM.SelectedItem.ToString();
                Session["SelectedDivisionName"] = Division.SelectedItem.ToString();
                SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
                using (sqlConn) 
                {
                    try
                    {
                        SqlCommand getUserDivIDCmd = new SqlCommand("SELECT UserDivID FROM dbo.[UserDivID] WHERE UserID = '" + Session["UserID"] + "' AND DivID = '" + Session["SelectedDivisionID"] + "' ", sqlConn);
                        sqlConn.Open();

                        SqlDataReader reader = getUserDivIDCmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(String.Format("{0}", reader[0]));
                                Session["UserDivID"] = reader[0].ToString();
                            }
                        }
                        else
                        {
                            Console.WriteLine("No rows found.");
                        }
                        reader.Close();

                    }

                    catch(Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    
                }
                Response.Redirect("Home.aspx");
            }
            else
                Label1.Text = "Data not complete";
        }       
    }
}