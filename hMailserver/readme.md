# hMail server databse structure

Some usefull information

- Database diagram

![hmail Diagram](https://github.com/jaroslavmraz/PowerBI/blob/6791eeaa11952456e81034f3f565b0e1dfc09fff/hMailserver/hmail_server_mysql_database_structure.png) 


- PowerBI Template

- Search [script](https://github.com/jaroslavmraz/PowerBI/blob/master/hMailserver/serarch_hMail_database_for_email.sql)

I had created simple SQL script for search email in database in columns TO, FROM, CC in MySQL database and join them with real filename (.eml) and Email account ID. So, you get table with real account where email is located and in what user account. Then if you need you can use my other [script](https://github.com/jaroslavmraz/PowerShellScripts/blob/master/SysAdmins/SearchForFileInFoldersUsingLoopfromCsv.ps1) to copy these emails for legal needs. 

