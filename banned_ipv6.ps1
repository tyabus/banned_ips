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


$RuleName = "blacklistv6"
$Networksv6 = @( 
	( "The Shadowserver Foundation, Inc.",
		( 

			"2001:470:1:c84::/64",
			"2001:470:1:332::/64",
			"2001:470:2cc:1::/64",
			"2001:470:1:fb5::/64"
		)
	),
	( "https://bgp.tools/rir-owner/sc.ad ( Address Management Inc. )",
		( 

			"2a07:ca00::/29"
		)
	),
	( "https://bgp.tools/rir-owner/ru.avm ( XHOST LP )",
		( 

			"2a0d:6c0::/29",
			"2a0d:65c0::/29"
		)
	),
	( "https://bgp.tools/rir-owner/ca.blackhost ( BlackHOST )",
		( 

			"2a01:e940::/29"
		)
	),
	( "https://bgp.tools/rir-owner/fr.julesd",
		( 

			"2a13:c7c0::/29"
		)
	)
)
Remove-ExistingRules -Name $RuleName
Add-FirewallRules -Networks $Networksv6 -Name $RuleName