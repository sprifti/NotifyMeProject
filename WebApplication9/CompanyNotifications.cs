using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public class CompanyNotifications
    {
        private String jobTitle;
        private String operationField;
        private String type; //full-time, part-time
        private String description;
        private String yearExperience;
        private String language;
        private String computerSkills;
        private String gender;
        private String education;

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

        public void setLanguage(String value)
        {
            language = value;
        }

        public String getLanguage()
        {
            return language;
        }


        public void setComputerSkills(String value)
        {
            computerSkills = value;
        }

        public String getComputerSkills()
        {
            return computerSkills;
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

        public void setEducation(String value)
        {
            education = value;
        }

        public String getEducation()
        {
            return education;
        }

        public void setGender(String value)
        {
            gender = value;
        }

        public String getGender()
        {
            return gender;
        }


        public void setYearExperience(String value)
        {
            yearExperience = value;
        }

        public String getYearExperience()
        {
            return yearExperience;
        }



    }
}