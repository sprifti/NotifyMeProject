using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public class UserNotifications
    {
        private String jobTitle;
        private String operationField;
        private String type; //full-time, part-time
        private String description;

        public UserNotifications() { }

        public void setOperationField(String value)
        {
            operationField = value;
        }

        public String getOperationField()
        {
            return operationField;
        }

        public void setDescription(String value)
        {
            description = value;
        }

        public String getDescription()
        {
            return description;
        }

        public void setJobTitle(String value)
        {
            jobTitle = value;
        }

        public String getJobTitle()
        {
            return jobTitle;
        }

        public void setType(String value)
        {
            type = value;
        }

        public String getType()
        {
            return type;
        }
    }
}