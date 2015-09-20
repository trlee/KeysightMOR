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

namespace KeysightMOR.ControlPanel
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Position_Changed(object sender, EventArgs e)
        {
            if (Position.Text == "Employee")
                Table1.Rows[6].Visible = true;
            else
                Table1.Rows[6].Visible = false;
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {
            string SqlAddUserCmd;

            SqlAddUserCmd = "INSERT INTO dbo.[User](UserName, UserEmail, Password, Position) VALUES (@UserName, @UserEmail, '12345', @Position)";

            // Shared.SqlConnString is obtained from Assets/Shared.cs file
            // At beginning of source code, add using statement "using KeysightMOR.Assets"

            SqlConnection sqlConn = new SqlConnection(Shared.SqlConnString);
            SqlCommand sqlCmd = new SqlCommand(SqlAddUserCmd, sqlConn);

            sqlCmd.Parameters.AddWithValue("@UserName", usrName.Text);
            sqlCmd.Parameters.AddWithValue("@UserEmail", usrEmail.Text);
            sqlCmd.Parameters.AddWithValue("@Position", Position.Text);

            string useremail = usrEmail.Text;
            using (sqlConn)
            {
                try
                {
                    //if (!string.IsNullOrEmpty(txtAddCm.Text))
                    //{
                    sqlConn.Open();

                    sqlCmd.ExecuteNonQuery();

                    StringBuilder sb = new StringBuilder();
                    sb.Append("User " + usrName.Text + " successfully submitted");

                    // TODO: Add confirmation message here
                    lblAddUserStatus.Text = sb.ToString();
                }

                //}
                catch (Exception ex)
                {
                    // TODO: Use label to print any exception occurred at this stage
                    lblAddUserStatus.Text = ex.Message;
                }
            }

            if (Position.Text == "Employee")
            {
                SqlConnection sqlConn2 = new SqlConnection(Shared.SqlConnString);
                string userid = "";
                using (sqlConn2)
                {
                    try
                    {
                        //if (!string.IsNullOrEmpty(txtAddCm.Text))
                        //{
                        SqlCommand getUserIDCmd = new SqlCommand("SELECT UserID FROM dbo.[User] WHERE UserEmail = useremail", sqlConn2);
                        sqlConn2.Open();

                        SqlDataReader reader = getUserIDCmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine(String.Format("{0}", reader[0]));
                                userid = reader[0].ToString();
                            }
                        }
                        else
                        {
                            Console.WriteLine("No rows found.");
                        }
                        reader.Close();
                    }
                    //}
                    catch (Exception ex)
                    {
                        // TODO: Use label to print any exception occurred at this stage
                        lblAddUserStatus.Text = ex.Message;
                    }
                }

                foreach (GridViewRow row in GridView1.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        CheckBox SelectDivision = (row.Cells[0].FindControl("SelectDivision") as CheckBox);
                        if (SelectDivision.Checked)
                        {
                            string SqlAddUserDivCmd = "INSERT INTO [dbo].UserDivID(DivID, UserID) VALUES (@division, @userid)";
                            SqlConnection sqlConn3 = new SqlConnection(Shared.SqlConnString);
                            SqlCommand sqlCmd3 = new SqlCommand(SqlAddUserDivCmd, sqlConn3);
                            sqlCmd3.Parameters.AddWithValue("@userid", userid);
                            sqlCmd3.Parameters.AddWithValue("@division", row.Cells[2].Text);

                            using (sqlConn3)
                            {
                                try
                                {
                                    sqlConn3.Open();
                                    sqlCmd3.ExecuteNonQuery();
                                }
                                catch (Exception ex)
                                {
                                    //TODO: Use label to print any exception occurred at this stage
                                    lblAddUserStatus.Text = ex.Message;
                                }

                            }
                        }
                    }
                }
            }


            // Finally, clear the textbox           
        }
    }
}