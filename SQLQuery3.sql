﻿select CompanyNotifications.id_user, Users.name, OperationField.name as operating_field, skills, type, job_title, job_description, education_description, year_experience from CompanyNotifications inner join OperationField on CompanyNotifications.operation_field = OperationField.Id inner join Users on Users.id = CompanyNotifications.id_user  inner join jobType ON jobType.Id = CompanyNotifications.job_type where operation_field in(select operatingField from User_Preferences where id_user = 49)
                   
select CompanyNotifications.id_user, Users.name, OperationField.name as operating_field, skills, type, job_title, job_description, education_description, year_experience from CompanyNotifications inner join OperationField on CompanyNotifications.operation_field = OperationField.Id inner join Users on Users.id = CompanyNotifications.id_user  inner join jobType ON jobType.Id = CompanyNotifications.job_type where operation_field in(select operatingField from User_Preferences where id_user = 49)