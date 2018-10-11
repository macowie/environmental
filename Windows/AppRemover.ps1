

Write-Output "Elevating privileges for this process"
do {} until (Elevate-Privileges SeTakeOwnershipPrivilege)

Write-Output "Uninstalling default apps"
$apps = @(
    # default Windows 10 apps
    # "Microsoft.3DBuilder"
    # "Microsoft.Appconnector"
    # "Microsoft.BingFinance"
    # "Microsoft.BingNews"
    # "Microsoft.BingSports"
    # "Microsoft.BingTranslator"
    # "Microsoft.BingWeather"
    # "Microsoft.FreshPaint"
    # "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftPowerBIForWindows"
    # "Microsoft.MinecraftUWP"
    # "Microsoft.MicrosoftStickyNotes"
    # "Microsoft.MSPaint"
    # "Microsoft.NetworkSpeedTest"
    # "Microsoft.Office.OneNote"
    # "Microsoft.OneConnect"
    # "Microsoft.People"
    # "Microsoft.Print3D"
    # "Microsoft.SkypeApp"
    # "Microsoft.Wallet"
    # "Microsoft.Windows.Photos"
    # "Microsoft.WindowsAlarms"
    # "Microsoft.WindowsCalculator"
    # "Microsoft.WindowsCamera"
    # "microsoft.windowscommunicationsapps"
    # "Microsoft.WindowsMaps"
    # "Microsoft.WindowsPhone"
    # "Microsoft.WindowsSoundRecorder"
    # "Microsoft.WindowsStore"
    # "Microsoft.XboxApp"
	# "Microsoft.XboxGameOverlay"
    # "Microsoft.XboxIdentityProvider"
    # "Microsoft.XboxSpeechToTextOverlay"
    # "Microsoft.ZuneMusic"
    # "Microsoft.ZuneVideo"
      
    # Threshold 2 apps
    # "Microsoft.CommsPhone"
    # "Microsoft.ConnectivityStore"
    # "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    # "Microsoft.Messaging"
    # "Microsoft.Office.Sway"
    # "Microsoft.OneConnect"
    # "Microsoft.WindowsFeedbackHub"

    # non-Microsoft
    "PandoraMediaInc.29680B314EFC2"
    "Flipboard.Flipboard"
    "ShazamEntertainmentLtd.Shazam"
    "king.com.CandyCrushSaga"
    "king.com.CandyCrushSodaSaga"
    "king.com.*"
    "ClearChannelRadioDigital.iHeartRadio"
    # "4DF9E0F8.Netflix"
    "6Wunderkinder.Wunderlist"
    "Drawboard.DrawboardPDF"
    "2FE3CB00.PicsArt-PhotoStudio"
    "D52A8D61.FarmVille2CountryEscape"
    "GAMELOFTSA.*"
    #"TheNewYorkTimes.NYTCrossword"
    "DB6EA5DB.CyberLinkMediaSuiteEssentials"
    "Facebook.Facebook"
    "flaregamesGmbH.RoyalRevolt2"
    "Playtika.CaesarsSlotsFreeCasino"
    "A278AB0D.MarchofEmpires"
    "KeeperSecurityInc.Keeper"
    "ThumbmunkeysLtd.PhototasticCollage"
    "XINGAG.XING"
    "89006A2E.AutodeskSketchBook"
    "D5EA27B7.Duolingo-LearnLanguagesforFree"
    "46928bounde.EclipseManager"
    "ActiproSoftwareLLC.562882FEEB491"
    # "DolbyLaboratories.DolbyAccess"
    "A278AB0D.DisneyMagicKingdoms"
    "WinZipComputing.WinZipUniversal"
)

foreach ($app in $apps) {
    Write-Output "Trying to remove $app"

    Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage -AllUsers

    Get-AppXProvisionedPackage -Online |
        Where-Object DisplayName -EQ $app |
        Remove-AppxProvisionedPackage -Online
}