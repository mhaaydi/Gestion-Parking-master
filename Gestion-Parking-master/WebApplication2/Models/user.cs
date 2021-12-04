using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebApplication2.Models
{
    public class User
    {
    
        public string nom { get; set; }
        public string prenom { get; set; }

        public string mail { get; set; }
        public string mdp { get; set; }

        public string tel{get;set;}
        public string role { get; set; }

        public string login { get; set; }
        public User()
        {
        }
    }
}