#
# Last Update: 09/01/2026
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
				$ruleDisplayName = "$Name - $Netname"				
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
	),
	( "# AS398324 Censys, Inc.",
		( 

			"2602:80d:1000::/48","2602:80d:1006::/48","2620:96:e000::/48"
		)
	),
	( "# AS398722 Censys, Inc.",
		( 

			"2602:80d:1003::/48","2602:80d:1004::/48"
		)
	),
	( "# AS398705 Censys, Inc.",
		( 

			"2602:80d:1002::/48","2602:80d:1005::/48"
		)
	),
	( "# AS10439 CariNet, Inc. (Shodan LLC)",
		( 

			"2607:ff10::/32"
		)
	),
	( "# AS211680 NSEC - Sistemas Informaticos, S.A. (Shodan LLC)",
		( 

			"2a10:3c0:1::/48","2a10:3c0:2::/48","2a10:3c0:100::/47"
		)
	),
	( "# AS12989 Black HOST Ltd",
		( 

			"2a01:e940::/48","2a01:e944::/48","2a01:e945::/48","2a01:e946::/48","2a01:e947::/48"
		)
	),
	( "# AS211298 Driftnet Ltd",
		( 

			"2a06:4880::/30"
		)
	),
	( "# AS211607 Securitytrails, LLC",
		( 

			"2001:678:e70::/48","2a10:b641::/36"
		)
	),
	( "# AS49305 Alsycon B.V.",
		( 

			"2a0e:3ec0::/29"
		)
	),
	( "# AS49870 Alsycon-BV",
		( 

			"2a0e:3980::/29"
		)
	),
	( "# AS208911 Alsycon B.V.",
		( 

			"2a11:8280::/29"
		)
	),
	( "# AS57717 FiberXpress BV",
		( 

			"2a0b:b7c0::/29"
		)
	),
	( "# AS202425 IP Volume inc",
		( 

			"2a02:6c8:8000::/33"
		)
	),
	( "# AS50360 Tamatiya EOOD",
		( 

			"2001:67c:15e0::/48"
		)
	),
	( "# AS207812 DM AUTO EOOD",
		( 

			"2001:678:ff8::/48"
		)
	),
	( "# AS206264 Amarutu Technology Ltd",
		( 

			"2001:590:3803::/48","2402:7840::/32","2a00:1ca8:2c::/48","2a0d:1000::/29"
		)
	),
	( "# AS63961 Bangladesh Research and Education Network (BdREN)",
		( 

			"2402:f500::/32"
		)
	),
	( "# AS17884 PT. Uninet Media Sakti (ISP)",
		( 

			"2402:7980::/32"
		)
	),
	( "# AS42318 FastBit AB",
		( 

			"2a05:5580::/29"
		)
	),
	( "# AS43463 INFOCOM UK LTD (UAB Host Baltic)",
		( 

			"2a00:ea60:200::/40"
		)
	),
	( "# AS208393 Dedcloud Network Ltd (UAB Host Baltic)",
		( 

			"2a05:4741:f::/48","2a0f:9400:8004::/48"
		)
	),
	( "# AS216246 Aeza Group LLC",
		( 

			"2a01:e5c0::/35","2a0f:cdc6:2010::/44","2a0f:cdc6:2020::/44"
		)
	),
	( "# AS210644 AEZA INTERNATIONAL LTD",
		( 

			"2a01:e5c0:2000::/35","2a01:e5c0:4000::/34","2a01:e5c0:8000::/48","2a01:e5c0:8003::/48","2a01:e5c0:8008::/48","2a01:e5c0:9000::/36","2a01:e5c0:f000::/36","2a0b:4140:1000::/36","2a0b:4140:2000::/35","2a0b:4140:4000::/34","2a0b:4140:9000::/36","2a0b:4140:a000::/35","2a0b:4140:c000::/34","2a0e:b107:2780::/46","2a0e:d606::/48","2a0f:4f80::/29","2a0f:cdc6:5030::/44","2a11:fc80::/29","2a12:5940:1::/48","2a12:5940:1000::/36","2a12:5940:2000::/35","2a12:5940:4000::/34","2a12:5940:8000::/33"
		)
	),
	( "# AS205397 69HOST LLC",
		( 

			"2a03:5840:130::/48"
		)
	),
	( "# AS215590 DpkgSoft International Limited",
		( 

			"2a01:ecc0:1::/48","2a01:ecc0:8c0::/42","2a0f:cdc6:10::/44","2a0f:cdc6:20::/43"
		)
	),
	( "# AS216309 InvisionTech Group S.r.l.",
		( 

			"2806:3d3:1000::/36","2a0d:b287:dd00::/40","2a14:7584:4100::/40","2a14:7584:44ce::/48"
		)
	),
	( "# AS198981 NETSHIELD LTD",
		( 

			"2a01:ecc0:2000::/36"
		)
	),
	( "# AS49418 NETSHIELD LTD",
		( 

			"2a01:ecc0:3::/48","2a01:ecc0:640::/42","2a01:ecc0:740::/42","2a0f:cdc6:1005::/48"
		)
	),
	( "# AS199785 Cloud Hosting Solutions, Limited.",
		( 

			"2a0f:cdc6:200::/44"
		)
	),
	( "# AS43278 Castles LLC",
		( 

			"2a06:1301:4350::/48","2a0a:4d00:9::/48"
		)
	),
	( "# AS212477 RoyaleHosting BV",
		( 

			"2602:f78a:1::/48","2602:f78a:10::/44","2602:f7f8:4::/48","2602:fa0a::/40","2a03:5840:fc::/48","2a0b:64c0::/32","2a0b:b680::/29","2a0e:97c0:180::/44","2a0f:85c1:c68::/48","2a12:bec0:340::/44","2a13:9402::/32","2a14:5200::/29"
		)
	),
	( "# AS204603 LOWPINGS DIGITAL SERVICES S.R.L",
		( 

			"2a14:7580:ffff::/48"
		)
	),
	( "# AS210352 Yijia Xu",
		( 

			"2a0f:1cc5:f00::/46","2a0f:1cc5:f05::/48","2a0f:1cc5:f06::/48","2a0f:1cc5:fff::/48"
		)
	),
	( "# AS215540 GLOBAL CONNECTIVITY SOLUTIONS LLP",
		( 

			"2a00:b703:fff1::/48","2a00:b703:fff2::/48","2a05:541:102::/47","2a05:541:104::/47","2a05:541:107::/48","2a05:541:108::/47","2a05:541:110::/46","2a05:541:116::/48","2a05:541:121::/48","2a05:541:122::/47","2a05:541:124::/46","2a05:541:131::/48","2a05:541:133::/48","2a05:541:134::/47","2a05:541:137::/48","2a05:541:138::/47","2a05:541:141::/48","2a05:541:150::/46","2a05:541:156::/47","2a05:541:158::/47","2a05:541:170::/47"
		)
	),
	( "# AS132203 Tencent Building, Kejizhongyi Avenue",
		( 

			"240d:c000:1000::/36","240d:c000:2000::/35","240d:c000:6000::/36","240d:c000:7000::/44","240d:c000:f000::/44","240d:c000:f020::/43","240d:c000:f040::/42","240d:c000:f0c0::/42","240d:c000:f1f0::/44","240d:c010:14::/48","240d:c010:16::/48","240d:c010:20::/44","240d:c010:30::/47","240d:c010:54::/48","240d:c010:58::/48","240d:c010:5c::/48","240d:c010:68::/48","240d:c010:6f::/48","240d:c040::/43"
		)
	),
	( "# AS136180 Beijing Tiantexin Tech. Co., Ltd.",
		( 

			"2400:87c0::/32"
		)
	),
	( "# AS205100 F3NETZE",
		( 

			"2a0b:f4c0::/40","2a0b:f4c0:100::/48","2a0b:f4c0:16c::/48","2a0b:f4c0:1a4::/48","2a0b:f4c0:1b4::/48","2a0b:f4c0:400::/48"
		)
	),
	( "# AS14987 Rethem Hosting LLC",
		( 

			"2607:8500::/32"
		)
	),
	( "# AS150156 99IT",
		( 

			"2001:df1:1940::/48"
		)
	),
	( "# AS133398 Tele Asia Limited (UAB Host Baltic)",
		( 

			"2401:f9c0:2600::/40","2406:4300::/32","2a10:1fc0::/48"
		)
	),
	( "# AS204333 Witalij Koweschnikow",
		( 

			"2a13:5681:1::/48","2a13:5681:6::/47","2a13:5681:8::/46"
		)
	),
	( "# AS48721 Flyservers S.A. (UAB Host Baltic)",
		( 

			"2a10:9100:3::/48"
		)
	),
	( "# AS209588 Flyservers S.A. (UAB Host Baltic)",
		( 

			"2a10:9100:7::/48","2a10:9100:9::/48"
		)
	),
	( "# AS267784 Flyservers S.A. (UAB Host Baltic)",
		( 

			"2803:5120:c000::/36","2a10:9100:5::/48"
		)
	),
	( "# AS208843 Alpha Strike Labs GmbH",
		( 

			"2a0e:7b83:ffff::/48"
		)
	),
	( "# AS60729 Stiftung Erneuerbare Freiheit",
		( 

			"2a0a:4587:2010::/46","2a0b:f4c1:2::/48","2a0b:f4c2::/40"
		)
	),
	( "# AS62068 SpectraIP B.V.",
		( 

			"2a0d:2400::/30","2a0d:2404::/31","2a0d:2406::/39","2a0d:2407::/32","2a0d:2780::/29","2a0e:16c0::/29","2a0e:1740::/29","2a0e:2000::/29","2a11:b240::/29","2a12:a8c0::/29"
		)
	),
	( "# AS51115 HLL LLC",
		( 

			"2a03:70c0::/32"
		)
	),
	( "# AS210630 IncogNET LLC",
		( 

			"2602:fc24:100::/40"
		)
	),
	( "# AS212461 Nemtcov Nikolai Alexandrovich",
		( 

			"2a0b:6900:1ad::/48"
		)
	),
	( "# AS268105 N.F.F.NETWORK SERVICOS DE TELECOMUNICACOES LTDA",
		( 

			"2804:5814::/32"
		)
	),
	( "# AS4224 The Calyx Institute",
		( 

			"2602:fef9:100::/48"
		)
	),
	( "# AS13627 Ambyre LLC",
		( 

			"2602:fba3::/38"
		)
	),
	( "# AS201814 MEVSPACE sp. z o.o.",
		( 

			"2a03:cfc0::/32","2a09:d580::/29","2a12:a800:2::/48"
		)
	),
	( "# AS207208 MEVSPACE sp. z o.o.",
		( 

			"2001:67c:2498::/48"
		)
	),
	( "# AS61280 FGUP GRCHC (Russian goverment)",
		( 

			"2a0c:a9c7:156::/47","2a0c:a9c7:158::/48"
		)
	),
	( "# AS61272 Informacines sistemos ir technologijos, UAB",
		( 

			"2a02:e00:ffe7::/48","2a04:2180::/32","2a04:2181:c010::/47","2a04:2181:c012::/48"
		)
	),
	( "# AS399486 12651980 CANADA INC. (Virtuo Holdings Inc)",
		( 

			"2001:550:601::/48","2a0f:85c1:3d9::/48","2a0f:b240:c::/48","2a0f:b240:22::/48","2a0f:b240:26::/48"
		)
	),
	( "# AS44097 CLEMENT CAVADORE",
		( 

			"2001:67c:ec::/48"
		)
	),
	( "# AS400130 Hebergement Serv3r.net inc.",
		( 

			"2602:fb53::/40"
		)
	),
	( "# AS200136 Association LibraHost",
		( 

			"2a0e:b107:12d::/48"
		)
	),
	( "# AS198831 GENIUSWEER SAS",
		( 

			"2a0c:b641:d70::/44","2a10:4646:2d0::/44","2a10:4646:3f0::/44","2a13:9500:c4::/48"
		)
	),
	( "# AS210558 1337 Services GmbH",
		( 

			"2a12:a800:1::/48","2a12:a800:7::/48","2a12:a800:8::/48"
		)
	),
	( "# AS215599 Zkillu SAS",
		( 

			"2a0c:b641:b0::/44","2a10:4646:410::/44"
		)
	),
	( "# AS47890 UNMANAGED LTD",
		( 

			"2a0c:9f00:2::/48","2a0e:1d80:7::/48","2a10:9100:6::/48","2a10:9100:a::/48"
		)
	),
	( "# AS39798 MivoCloud SRL",
		( 

			"2001:67c:2db8::/48","2a0a:c800::/31","2a0a:c802::/47","2a0a:c802:3::/48","2a0a:c802:4::/47"
		)
	),
	( "# AS41436 Kamatera Inc",
		( 

			"2a06:c5c0:200::/48","2a07:3b80:3::/48"
		)
	),
	( "# AS204548 Kamatera Inc",
		( 

			"2a06:c5c0:1100::/48","2a07:3b80:1::/48"
		)
	),
	( "# AS210329 Kamatera Inc",
		( 

			"2a06:c5c0:600::/48","2a07:3b80:2::/48"
		)
	),
	( "# AS25820 IT7 Networks Inc",
		( 

			"2607:8700:360::/48","2607:8700:1200::/48","2607:8700:2200::/48","2607:8700:3100::/48","2607:8700:3400::/48","2607:8700:5500::/47","2607:8700:9300::/48"
		)
	),
	( "# AS3214 xTom GmbH",
		( 

			"2a03:d9c0:1000::/48","2a03:d9c0:2000::/48","2a03:d9c0:4000::/48","2a03:d9c0:5000::/48","2a03:d9c0:6000::/48","2a03:d9c0:7000::/48","2a03:d9c0:8000::/48","2a03:d9c0:c0de::/48","2a03:d9c1:100::/40","2a03:d9c1:200::/39","2a03:d9c1:400::/38","2a03:d9c1:a100::/40","2a03:d9c1:a200::/39","2a03:d9c1:a400::/38","2a03:d9c1:b100::/40","2a03:d9c1:b200::/39","2a03:d9c1:b400::/39","2a03:d9c1:b600::/40","2a03:d9c1:c100::/40","2a03:d9c1:c200::/39","2a03:d9c1:c400::/39","2a03:d9c1:c600::/40","2a03:d9c2:100::/47","2a04:6f00::/32","2a04:6f02::/31","2a04:6f04::/30","2a07:fe00::/29","2a09:0:1::/48","2a09:0:2::/48","2a09:0:6::/47","2a09:0:8::/47","2a09:0:11::/48","2a09:0:16::/48","2a09:0:9000::/40","2a0b:89c0::/31","2a0c:59c0::/29"
		)
	),
	( "# AS39421 Sapinet SAS",
		( 

			"2a0c:8880::/29"
		)
	),
	( "# AS49581 Ferdinand Zink trading as Tube-Hosting",
		( 

			"2a02:2fc0:11::/48","2a12:8640::/29","2a12:b200::/29","2a12:de40::/32","2a13:9500:d5::/48"
		)
	),
	( "# AS214339 SRV.RENT UG (haftungsbeschraenkt)",
		( 

			"2a07:6d40:2::/48"
		)
	),
	( "# AS213151 Christian Elsen",
		( 

			"2001:678:1e8::/48","2602:fb2a::/40","2a06:e881:7300::/40"
		)
	),
	( "# AS399820 Atomic Networks LLC",
		( 

			"2602:fc2f:100::/40","2602:fc2f:f00::/48"
		)
	),
	( "# AS200482 nexserv GmbH",
		( 

			"2a12:3e80::/38","2a12:3e80:402::/47","2a12:3e80:404::/48","2a12:3e80:500::/40"
		)
	),
	( "# AS216081 Paulo Gobbato trading as Gobbato IT Loesungen",
		( 

			"2a12:3e80:69f::/48","2a12:3e80:6a0::/44","2a12:3e80:6f5::/48"
		)
	),
	( "# AS197477 Moritz Mantel trading as Nerdscave",
		( 

			"2a06:de01:70::/48","2a06:de01:7a::/47","2a06:de01:7c::/47","2a06:de01:7e::/48","2a10:ccc0:150::/44","2a10:ccc2:1330::/44","2a13:e3c0::/31"
		)
	),
	( "# AS215292 Gravhosting LLC",
		( 

			"2a14:7c0:1800::/38","2a14:7c0:4800::/40"
		)
	),
	( "# AS215691 AP INTERACTIVE SOLUTIONS SL",
		( 

			"2a14:8880::/29"
		)
	),
	( "# AS210676 Appline Group LLC",
		( 

			"2001:678:106c::/48"
		)
	),
	( "# AS212762 Casper Krook trading as Ck IT Solutions",
		( 

			"2a05:dfc1:5503::/48","2a05:dfc1:5506::/48"
		)
	),
	( "# AS204914 LABIXE LTD",
		( 

			"2a0c:9a40:8350::/48"
		)
	),
	( "# AS215026 Alessandro Accorsi trading as Len Service SRL",
		( 

			"2a0f:9400:6109::/48","2a0f:9400:6118::/48","2a0f:9400:611c::/48","2a0f:9400:614f::/48","2a0f:9400:6905::/48","2a0f:9400:693b::/48"
		)
	),
	( "# AS215681 Lea Dickmann",
		( 

			"2a0e:8f02:2071::/48","2a0e:8f02:207f::/48"
		)
	),
	( "# AS203728 BAHU LTD",
		( 

			"2001:678:90c::/48"
		)
	),
	( "# AS215365 Tom Gewiese",
		( 

			"2a06:1283:9000::/38","2a06:1283:9800::/38","2a14:7c0:1000::/38"
		)
	),
	( "# AS58052 Tomas William Smith trading as TomasSystems",
		( 

			"2a12:bec0:190::/47","2a12:bec0:19f::/48"
		)
	),
	( "# AS199654 Oxide Group Limited",
		( 

			"2a0f:b240:2f::/48","2a12:bec0:20a::/47","2a12:bec0:20c::/48"
		)
	),
	( "# AS215039 Nodesty LLC",
		( 

			"2a0a:6044:ac50::/44","2a0f:85c1:3c9::/48"
		)
	),
	( "# AS40124 QuickMeg Inc",
		( 

			"2602:299:10::/44"
		)
	),
	( "# AS54990 1337 Services LLC",
		( 

			"2001:67c:235c::/48"
		)
	),
	( "# AS39287 ab stract ltd",
		( 

			"2001:67c:2354::/48","2001:67c:2358::/48","2620:18:c000::/48","2a02:6f8::/32","2a0a:3840::/29","2a0e:d9c0::/29","2a0f:5e80::/29","2c0f:f930::/32"
		)
	),
	( "# AS49434 FBW NETWORKS SAS",
		( 

			"2a09:ca00::/29","2a0a:2f82::/32","2a0f:9240::/32","2a12:8140::/30","2a13:bf80::/29"
		)
	),
	( "# AS52284 Panamaserver.com",
		( 

			"2803:200::/32"
		)
	),
	( "# AS151873 TOTHOST SOLUTIONS AND TECHNOLOGIES COMPANY LIMITED",
		( 

			"2401:5b60::/48"
		)
	),
	( "# AS51396 Pfcloud UG",
		( 

			"2a05:9080:13::/48","2a05:b0c6:a200::/39","2a05:b0c7:6000::/36","2a0a:e2c0::/29","2a11:5780::/29","2a12:1cc7::/32","2a12:5a00::/29","2a12:6740::/29","2a12:8100::/29","2a12:8ec0::/29","2a12:ccc0::/29","2a12:e240::/29","2a14:7c0:9200::/40","2a14:7c0:f400::/38","2a14:7c1::/32","2a14:7c2::/31","2a14:8000::/29"
		)
	),
	( "# AS214940 KPROHOST LLC",
		( 

			"2a11:f082::/32"
		)
	),
	( "# AS214209 Internet Magnate (Pty) Ltd",
		( 

			"2a0f:9400:7e11::/48"
		)
	),
	( "# AS214497 Whitelabel Solutions, Ltd.",
		( 

			"2a06:de07:fc00::/44","2a10:ccc7:b110::/44","2a14:7c0:1740::/48"
		)
	),
	( "# AS214515 Amir Mohammad Masoudi",
		( 

			"2a14:7c0:6000::/40","2a14:9e00:200::/40"
		)
	),
	( "# AS215462 Noel Nayasha Materke",
		( 

			"2a11:f083::/32"
		)
	),
	( "# AS215085 Maik Polman trading as PixelHosting",
		( 

			"2a06:9f41::/32"
		)
	),
	( "# AS214865 Falco Nordmann",
		( 

			"2a14:5140:100::/40","2a14:5140:300::/40","2a14:5140:400::/39"
		)
	),
	( "# AS60150 area-7 IT-Services GmbH",
		( 

			"2001:678:6bc::/48","2001:678:ef0::/48","2001:678:ef4::/48","2001:678:ef8::/48","2001:67c:270::/48","2001:67c:28a0::/48","2a05:ff00::/29"
		)
	),
	( "# AS36680 Netiface LLC",
		( 

			"2602:f915::/40"
		)
	),
	( "# AS214967 Optibounce, LLC",
		( 

			"2a11:f084::/32"
		)
	),
	( "# AS35133 Eranium B.V.",
		( 

			"2a07:5500::/29","2a09:e240:22::/48","2a09:e244::/33"
		)
	),
	( "# AS198584 PIO-Hosting GmbH",
		( 

			"2a05:9080:5::/48","2a10:ca80::/48"
		)
	),
	( "# AS216213 Lexistar Alliance Ltd.",
		( 

			"2a13:e0c0::/29","2a14:17c0::/29","2a14:1840::/29","2a14:c880::/33"
		)
	),
	( "# AS210705 Ali Monfared",
		( 

			"2a05:9080:3::/48","2a05:9080:11::/48"
		)
	),
	( "# AS207350 Arshia Asadi",
		( 

			"2a05:9080:1::/48","2a05:9080:15::/48"
		)
	),
	( "# AS42237 w1n ltd",
		( 

			"2a0b:c040::/31","2a0d:8980::/29"
		)
	),
	( "# AS214927 PSB HOSTING LTD",
		( 

			"2a0c:7886:105::/48","2a0f:e7c6:1000::/48"
		)
	),
	( "# AS215826 Partner Hosting LTD",
		( 

			"2a0c:9a40:9404::/47"
		)
	),
	( "# AS52053 REDHEBERG Association declaree",
		( 

			"2a14:1d00::/44"
		)
	),
	( "# AS138699 TIKTOK PTE. LTD.",
		( 

			"2404:9dc0:cd01::/48","2404:9dc0:cd03::/48","2404:9dc0:cd05::/48","2404:9dc0:cd06::/47"
		)
	),
	( "# AS35042 Layer7 Networks GmbH",
		( 

			"2a00:1910::/30","2a09:8700::/32"
		)
	),
	( "# AS43350 NForce Entertainment B.V.",
		( 

			"2001:678:a18::/48","2a00:1768::/34","2a00:1768:4000::/35","2a00:1768:6000::/36","2a02:2ca0:10::/48","2a02:2ca0:64::/48","2a02:2ca0:aaa::/48","2a02:2ca0:1111::/48","2a03:3740::/32","2a04:b040::/47","2a04:b040:2::/48","2a05:840::/47","2a05:e9c0:8200::/40","2a07:bd80::/29","2a0b:8400:1::/48","2a0d:ea80::/29","2a0f:2b86:10::/48","2a13:9500:126::/48"
		)
	),
	( "# AS6204 INTERKVM HOST SRL",
		( 

			"2001:7f8:8f::/48","2a12:3200:f000::/36"
		)
	),
	( "# AS25198 INTERKVM HOST SRL",
		( 

			"2a01:7120:6::/47","2a12:3200::/35","2a12:3200:2000::/36","2a12:3200:4000::/35","2a12:3200:7000::/36","2a12:3200:8000::/36","2a12:3200:9000::/48"
		)
	),
	( "# AS215450 Snowcore Cyf",
		( 

			"2a14:7c0:100::/40"
		)
	),
	( "# AS132825 MYTEK TRADING PTY LTD",
		( 

			"2001:df0:fbc0::/48","2407:1100::/32"
		)
	),
	( "# AS3920 ESTOXY OU (Estoxy OU)",
		( 

			"2a13:adc0::/46"
		)
	),
	( "# AS60539 Huicast Telecom Limited",
		( 

			"2401:e3a0:1::/48","2407:d340:8000::/40","2a13:aac0::/29"
		)
	),
	( "# AS206728 Media Land LLC",
		( 

			"2a0b:7ec0::/29","2a11:2081::/32","2a11:6502::/32","2a11:9880::/32","2a11:c102::/32"
		)
	),
	( "# AS214668 AxusHost B.V.",
		( 

			"2a11:1400:2000::/48"
		)
	),
	( "# AS50917 Diederik Focko de Zee",
		( 

			"2001:678:7ec::/48"
		)
	),
	( "# AS58212 dataforest GmbH",
		( 

			"2407:9d00:20::/48","2a03:403:4000::/34","2a03:403:8000::/34","2a05:dfc7::/32","2a06:a000::/32","2a06:a007::/32","2a0a:7747::/32","2a0c:4ac0:1100::/40","2a0c:4ac0:1200::/40","2a0c:4ac1::/32","2a0d:1180::/29","2a0d:5940::/29","2a0d:d907::/32","2a0f:5b02::/32"
		)
	),
	( "# AS212935 Theori Inc",
		( 

			"2602:f90a::/48"
		)
	),
	( "# AS202306 HOSTGLOBAL.PLUS LTD",
		( 

			"2a04:5200:5977::/48"
		)
	),
	( "# AS199414 Noah Kolossa",
		( 

			"2a12:bec0:2f0::/47"
		)
	),
	( "# AS214809 Jere Kiitola trading as Stocade",
		( 

			"2a0a:6044:b300::/42"
		)
	),
	( "# AS214365 Hypefox Ltd",
		( 

			"2a14:1ec7:fa00::/47"
		)
	),
	( "# AS215437 SummerHosting sp. z o. o.",
		( 

			"2a12:bec4:1b60::/47","2a14:1ec7:1100::/40"
		)
	),
	( "# AS216249 PHOTON SPARK SRL",
		( 

			"2a01:e901::/44"
		)
	),
	( "# AS150766 CoCoDigit Ltd",
		( 

			"2401:5da0:1::/48","2401:5da0:2::/48"
		)
	),
	( "# AS36829 Winstri Corporation",
		( 

			"2602:fc64:a00::/48","2602:fc64:a000::/47","2602:fc64:ca00::/48","2602:fc64:ca10::/48","2602:fc64:ce00::/48"
		)
	),
	( "# AS57974 Teracast Networks LLC",
		( 

			"2602:2d4:d00::/40","2602:2d4:e00::/39"
		)
	),
	( "# AS44947 AMWAJ ALKHYR COMMERCIAL BROKERS CO. (UAB Host Baltic)",
		( 

			"2001:3b80::/29","2a09:cbc0::/29","2a13:1640::/29","2a13:3cc0::/29","2a13:9600::/29","2a13:9e40::/29"
		)
	),
	( "# AS51852 Private Layer INC",
		( 

			"2a02:29b8::/32","2a09:4d45::/32"
		)
	),
	( "# AS264617 GRUPO PANAGLOBAL 15 S.A",
		( 

			"2803:9e40::/32","2a0a:20c0::/29"
		)
	),
	( "# AS210937 Xiufeng Guo",
		( 

			"2a09:1::/48","2a11:1d40::/48","2a11:1d42::/48","2a11:1d43::/48"
		)
	),
	( "# AS60404 The Infrastructure Group B.V.",
		( 

			"2a01:6340::/29","2a04:52c0::/32","2a06:e881:6200::/48","2a0b:b600:1000::/38","2a0c:9a40:808e::/48","2a0c:b642:1a01::/48","2a0e:fd45:40f8::/48","2a0f:5707:ab2c::/48","2a0f:6bc0::/29"
		)
	),
	( "# AS41608 NextGenWebs, S.L.",
		( 

			"2a0b:8bc0::/29"
		)
	),
	( "# AS202592 area-7 IT-Services GmbH",
		( 

			"2a07:5b47::/32"
		)
	),
	( "# AS210743 Babbar SAS",
		( 

			"2001:978:1b04::/47"
		)
	),
	( "# AS64476 Shadow SAS",
		( 

			"2a0a:e805:210::/44","2a0a:e805:500::/40","2a0a:e805:610::/44","2a0a:e805:710::/44"
		)
	),
	( "# AS53828 NETWORK INNOVATIONS, LLC",
		( 

			"2605:a380::/32"
		)
	),
	( "# AS199834 IP Solus Inc",
		( 

			"2001:37c0::/29"
		)
	),
	( "# AS56611 REBA Communications BV",
		( 

			"2a02:6c8::/33"
		)
	),
	( "# AS26042 FiberState, LLC",
		( 

			"2602:294::/47","2602:294:2::/48","2602:f65c:10::/46","2602:f65c:14::/48","2602:f66f:10::/48","2602:f919:100::/48","2602:f919:102::/48","2602:f988:210::/47","2602:f988:212::/48","2602:f992:c0::/44","2602:fa3d:a92::/48","2602:fa42:300::/40","2602:fd92:200::/40","2602:fe13:2e0::/44","2606:c0:1::/48","2606:fc40:4004::/48","2606:fc40:4010::/44","2606:fc40:4020::/44","2607:740:49::/48","2a0c:e641::/32","2a0f:1584:1::/48","2a0f:7803:f611::/48","2a0f:9400:611f::/48","2a0f:9400:6939::/48","2a0f:9400:7385::/48","2a12:bec4:1980::/44","2a14:7580:fc00::/40","2a14:7584:5000::/36","2a14:7586:1000::/36"
		)
	),
	( "# AS215120 Evolus IT Solutions GmbH",
		( 

			"2a07:cec4::/30","2a0c:9a40:8570::/48","2a12:bec4:19a0::/46","2a12:bec4:19a4::/47"
		)
	),
	( "# AS41047 Bart Vrancken",
		( 

			"2a0e:a6c0::/30"
		)
	),
	( "# AS53755 Input Output Flood LLC",
		( 

			"2604:6280::/32","2a0d:da07::/32"
		)
	),
	( "# AS62167 Tismi BV",
		( 

			"2a00:be40:2::/48","2a01:7520::/32","2a0b:5800::/32"
		)
	),
	( "# AS214337 Webmedia - Nijmegen B.V.",
		( 

			"2a0d:2406:3c00::/48"
		)
	),
	( "# AS20766 Association Gitoyen",
		( 

			"2001:910::/32","2001:913:4000::/36","2a04:9ac2::/32","2a0f:6780::/29","2a0f:e580:b::/48"
		)
	),
	( "# AS2027 MilkyWan Association",
		( 

			"2a0b:cbc0::/32","2a0e:e700::/31","2a0f:ce00::/29"
		)
	),
	( "# AS44679 INVITE Systems SRL",
		( 

			"2a02:2160:8000::/36"
		)
	),
	( "# AS22168 The Shadowserver Foundation, Inc.",
		( 

			"2001:550:d0c::/48"
		)
	),
	( "# AS152320 GOALNOW NETWORK TECHNOLOGY CO., LIMITED",
		( 

			"2001:df0:a640::/47"
		)
	),
	( "# AS43861 Circle B B.V.",
		( 

			"2001:678:348::/48","2a13:acc0::/32"
		)
	),
	( "# AS209559 Evann DREUMONT",
		( 

			"2a0e:f43:2::/48"
		)
	),
	( "# AS50053 Anton Levin",
		( 

			"2a0d:6c2:14::/48","2a0d:6c2:16::/47","2a0d:6c2:24::/47","2a11:2cc0:2::/47","2a11:2cc0:6::/47","2a11:2cc0:8::/47","2a11:2cc0:10::/47"
		)
	),
	( "# AS64457 Matteo Fruhwald trading as PipeHost e.U.",
		( 

			"2a14:7c0:f100::/40","2a14:7c0:f300::/40"
		)
	),
	( "# AS216141 Marco Fontana",
		( 

			"2a11:f2c0:ffc7::/48"
		)
	),
	( "# AS209823 Enki Multimedia EURL",
		( 

			"2a12:5541:1::/48","2a12:5541:2::/48","2a12:5541:a::/48","2a12:5541:100::/48","2a12:5541:200::/48","2a12:5541:331::/48","2a12:5542::/32"
		)
	),
	( "# AS210924 ssd networks limited",
		( 

			"2a14:c100::/29"
		)
	),
	( "# AS47464 Address Management Inc.",
		( 

			"2a07:ca00::/30","2a07:ca04::/31","2a07:ca06::/32"
		)
	),
	( "# AS199669 Okay-Telecom Ltd.",
		( 

			"2a03:ec0::/47","2a11:2084::/32","2a11:8305::/32","2a11:aac4::/32","2a11:c107::/32"
		)
	),
	( "# AS201211 LLC Drugoy Telecom",
		( 

			"2a05:3e80::/29"
		)
	),
	( "# AS60230 Neterra Ltd.",
		( 

			"2a00:1728:a::/48"
		)
	),
	( "# AS207713 GLOBAL INTERNET SOLUTIONS LLC",
		( 

			"2a05:541:100::/48","2a05:541:115::/48","2a05:541:120::/48","2a05:541:142::/48","2a05:541:145::/48","2a05:544::/32"
		)
	),
	( "# AS49111 iNet Ltd",
		( 

			"2a0e:9c0::/29","2a0e:7300::/29","2a0e:98c0::/29","2a11:6700::/29","2a11:8c80::/29","2a11:8cc0::/29","2a12:1ec0::/29","2a12:1f40::/29","2a12:3240::/29","2a12:4680::/29","2a12:4980::/29","2a12:6100::/29","2a12:6980::/29","2a12:7d00::/29","2a12:9180::/29","2a12:be00::/29","2a12:da00::/29","2a12:e900::/29"
		)
	),
	( "# AS51711 iNet Ltd",
		( 

			"2a00:b700::/48","2a00:b704::/32","2a0d:3c45::/32","2a0e:7f46::/32"
		)
	),
	( "# AS205125 Network Management Ltd",
		( 

			"2a03:e2c0::/32","2a0c:4185::/32","2a0d:8340::/32","2a0d:8343::/32"
		)
	),
	( "# AS211720 Datashield, Inc.",
		( 

			"2a0c:4d00::/36"
		)
	),
	( "# AS211922 IP Connect Inc",
		( 

			"2a10:5fc7::/47"
		)
	),
	( "# AS133772 New Eagle Ltd",
		( 

			"2001:df1:f400::/48"
		)
	),
	( "# AS204615 IP Fiber Inc",
		( 

			"2a13:2a00:2::/48"
		)
	),
	( "# AS43180 Trunk Networks LTD",
		( 

			"2a09:2dc2::/31"
		)
	),
	( "# AS213438 ColocaTel Inc.",
		( 

			"2a06:a001:a010::/44","2a0f:ca80::/47","2a0f:ca80:619::/48","2a0f:ca80:1100::/40","2a0f:ca80:1337::/48","2a0f:ca80:1338::/48","2a0f:ca80:abcd::/48","2a0f:ca80:f000::/40","2a0f:ca83:1337::/48","2a0f:ca84::/40","2a0f:ca86::/40","2a13:29c0::/29"
		)
	),
	( "# AS37740 IPTP Inc",
		( 

			"2a03:9d40:4000::/40"
		)
	),
	( "# AS213373 IPConnect",
		( 

			"2a10:5fc0::/31"
		)
	),
	( "# AS328543 Sun Network Company Limited",
		( 

			"2a0c:640::/29","2a0c:9380::/29","2a0c:f480::/29","2a0d:2480::/29","2a0e:4c80::/29","2c0f:2800::/32"
		)
	),
	( "# AS29222 Infomaniak Network SA",
		( 

			"2001:1600::/32","2a01:4f40::/32"
		)
	),
	( "# AS43357 Owl Limited",
		( 

			"2a03:d9c0:3000::/47","2a07:d880::/32","2a07:d881:3::/48","2a07:d883:200::/48","2a07:d883:300::/48","2a07:d883:400::/48","2a07:d884::/48","2a07:d884:100::/48","2a07:d887::/33","2a07:d887:8000::/34","2a07:d887:c000::/35","2a07:d887:e000::/36","2a07:d887:f000::/37","2a11:3:500::/40"
		)
	),
	( "# AS23959 Owl Limited",
		( 

			"2403:fbc0:7000::/48"
		)
	),
	( "# AS213205 COOOLBE LTD",
		( 

			"2a13:2380::/29"
		)
	),
	( "# AS24013 SB Professional Services",
		( 

			"2a09::/48","2a11::/48"
		)
	),
	( "# AS26737 TREE TELECOM",
		( 

			"2602:f894:100::/46","2602:f894:105::/48","2602:f894:107::/48","2602:f894:108::/47","2602:f894:10a::/48","2602:f894:10c::/47","2602:f894:10e::/48","2602:f894:201::/48","2602:f894:202::/48","2602:f894:204::/47","2602:f894:207::/48","2602:f894:209::/48","2602:f894:20b::/48","2602:f894:20c::/47","2602:f894:301::/48","2602:f894:302::/47","2602:f894:306::/48","2602:f894:30b::/48","2602:f894:30d::/48","2602:f894:30e::/48"
		)
	),
	( "# AS210387 Guardy Limited",
		( 

			"2a14:9401:4000::/36"
		)
	),
	( "# AS132088 Wind Cloud Network Technology Co Ltd",
		( 

			"2402:e940:20::/43","2402:e940:40::/44","2402:e940:60::/43","2402:e940:80::/41","2402:e940:100::/42"
		)
	),
	( "# AS36832 Network Gibbon LLC",
		( 

			"2602:f8c4::/40"
		)
	),
	( "# AS400992 ZhouyiSat Communications",
		( 

			"2602:f909::/40","2a0d:6c2::/48","2a0d:6c2:6::/47","2a0d:6c2:11::/48","2a0d:6c2:12::/47","2a0d:6c2:26::/47"
		)
	),
	( "# AS30823 aurologic GmbH",
		( 

			"2602:fa59::/40","2a01:367::/32","2a09:38c0::/29","2a0c:6a40::/29","2a0d:4cc0::/29","2a0e:5100::/29","2a0e:b540::/29"
		)
	),
	( "# AS211138 Private-Hosting di Cipriano oscar",
		( 

			"2a05:4140:500::/48"
		)
	),
	( "# AS198037 SPACECORE SOLUTION LTD",
		( 

			"2a13:7dc0:1000::/36","2a13:7dc0:2000::/36","2a13:7dc0:4000::/36","2a13:7dc7:fffe::/47"
		)
	),
	( "# AS204457 Atlantis Telekomunikasyon Bilisim Hizmetleri San. Tic. Ltd",
		( 

			"2a0a:a580::/29"
		)
	),
	( "# AS205787 Public Cloud Ltd.",
		( 

			"2a0b:1640:1::/48"
		)
	),
	( "# AS208236 Adrian Reyer",
		( 

			"2a0f:d600::/30","2a0f:d604::/31","2a0f:d606::/32"
		)
	),
	( "# AS62000 SERVERD SAS",
		( 

			"2a07:abc0::/29","2a09:6382::/31","2a09:6384::/31","2a09:6386::/32","2a0b:b140::/29"
		)
	),
	( "# AS214138 Julian Kempf trading as Host-Zentrum",
		( 

			"2a11:29c0:4d::/48"
		)
	),
	( "# AS215730 H2NEXUS LTD",
		( 

			"2a0b:4142::/31","2a0e:d600::/32","2a0e:d604:1::/48"
		)
	),
	( "# AS203391 Cloud DNS Ltd",
		( 

			"2a06:fb00:1::/48","2a06:fb00:2::/47","2a06:fb00:4::/48"
		)
	),
	( "# AS47440 BUSINESS SYSTEM TELEHOUSE, OOO (Chang Way Technologies Co. Limited)",
		( 

			"2a04:4a00::/29"
		)
	),
	( "# AS49447 Nice IT Services Group Inc.",
		( 

			"2a0e:fa00::/48"
		)
	),
	( "# AS328383 xTom Limited",
		( 

			"2c0f:ec00::/48"
		)
	),
	( "# AS214382 Bulent Aydin trading as Hostlayici",
		( 

			"2a13:a440:8::/48"
		)
	),
	( "# AS35661 VIRTUA SYSTEMS SAS",
		( 

			"2a07:8dc0::/31","2a0d:e680::/32"
		)
	),
	( "# AS35372 GeniusMind S.A.",
		( 

			"2a0c:b100:2::/47"
		)
	),
	( "# AS213693 Imad Nabil Daher trading as ID Performance",
		( 

			"2a0f:85c1:b36::/48"
		)
	),
	( "# AS215925 VPSVAULT.HOST LTD",
		( 

			"2604:be0:fff0::/44"
		)
	),
	( "# AS213613 BOTSHIELD LTD",
		( 

			"2a0f:ca82:b00b::/48"
		)
	),
	( "# AS203363 Kuroit Limited",
		( 

			"2401:8360:a2::/47","2a05:4140:19::/48","2a05:4140:700::/40"
		)
	),
	( "# AS214329 BGP Network LLC",
		( 

			"2606:6080:1010::/48","2a03:5840:120::/48"
		)
	),
	( "# AS215762 Bullet Group LTD",
		( 

			"2a0f:ca81:b00b::/48"
		)
	),
	( "# AS43641 SOLLUTIUM EU Sp z.o.o.",
		( 

			"2604:2820::/32","2a06:9f47::/32","2a09:2dc1::/32","2a10:fa82:d000::/36","2a11:6100::/31","2a13:e104::/32"
		)
	),
	( "# AS214223 Luis Jakob Bartel",
		( 

			"2a05:dfc3:fa05::/48","2a0a:6044:6405::/48","2a0a:6044:c111::/48","2a0a:6044:c112::/47","2a0c:9a46:1012::/47","2a0c:9a46:1014::/48","2a0c:9a46:1023::/48","2a0c:9a46:1024::/48","2a0c:9a46:1034::/48","2a0c:b641:d01::/48","2a14:7581:3701::/48","2a14:7581:3702::/47","2a14:7581:3704::/46","2a14:7581:3708::/47","2a14:7586:7a01::/48","2a14:7586:7a02::/47","2a14:7586:7a04::/46","2a14:7586:7a08::/47","2a14:7586:7b01::/48","2a14:7586:7b02::/47","2a14:7586:7b04::/46","2a14:7586:7b08::/47","2a14:7586:7c01::/48","2a14:7586:7c02::/47","2a14:7586:7c04::/46","2a14:7586:7c08::/47"
		)
	),
	( "# AS200081 Netversor GmbH",
		( 

			"2a02:6aa0::/32","2a04:5340::/47","2a04:5340:2::/48","2a04:5340:4::/47"
		)
	),
	( "# AS215659 Aokigahara SRL",
		( 

			"2a0f:85c1:356::/48"
		)
	),
	( "# AS210718 FIVE CYBER HOST SECURITY S.R.L.",
		( 

			"2a0f:9400:7e01::/48"
		)
	),
	( "# AS212512 Detai Prosperous Technologies Limited",
		( 

			"2403:fbc0:a001::/48","2403:fbc0:a002::/48","2a07:d885::/46","2a07:d885:4::/47","2a07:d885:6::/48"
		)
	),
	( "# AS39351 31173 Services AB",
		( 

			"2a03:1b20::/45","2a03:1b20:8::/46","2a03:1b20:c::/47","2a03:1b20:901::/48","2a03:1b20:bef1::/48","2a03:1b20:bef2::/48","2a03:1b21:100::/47","2a03:1b21:120::/48","2a06:de00:15::/48","2a06:de00:19::/48","2a07:e344::/32"
		)
	),
	( "# AS59939 WIBO Baltic UAB",
		( 

			"2a04:9640::/31","2a04:9642::/32","2a0b:22c0::/29"
		)
	),
	( "# AS207957 SERV.HOST GROUP LTD",
		( 

			"2a01:ecc0:2c1::/48","2a01:ecc0:3c0::/42","2a01:ecc0:400::/42","2a01:ecc0:480::/41","2a01:ecc0:500::/41","2a01:ecc0:b00::/40"
		)
	),
	( "# AS214194 Justin Nolte",
		( 

			"2a06:de01:160::/44","2a06:de01:180::/44"
		)
	),
	( "# AS215569 Florian Bach",
		( 

			"2a07:2486:4010::/44"
		)
	),
	( "# AS140941 Full Time Hosting",
		( 

			"2001:df4:4f80::/48"
		)
	),
	( "# AS202468 Noyan Abr Arvan Co. ( Private Joint Stock)",
		( 

			"2a07:3900::/29"
		)
	),
	( "# AS215439 PLAY2GO INTERNATIONAL LIMITED",
		( 

			"2a12:bec4:10b0::/44","2a12:bec4:1180::/44"
		)
	),
	( "# AS215096 Ruslan Ulyanov",
		( 

			"2a0d:d940:9000::/48"
		)
	),
	( "# AS43317 SIA VEESP",
		( 

			"2a00:1838::/32","2a0a:4784::/32"
		)
	),
	( "# AS42532 SIA VEESP",
		( 

			"2a0c:16c0::/30","2a11:8100::/32"
		)
	),
	( "# AS23507 AV SERVICES LLC",
		( 

			"2602:f704:c00::/38","2a0a:79c7:f400::/40","2a0a:79c7:f700::/40","2a0a:79c7:fb00::/40","2a14:7580:ff9b::/48"
		)
	),
	( "# AS214481 Wojciech Czapkowicz",
		( 

			"2a0f:85c1:840::/48","2a12:bec4:12a2::/48","2a14:1ec7:1000::/40"
		)
	),
	( "# AS215311 Regxa Company for Information Technology Ltd",
		( 

			"2a14:4200::/29"
		)
	),
	( "# AS202520 SkyPass Solutions Sp. z.o.o.",
		( 

			"2001:67c:b58::/48"
		)
	),
	( "# AS216078 Liam Kremer",
		( 

			"2a14:7c0:e0::/43","2a14:9e00:800::/39"
		)
	),
	( "# AS211507 Julian Achter",
		( 

			"2a14:c380::/29"
		)
	),
	( "# AS23470 ReliableSite.Net LLC",
		( 

			"2407:9d00:10::/48","2602:f7f8:6::/48","2602:fa4f:300::/40","2602:fafd:902::/48","2602:fafd:fe0::/48","2602:fb54:140::/47","2602:fb54:142::/48","2602:fd09:100::/42","2605:9880::/39","2605:9880:200::/40","2605:9880:300::/42","2605:9880:340::/48","2605:9880:344::/47","2605:9880:400::/42","2a0c:8fc3::/40","2a0c:8fc3:6400::/40","2a0c:8fc3:8000::/40","2a12:a800:9::/48"
		)
	),
	( "# AS262954 VirtuaServer Informatica Ltda",
		( 

			"2804:e6c:3000::/36","2804:e6c:4000::/36"
		)
	),
	( "# AS213887 WAIcore Ltd",
		( 

			"2a0b:4141::/36","2a0b:4141:9000::/36","2a0b:4141:e000::/36","2a0d:d940:d0::/44","2a0d:d940:1c00::/40","2a0d:d940:1e00::/40","2a14:7583:a800::/37"
		)
	),
	( "# AS207728 EUROHOSTER Ltd.",
		( 

			"2a12:9cc0::/47"
		)
	),
	( "# AS52073 I2SNETWORK SAS",
		( 

			"2a10:4646:120::/48"
		)
	),
	( "# AS53514 UHQ Services LLC",
		( 

			"2602:f8da::/48"
		)
	),
	( "# AS212815 Dyjix SAS",
		( 

			"2a10:4640::/32"
		)
	),
	( "# AS216117 Association CLIENTXCMS",
		( 

			"2a10:4646:122::/48"
		)
	),
	( "# AS19879 Propel Labs, LLC",
		( 

			"2602:f9a6:1::/48","2602:f9a6:a::/48"
		)
	),
	( "# AS216222 Julien Bellier",
		( 

			"2a13:cc87:fc01::/48"
		)
	),
	( "# AS61756 NETPONTAL PROVEDOR DE INTERNET LTDA - ME",
		( 

			"2804:1be8::/32"
		)
	),
	( "# AS212441 Cloud assets LLC",
		( 

			"2a10:9200::/47"
		)
	),
	( "# AS401970 CASILAFLOWER",
		( 

			"2602:f569::/40"
		)
	),
	( "# AS262415 OPEN PROCESSAMENTO DE DADOS LTDA",
		( 

			"2804:418::/41","2804:418:400::/41","2804:418:3000::/41"
		)
	)
)
Remove-ExistingRules -Name $RuleName
Add-FirewallRules -Networks $Networksv6 -Name $RuleName