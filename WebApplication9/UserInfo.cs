using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication9
{
    public class UserInfo
    {
        private String operationField;
        private String address;
        private String contactNumber;
        private String contactEmail;
        private String description;
        private String profilePic;
        private String highschool;
        private String university;
        private String language;
        private String computerSkills;
        private String certificates;
        private String experiences;

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

        public void setProfilePic(String value)
        {
            profilePic = value;
        }

        public String getProfilePic()
        {
            return profilePic;
        }

        public void setHighschool(String value)
        {
            highschool = value;
        }

        public String getHighschool()
        {
            return highschool;
        }

        public void setUniversity(String value)
        {
            university = value;
        }

        public String getUniversity()
        {
            return university;
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

        public void setCertificates(String value)
        {
            certificates = value;
        }

        public String getCertificates()
        {
            return certificates;
        }


        public void setExperiences(String value)
        {
            experiences = value;
        }

        public String getExperiences()
        {
            return experiences;
        }


    }
}