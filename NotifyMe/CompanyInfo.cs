using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public class CompanyInfo
    {   
        private String operationField;
        private String address;
        private String contactNumber;
        private String contactEmail;
        private String description;
        private String logo;

        public void setOperationField(String value)
        {
            operationField = value;
        }

        public String getOperationField()
        {
            return operationField;
        }

        public void setAddress(String value)
        {
            address = value;
        }

        public String getAddress()
        {
            return address;
        }

        public void setContactNumber(String value)
        {
            contactNumber = value;
        }

        public String getContactNumber()
        {
            return contactNumber;
        }

        public void setContactEmail(String value)
        {
            contactEmail = value;
        }

        public String getContactEmail()
        {
            return contactEmail;
        }

        public void setDescription(String value)
        {
            description = value;
        }

        public String getDescription()
        {
            return description;
        }

        public void setLogo(String value)
        {
            logo = value;
        }

        public String getLogo()
        {
            return logo;
        }
    }
}