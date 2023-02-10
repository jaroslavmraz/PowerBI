##############################################
## SCRIPT TO SEARCH emails hMail MySQL DB   ##
##############################################
# Autor: Jaroslav Mraz                       #
##############################################
# SCRIPT FOR SEARCH AND JOIN SEARCH THERM    #
#  account name where email is in database.  #              
# IN TO,FROM,CC and JOIN with real filename  #                              
# (.eml) and user account.                   #                 
#                                            #
# Next you can use script in powershell to   #                 
# copy this files where you need for legal   #
# requirements.                              #           
##############################################

# Download here: https://github.com/jaroslavmraz/PowerShellScripts/blob/master/SysAdmins/SearchForFileInFoldersUsingLoopfromCsv.ps1

SET @email_domain = '%SEARCH_THERM%';
SELECT
    hm_message_metadata.metadata_dateutc,
    messageid,
    messagefilename,
    hm_message_metadata.metadata_to,
    hm_message_metadata.metadata_from,
    hm_message_metadata.metadata_cc,
    accountid,
    accountaddress,
    metadata_accountid
FROM
    hm_messages
    JOIN hm_message_metadata ON hm_message_metadata.metadata_messageid = hm_messages.messageid
    JOIN hm_accounts ON hm_message_metadata.metadata_accountid = hm_accounts.accountid
WHERE
    hm_message_metadata.metadata_to LIKE @email_domain
    OR hm_message_metadata.metadata_from LIKE @email_domain
    OR hm_message_metadata.metadata_cc LIKE @email_domain;
