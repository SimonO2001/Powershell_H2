# Installere DNS
Install-WindowsFeature -Name DNS -IncludeManagementTools

# Installere tools
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
