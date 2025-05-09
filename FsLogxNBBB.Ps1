#Install Fslogix
cmd /c "C:\temp\fslogixappssetup.exe /install /quiet"

#Create Profiles Key
New-Item -Path HKLM:\SOFTWARE\FSLogix\Profiles

#configure Profile Settings
$VHDLocations = "\\nicholsafstorage.file.core.windows.net\profiles\%username%"
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name Enabled -PropertyType dword -Value 1 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name DeleteLocalProfileWhenVHDShouldApply -PropertyType dword -Value 1 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name LockedRetryCount -PropertyType dword -Value 3 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name LockedRetryInterval -PropertyType dword -Value 15 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name ProfileType -PropertyType dword -Value 0 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name ReAttachIntervalSeconds -PropertyType dword -Value 15 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name ReAttachRetryCount -PropertyType dword -Value 3 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name SizeInMBs -PropertyType dword -Value 60000 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name VHDLocations -PropertyType string -value $VHDLocations -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name VolumeType -PropertyType string -Value vhd -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name KeepLocalDir -PropertyType dword -Value 1 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name RoamIdentity -PropertyType dword -Value 1 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name IsDynamic -PropertyType dword -Value 1 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name PreventLoginWithFailure -PropertyType dword -Value 1 -Force
New-ItemProperty -Path HKLM:\SOFTWARE\FSLogix\Profiles\ -Name PreventLoginWithTempProfile -PropertyType dword -Value 1 -Force
