Write-Host "`nChoose a name"

$file = (Get-Content .\code\mem.csv) -as [string[]]
$i=1

foreach ($line in $file) {
	$can = $line.IndexOf(',')
	$sub = $line.Substring(0, $can)
		
    Write-Host $i : $sub
    $i++
}

$input = Read-Host "`nSelect num"
$ID = $file[$input-1].Substring($file[$input-1].IndexOf(',')+1, 9)

Invoke-WebRequest https://slack.com/api/users.profile.set?token=XXXXX"&"profile=YYYYYstatus_emoji%22%3A%22%22%7D"&"user=$ID"&"pretty=1
