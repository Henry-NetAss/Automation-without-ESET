function UpdateOS(){
    Write-Host "`nUpdating OS."

    # Open Eventlogs for Windows Update
    Start-Process powershell -ArgumentList "-noexit", "-noprofile", "-command &{Get-Content C:\Windows\SoftwareDistribution\ReportingEvents.log -Tail 1 -Wait}"

    #Define update criteria.
    $Criteria = "IsInstalled=0"

    #Search for relevant updates.
    $Searcher = New-Object -ComObject Microsoft.Update.Searcher

    $SearchResult = $Searcher.Search($Criteria).Updates

    #Download updates.
    $Session = New-Object -ComObject Microsoft.Update.Session

    $Downloader = $Session.CreateUpdateDownloader()
    $Downloader.Updates = $SearchResult
    $Downloader.Download()

    $Installer = New-Object -ComObject Microsoft.Update.Installer
    $Installer.Updates = $SearchResult

    $Result = $Installer.Install()

    If ($Result.rebootRequired) { shutdown.exe /t 0 /r }
}

UpdateOS