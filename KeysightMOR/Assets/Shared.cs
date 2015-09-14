using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/*
    Shared Class File
    Created by: Adrian Khor
    2015-07-18 12:08

    This class contains shared (public) attributes and methods that are invokable
    usually to display shared and consistent information and messages.
*/

namespace KeysightMOR.Assets
{
    public class Shared
    {
        public static string CompanyName = "Keysight Technologies";
        public static string CopyrightMessage = "Copyright &copy; " + CompanyName + " | " + DateTime.Now.Year;

        public static string ProjectName = "Keysight MOR";
        public static string ProjectBuild = "v0.1.0.0";

        public static string SqlConnString = ConfigurationManager.ConnectionStrings["KeysightMORDB"].ConnectionString;
        public static string CurrentDate = DateTime.Now.ToShortDateString();
    }
}