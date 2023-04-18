using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ParonSoftSolutions.DAL
{
    public class Constants
    {
        private const string ConnectionString_Name = "DefaultConnection";
        public static string ConnectionString
        {
            get { return ConfigurationManager.ConnectionStrings[ConnectionString_Name].ConnectionString; }
        }

    }
}