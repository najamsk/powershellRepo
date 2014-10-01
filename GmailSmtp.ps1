#Description: simple script to send emails using gmail smtp
#Author: najam sikander awan


$EmailFrom = "from@mail.com"
$EmailTo = "to@mail.com" 
$Subject = "emailing powershell report" 
$Body = "this should work on remove server as well. test email" 
$SMTPServer = "smtp.gmail.com" 
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("gmailUser", "gmailPasswor"); 
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)


