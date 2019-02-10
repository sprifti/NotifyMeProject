select Users.name, id_user ,job_title, job_type, description, OperationField.name as operating_field from UserNotifications inner join OperationField on UserNotifications.operation_field = OperationField.Id inner join Users on Users.id = UserNotifications.id_user  where operation_field in(select operatingField from User_Preferences where id_user = 35)


select * from CompanyNotifications

select Users.name, OperationField.name as operating_field, skills, job_type, job_title, job_description, education_description, year_experience from CompanyNotifications inner join OperationField on CompanyNotifications.operation_field = OperationField.Id inner join Users on Users.id = CompanyNotifications.id_user  where operation_field in(select operatingField from User_Preferences where id_user = 49)

