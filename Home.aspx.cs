using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EP_GUI
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("MMMM");
            Label2.Text= DateTime.Now.AddMonths(-1).ToString("MMMM");
            Session["MonthNow"] = DateTime.Now.Month.ToString() ;
            Session["MonthPrevious"] = DateTime.Now.AddMonths(-1).ToString();
            Session["YearNow"] = DateTime.Now.Year.ToString();
        }
    }
}