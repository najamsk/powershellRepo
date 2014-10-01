#$target is the folder you want to zip
#$destinaion is the path where you want to create zip file
#$outFile is the fileName of the generated zip file
function CreateZip($target, $destination, $outFile)
{

#todays date
$date = Get-Date -Format yyyy_dd_MM

#if output file is not mentioned try to get a file name based on target
if ($outFile -eq $null -or $outFile -eq '')
{
    #$target = "E:\projects\AspNet\MVC\newFolder"
    $a = Split-Path $target -Parent
    $outFile = $target.Replace("$a\", "") + "_$date"  + ".zip"    
}

#if desitnation is not mentioned create zip file in target folder
if($destination -eq $null -or $destination -eq '')
{   
    $destinationPath = $target + $outFile;
}
else
{
    $destinationPath = $destination + $outFile
}

Write-Zip $target -IncludeEmptyDirectories -OutputPath $destinationPath
return $destinationPath
}

#this command will zip folder at E:\projects\AspNet\MVC\newFolder as myproject.zip at E:\Projects\AspNet\ 
$bakfile = CreateZip E:\projects\AspNet\MVC\newFolder E:\Projects\AspNet\ myproject.zip