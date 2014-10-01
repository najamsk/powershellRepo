#upload file using ftp
function FtpUpload($file, $ftphost, $ftpuser, $ftppass){   
   $Dir = Split-Path $file -Parent 
   $filename = $target.Replace("$a\", "")

   #ftp server 
   $webclient = New-Object System.Net.WebClient 
   $webclient.Credentials = New-Object System.Net.NetworkCredential($user,$pass) 
    
    #list every sql server trace file 
    foreach($item in (dir $Dir "newFoldernewFolder_2014_29_09.zip")){ 
        "Uploading $item..." 
        $filepath = $ftp+$item.Name
        $uri = New-Object System.Uri($filepath)         
        $webclient.UploadFile($uri, $item.FullName) 
    } 
}

FtpUpload E:\projects\AspNet\MVC\newFoldernewFolder_2014_29_09.zip ftp://74.50.103.229/ habib habibmoftak