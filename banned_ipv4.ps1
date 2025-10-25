#
# Last Update: 25/10/2025
#
function Remove-ExistingRules {
    param([string]$Name)
    
    Write-Host "Cleaning previous firewall rules with name: $Name" -ForegroundColor Cyan
    
    try {
        $existingRules = Get-NetFirewallRule -DisplayName "*$Name*" -ErrorAction SilentlyContinue
        
        if ($existingRules) {
            foreach ($rule in $existingRules) {
                Write-Host "  Removing rule: $($rule.DisplayName)" -ForegroundColor Yellow
                Remove-NetFirewallRule -Name $rule.Name -Confirm:$false
            }
            Write-Host "Successfully removed $($existingRules.Count) existing rule(s)" -ForegroundColor Green
        }
        else {
            Write-Host "No existing rules found with name pattern: $Name" -ForegroundColor Gray
        }
    }
    catch {
        Write-Warning "Error removing existing rules: $($_.Exception.Message)"
    }
}
function Add-FirewallRules {
    param(
        [Array]$Networks,
        [string]$Name
    )
    
    Write-Host "Adding new firewall rules..." -ForegroundColor Cyan
    
    $ruleCount = 0
    $ruleFailCount = 0
    foreach ($network in $Networks) {
		$Netname = $network[0]
		$Ranges = $network[1]
		foreach ($range in $Ranges) {     
			try {
				$ruleDisplayName = "$Netname"				
				New-NetFirewallRule -DisplayName "$ruleDisplayName" `
								-Direction Inbound `
								-Protocol Any `
								-Action "Block" `
								-RemoteAddress $range `
								-Enabled True `
								-Profile Any

				$ruleCount++
			}
			catch {
				Write-Error "Failed to add rule for $range : $($_.Exception.Message)"
				$ruleFailCount++
			}
		}
    }
    Write-Host "Successfully added $ruleCount firewall rule(s)" -ForegroundColor Green
    Write-Host "Failed to add $ruleFailCount firewall rule(s)" -ForegroundColor Red
}


$RuleName = "blacklistv4"
$Networksv4 = @( 
	( "CENSYS Unlisted (AS237 Old legacy netblock)",
		( 

			"192.35.168.0/23"
		)
	),
	( "Palo Alto Networks Company",
		( 

			"34.77.162.0/24",
			"34.86.35.0/24",
			"35.203.210.0/23",
			"34.96.130.0/24",
			"35.216.183.0/24",
			"66.159.192.0/19",
			"74.221.130.0/24",
			"114.141.120.0/21",
			"128.77.0.0/18",
			"128.77.64.0/19",
			"128.77.124.0/22",
			"130.41.0.0/17",
			"134.238.0.0/16",
			"137.83.224.0/20",
			"137.83.240.0/21",
			"140.209.252.0/23",
			"147.185.132.0/22",
			"162.216.148.0/22",
			"165.1.128.0/19",
			"165.1.176.0/20",
			"165.1.192.0/18",
			"165.85.0.0/16",
			"198.135.184.0/24",
			"198.235.24.0/24",
			"204.87.186.0/24",
			"205.210.31.0/24",
			"208.127.0.0/17",
			"216.25.88.0/21"
		)
	),
	( "Shodan LLC (On AS174)",
		( 

			"207.90.244.0/24"
		)
	),
	( "CrowdStrike Falcon (Amazon EC2)",
		( 

			"18.97.5.0/24",
			"44.220.185.0/24",
			"44.220.188.0/24",
			"98.80.4.0/24"
		)
	),
	( "Chang Way Technologies Co. Limited (On AS50340/AS49505)",
		( 

			"193.3.19.0/24",
			"193.201.8.0/23"
		)
	),
	( "https://bgp.tools/rir-owner/sc.blackhost ( BlackHOST LTD. )",
		( 

			"185.30.233.0/24",
			"185.30.234.0/23",
			"185.142.236.0/22",
			"185.165.188.0/22",
			"195.144.21.0/24"
		)
	),
	( "The Shadowserver Foundation, Inc. (On AS6939)",
		( 

			"64.62.128.0/17",
			"65.49.0.0/17",
			"74.82.0.0/18",
			"184.104.0.0/15",
			"216.218.128.0/17"
		)
	),
	( "CyberOneData LLC",
		( 

			"104.234.115.0/24"
		)
	),
	( "https://bgp.tools/rir-owner/sc.ad ( Address Management Inc. )",
		( 

			"185.147.124.0/22"
		)
	),
	( "https://bgp.tools/rir-owner/ru.avm ( XHOST LP )",
		( 

			"80.66.64.0/20",
			"80.66.80.0/21",
			"80.66.88.0/23",
			"87.251.64.0/20",
			"87.251.84.0/22",
			"87.251.88.0/23",
			"193.37.68.0/22",
			"194.113.232.0/22",
			"217.151.228.0/24"
		)
	),
	( "https://bgp.tools/rir-owner/ca.blackhost ( BlackHOST )",
		( 

			"2.59.22.0/24",
			"45.12.60.0/24",
			"86.54.28.0/22",
			"212.104.140.0/23",
			"213.254.179.0/24"
		)
	),
	( "https://bgp.tools/rir-owner/fr.julesd",
		( 

			"45.112.192.0/22",
			"103.102.228.0/22",
			"185.37.103.0/24",
			"203.13.20.0/24",
			"203.55.81.0/24"
		)
	)
)
Remove-ExistingRules -Name $RuleName
Add-FirewallRules -Networks $Networksv4 -Name $RuleName