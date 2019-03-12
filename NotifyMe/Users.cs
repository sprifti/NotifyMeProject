using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public class Users
    {
        private String Name;
        private String Email;
        private String Password;
        private String Company;
        private String Normal_user;

        public void setName(String value)
        {
            Name = value;
        }

        public String getName()
        {
            return Name;
        }


        public void setEmail(String value)
        {
            Email = value;
        }

        public String getEmail()
        {
            return Email;
        }


        public void setPassword(String value)
        {
            Password = value;
        }

        public String getPassword()
        {
            return Password;
        }


        public void setCompany(String value)
        {
            Company = value;
        }

        public String getCompany()
        {
            return Company;
        }

        public void setNormal_user(String value)
        {
            Normal_user = value;
        }

        public String getNormal_user()
        {
            return Normal_user;
        }

        public Users() { }
    }
}