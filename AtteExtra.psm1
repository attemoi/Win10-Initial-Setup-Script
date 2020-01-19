###############
# Custom tasks
###############

# Install Chocolatey package manager
Function InstallChocolatey {
	RequireAdmin
	Write-Output "Installing chocolatey..."
	Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
	SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
}

# Install various applications using Chocolatey
Function InstallApps {
	chocolatey feature enable -n allowGlobalConfirmation
	choco install googlechrome 
	choco install steam
	choco install firefox
	choco install 7zip 
	choco install git --params "/GitAndUnixToolsOnPath /NoAutoCrlf /NoCredentialManager"
	choco install dropbox 
	choco install gimp 
	choco install blender 
	choco install intellijidea-community 
	choco install audacity 
	choco install audacity-lame 
	choco install audacity-ffmpeg 
	choco install keepass 
	choco install inkscape
	choco install sharex
	choco install sumatrapdf
	choco install windirstat
	choco install notepadplusplus
	choco install jdk8
	choco install spotify
	choco install vlc
	choco install mpc-hc
	choco install putty
	choco install cpu-z
	choco install hwmonitor
	choco install cyberduck
	choco install nodejs
	choco install anaconda3
}

# Enable Windows-Subsystem-Linux
Function EnableUbuntuSubSystem {
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
}

# Export functions
Export-ModuleMember -Function *
