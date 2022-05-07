# winget manager

Write-Output "Installing apps..."
Write-Output ""
$apps = @(
    @{name = "7zip.7zip" },
    @{name = "Discord.Discord" },
    @{name = "Doist.Todoist" },
    @{name = "Google.Chrome.Dev"; force = "true" },
    @{name = "Git.Git"; interactive = "true" },
    @{name = "GnuPG.Gpg4win"; interactive = "true" },
    @{name = "Logitech.Options" },
    @{name = "Microsoft.dotnetRuntime.6-x64" },
    @{name = "Microsoft.VisualStudioCode" },
    @{name = "Olivia.VIA" },
    @{name = "Plex.Plex" },
    @{name = "rickbutton.workspacer.beta" },
    @{name = "Spotify.Spotify" },
    @{name = "SyncTrayzor.SyncTrayzor" },
    @{name = "Tencent.WeChat" },
    @{name = "Transmission.Transmission" },
);

Foreach ($app in $apps) {
    $listApp = winget list --exact -q $app.name
    if (![String]::Join("", $listApp).Contains($app.name)) {
        Write-host "Installing:" $app.name
        if ($null -ne $app.source) {
            winget install --exact --silent $app.name --source $app.source
        }
        elseif ($null -ne $app.force) {
            winget install --exact --silent $app.name --force
        }
        elseif ($null -ne $app.interactive) {
            winget install --exact --interactive $app.name
        }
        else {
            winget install --exact --silent $app.name
        }
    }
    else {
        Write-host "Skipping install of" $app.name
    }
}

Write-Output ""
Write-Output "Done!"

Write-Output ""
Write-Output "Updating apps..."

Write-Output ""
winget upgrade --all

Write-Output ""
Write-Output "Done!"

Write-Output ""
Write-Host -NoNewLine 'Press any key to exit...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');