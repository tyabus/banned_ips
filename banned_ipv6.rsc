#
# Last Update: 19/05/2025
#
/ipv6 firewall address-list
# scan-16-0c.shadowserver.org
add list=Blacklist comment="The Shadowserver Foundation, Inc." address=2001:0470:0001:0c84::/64
add list=Blacklist comment="The Shadowserver Foundation, Inc." address=2001:0470:0001:0332::/64
add list=Blacklist comment="The Shadowserver Foundation, Inc." address=2001:0470:02cc:0001::/64
add list=Blacklist comment="The Shadowserver Foundation, Inc." address=2001:0470:0001:0fb5::/64
add list=Blacklist comment="Address Management Inc." address=2a07:ca00::/29
# https://bgp.tools/rir-owner/ru.avm ( XHOST LP )
add list=Blacklist comment="XHOST" address=2a0d:6c0::/29
add list=Blacklist comment="XHOST" address=2a0d:65c0::/29
# https://bgp.tools/rir-owner/ca.blackhost ( BlackHOST )
add list=Blacklist comment="BlackHOST" address=2a01:e940::/48
add list=Blacklist comment="BlackHOST" address=2a01:e941::/48
add list=Blacklist comment="BlackHOST" address=2a01:e942::/48
add list=Blacklist comment="BlackHOST" address=2a01:e943::/48
add list=Blacklist comment="BlackHOST" address=2a01:e944::/48
add list=Blacklist comment="BlackHOST" address=2a01:e946::/48
# AS398324 Censys, Inc.
add list=Blacklist comment="398324" address=2602:80d:1000::/48
add list=Blacklist comment="398324" address=2602:80d:1006::/48
add list=Blacklist comment="398324" address=2620:96:e000::/48
# AS398722 Censys, Inc.
add list=Blacklist comment="398722" address=2602:80d:1003::/48
add list=Blacklist comment="398722" address=2602:80d:1004::/48
# AS398705 Censys, Inc.
add list=Blacklist comment="398705" address=2602:80d:1002::/48
add list=Blacklist comment="398705" address=2602:80d:1005::/48
# AS10439 CariNet, Inc.
add list=Blacklist comment="10439" address=2607:ff10::/32
# AS211680 NSEC - Sistemas Informaticos, S.A.
add list=Blacklist comment="211680" address=2a10:3c0:1::/48
add list=Blacklist comment="211680" address=2a10:3c0:2::/48
# AS12989 StackPath LLC
add list=Blacklist comment="12989" address=2a01:e945::/48
add list=Blacklist comment="12989" address=2a01:e947::/48
# AS211298 Driftnet Ltd
add list=Blacklist comment="211298" address=2a06:4880::/30
# AS211607 Securitytrails, LLC
add list=Blacklist comment="211607" address=2001:678:e70::/48
add list=Blacklist comment="211607" address=2a10:b640:3000::/36
add list=Blacklist comment="211607" address=2a10:b641::/36
# AS49305 Alsycon B.V.
add list=Blacklist comment="49305" address=2a0e:3ec0::/29
# AS49870 Alsycon B.V.
add list=Blacklist comment="49870" address=2a0e:3980::/29
# AS208911 Alsycon B.V.
add list=Blacklist comment="208911" address=2a11:8280::/29
# AS57717 FiberXpress BV
add list=Blacklist comment="57717" address=2a0b:b7c0::/29
# AS202425 IP Volume inc
add list=Blacklist comment="202425" address=2a02:6c8:8000::/33
# AS50360 Tamatiya EOOD
add list=Blacklist comment="50360" address=2001:67c:15e0::/48
# AS207812 DM AUTO EOOD
add list=Blacklist comment="207812" address=2001:678:ff8::/48
# AS202325 4Media Ltd.
add list=Blacklist comment="202325" address=2001:678:f08::/48
# AS206264 Amarutu Technology Ltd
add list=Blacklist comment="206264" address=2001:590:3803::/48
add list=Blacklist comment="206264" address=2402:7840::/32
add list=Blacklist comment="206264" address=2a00:1ca8:2c::/48
add list=Blacklist comment="206264" address=2a0d:1000::/29
# AS63961 Bangladesh Research and Education Network (BdREN)
add list=Blacklist comment="63961" address=2402:f500::/32
# AS17884 PT. Uninet Media Sakti (ISP)
add list=Blacklist comment="17884" address=2402:7980::/32
# AS42318 FastBit AB
add list=Blacklist comment="42318" address=2a05:5580::/29
# AS43463 INFOCOM UK LTD
add list=Blacklist comment="43463" address=2a00:ea60:200::/40
# AS216246 Aeza Group Ltd.
add list=Blacklist comment="216246" address=2a01:e5c0::/35
add list=Blacklist comment="216246" address=2a0f:cdc6:2010::/44
add list=Blacklist comment="216246" address=2a0f:cdc6:2020::/44
# AS210644 AEZA INTERNATIONAL LTD
add list=Blacklist comment="210644" address=2a01:e5c0:2000::/35
add list=Blacklist comment="210644" address=2a01:e5c0:4000::/34
add list=Blacklist comment="210644" address=2a01:e5c0:8003::/48
add list=Blacklist comment="210644" address=2a01:e5c0:8004::/48
add list=Blacklist comment="210644" address=2a01:e5c0:9000::/36
add list=Blacklist comment="210644" address=2a0b:4140:1000::/36
add list=Blacklist comment="210644" address=2a0b:4140:2000::/35
add list=Blacklist comment="210644" address=2a0b:4140:4000::/34
add list=Blacklist comment="210644" address=2a0b:4140:9000::/36
add list=Blacklist comment="210644" address=2a0b:4140:a000::/35
add list=Blacklist comment="210644" address=2a0b:4140:c000::/34
add list=Blacklist comment="210644" address=2a0e:b107:2780::/46
add list=Blacklist comment="210644" address=2a0e:d606::/48
add list=Blacklist comment="210644" address=2a0f:4f80::/29
add list=Blacklist comment="210644" address=2a0f:cdc6:5030::/44
add list=Blacklist comment="210644" address=2a11:fc80::/29
add list=Blacklist comment="210644" address=2a12:5940:1::/48
add list=Blacklist comment="210644" address=2a12:5940:1000::/36
add list=Blacklist comment="210644" address=2a12:5940:2000::/35
add list=Blacklist comment="210644" address=2a12:5940:4000::/34
add list=Blacklist comment="210644" address=2a12:5940:8000::/33
# AS215590 DpkgSoft International Limited
add list=Blacklist comment="215590" address=2a0f:cdc6:10::/44
add list=Blacklist comment="215590" address=2a0f:cdc6:20::/43
# AS216309 InvisionTech Group S.r.l.
add list=Blacklist comment="216309" address=2a14:7584:4100::/40
# AS49418 NETSHIELD LTD
add list=Blacklist comment="49418" address=2a01:ecc0:280::/42
add list=Blacklist comment="49418" address=2a01:ecc0:640::/42
add list=Blacklist comment="49418" address=2a0f:cdc6:45::/48
add list=Blacklist comment="49418" address=2a0f:cdc6:777::/48
add list=Blacklist comment="49418" address=2a0f:cdc6:1001::/48
add list=Blacklist comment="49418" address=2a0f:cdc6:1005::/48
# AS212477 RoyaleHosting BV
add list=Blacklist comment="212477" address=2001:3080::/29
add list=Blacklist comment="212477" address=2a0a:7d00::/29
add list=Blacklist comment="212477" address=2a0b:64c0:1::/48
add list=Blacklist comment="212477" address=2a0b:64c0:2::/47
add list=Blacklist comment="212477" address=2a0b:64c0:4::/46
add list=Blacklist comment="212477" address=2a0b:64c0:8::/48
add list=Blacklist comment="212477" address=2a0b:64c0:a::/47
add list=Blacklist comment="212477" address=2a0b:64c0:e::/48
add list=Blacklist comment="212477" address=2a0b:64c0:10::/46
add list=Blacklist comment="212477" address=2a0b:64c0:17::/48
add list=Blacklist comment="212477" address=2a0b:64c0:18::/48
add list=Blacklist comment="212477" address=2a0b:64c0:1a::/48
add list=Blacklist comment="212477" address=2a0b:64c0:1c::/47
add list=Blacklist comment="212477" address=2a0b:64c0:f000::/47
add list=Blacklist comment="212477" address=2a0b:64c0:f002::/48
add list=Blacklist comment="212477" address=2a0b:64c0:f800::/46
add list=Blacklist comment="212477" address=2a0b:64c0:f804::/48
add list=Blacklist comment="212477" address=2a0b:64c0:f806::/47
add list=Blacklist comment="212477" address=2a0b:64c0:f808::/48
add list=Blacklist comment="212477" address=2a0b:64c0:ffe0::/48
add list=Blacklist comment="212477" address=2a0c:4880::/29
add list=Blacklist comment="212477" address=2a0c:d380::/29
add list=Blacklist comment="212477" address=2a0e:a780::/29
add list=Blacklist comment="212477" address=2a0e:e980::/29
add list=Blacklist comment="212477" address=2a0f:14c0::/29
add list=Blacklist comment="212477" address=2a0f:1540::/29
add list=Blacklist comment="212477" address=2a0f:1740::/29
add list=Blacklist comment="212477" address=2a0f:17c0::/29
add list=Blacklist comment="212477" address=2a0f:1840::/29
add list=Blacklist comment="212477" address=2a0f:2dc0::/29
add list=Blacklist comment="212477" address=2a0f:2ec0::/29
add list=Blacklist comment="212477" address=2a0f:de40::/29
add list=Blacklist comment="212477" address=2a0f:e140::/29
add list=Blacklist comment="212477" address=2a0f:e3c0::/29
add list=Blacklist comment="212477" address=2a0f:e5c0::/29
add list=Blacklist comment="212477" address=2a13:2bc0::/29
add list=Blacklist comment="212477" address=2a13:2e40::/29
add list=Blacklist comment="212477" address=2a13:bd40::/29
add list=Blacklist comment="212477" address=2a13:d100::/29
add list=Blacklist comment="212477" address=2a13:d1c0::/29
add list=Blacklist comment="212477" address=2a13:dcc0::/29
add list=Blacklist comment="212477" address=2a13:dd40::/29
add list=Blacklist comment="212477" address=2a13:fa00::/29
add list=Blacklist comment="212477" address=2a13:fd00::/29
add list=Blacklist comment="212477" address=2a14:68c0::/29
# AS210352 Yijia Xu
add list=Blacklist comment="210352" address=2a14:67c1:a090::/47
add list=Blacklist comment="210352" address=2a14:67c1:a092::/48
# AS215540 GLOBAL CONNECTIVITY SOLUTIONS LLP
add list=Blacklist comment="215540" address=2a00:b703:fff1::/48
add list=Blacklist comment="215540" address=2a00:b703:fff2::/48
add list=Blacklist comment="215540" address=2a05:541:102::/47
add list=Blacklist comment="215540" address=2a05:541:104::/47
add list=Blacklist comment="215540" address=2a05:541:107::/48
add list=Blacklist comment="215540" address=2a05:541:108::/47
add list=Blacklist comment="215540" address=2a05:541:110::/46
add list=Blacklist comment="215540" address=2a05:541:114::/48
add list=Blacklist comment="215540" address=2a05:541:116::/48
add list=Blacklist comment="215540" address=2a05:541:119::/48
add list=Blacklist comment="215540" address=2a05:541:121::/48
add list=Blacklist comment="215540" address=2a05:541:122::/47
add list=Blacklist comment="215540" address=2a05:541:124::/46
add list=Blacklist comment="215540" address=2a05:541:129::/48
add list=Blacklist comment="215540" address=2a05:541:131::/48
add list=Blacklist comment="215540" address=2a05:541:133::/48
add list=Blacklist comment="215540" address=2a05:541:134::/47
add list=Blacklist comment="215540" address=2a05:541:137::/48
add list=Blacklist comment="215540" address=2a05:541:138::/47
add list=Blacklist comment="215540" address=2a05:541:141::/48
add list=Blacklist comment="215540" address=2a05:541:150::/46
add list=Blacklist comment="215540" address=2a05:541:156::/47
add list=Blacklist comment="215540" address=2a05:541:158::/47
# AS132203 Tencent Building, Kejizhongyi Avenue
add list=Blacklist comment="132203" address=240d:c000:1000::/36
add list=Blacklist comment="132203" address=240d:c000:2000::/35
add list=Blacklist comment="132203" address=240d:c000:6000::/36
add list=Blacklist comment="132203" address=240d:c000:7000::/44
add list=Blacklist comment="132203" address=240d:c000:f000::/44
add list=Blacklist comment="132203" address=240d:c000:f020::/43
add list=Blacklist comment="132203" address=240d:c000:f040::/42
add list=Blacklist comment="132203" address=240d:c000:f0c0::/42
add list=Blacklist comment="132203" address=240d:c010:14::/48
add list=Blacklist comment="132203" address=240d:c010:16::/48
add list=Blacklist comment="132203" address=240d:c010:20::/44
add list=Blacklist comment="132203" address=240d:c010:30::/48
add list=Blacklist comment="132203" address=240d:c010:58::/48
add list=Blacklist comment="132203" address=240d:c010:5c::/48
add list=Blacklist comment="132203" address=240d:c010:68::/48
add list=Blacklist comment="132203" address=240d:c010:6f::/48
add list=Blacklist comment="132203" address=240d:c040::/43
# AS34465 NCRYPTD NET LTD
add list=Blacklist comment="34465" address=2602:29f:270::/44
add list=Blacklist comment="34465" address=2a12:8fc6:5ee::/48
add list=Blacklist comment="34465" address=2a12:8fc6:a051::/48
add list=Blacklist comment="34465" address=2a12:8fc6:a1c3::/48
add list=Blacklist comment="34465" address=2a12:8fc6:a517::/48
add list=Blacklist comment="34465" address=2a12:8fc6:aa00::/48
add list=Blacklist comment="34465" address=2a12:8fc6:ace1::/48
add list=Blacklist comment="34465" address=2a12:8fc6:ace2::/47
add list=Blacklist comment="34465" address=2a12:8fc6:ae44::/48
add list=Blacklist comment="34465" address=2a12:8fc6:bab0::/48
add list=Blacklist comment="34465" address=2a12:8fc6:bdee::/48
add list=Blacklist comment="34465" address=2a12:8fc6:be01::/48
add list=Blacklist comment="34465" address=2a12:8fc6:c31a::/48
add list=Blacklist comment="34465" address=2a12:8fc6:c341::/48
add list=Blacklist comment="34465" address=2a12:8fc6:ca1c::/48
add list=Blacklist comment="34465" address=2a12:8fc6:caa0::/48
add list=Blacklist comment="34465" address=2a12:8fc6:cae1::/48
add list=Blacklist comment="34465" address=2a12:8fc6:cc00::/48
add list=Blacklist comment="34465" address=2a12:8fc6:cc21::/48
add list=Blacklist comment="34465" address=2a12:8fc6:cd04::/48
add list=Blacklist comment="34465" address=2a12:8fc6:ceca::/48
add list=Blacklist comment="34465" address=2a12:8fc6:daa0::/48
add list=Blacklist comment="34465" address=2a12:8fc6:dae0::/48
add list=Blacklist comment="34465" address=2a12:8fc6:dbaa::/48
add list=Blacklist comment="34465" address=2a12:8fc6:eaca::/48
add list=Blacklist comment="34465" address=2a12:8fc6:ee01::/48
add list=Blacklist comment="34465" address=2a12:8fc6:efdf::/48
add list=Blacklist comment="34465" address=2a12:8fc6:fae0::/48
# AS136180 Beijing Tiantexin Tech. Co., Ltd.
add list=Blacklist comment="136180" address=2400:87c0::/32
# AS150860 JETCLOUD TECHNOLOGY CO., LTD
add list=Blacklist comment="150860" address=2401:1760::/48
# AS205100 F3 Netze e.V.
add list=Blacklist comment="205100" address=2a0b:f4c0::/40
add list=Blacklist comment="205100" address=2a0b:f4c0:100::/48
add list=Blacklist comment="205100" address=2a0b:f4c0:16c::/48
add list=Blacklist comment="205100" address=2a0b:f4c0:1a4::/48
add list=Blacklist comment="205100" address=2a0b:f4c0:1b4::/48
add list=Blacklist comment="205100" address=2a0b:f4c0:400::/48
# AS14987 Rethem Hosting LLC
add list=Blacklist comment="14987" address=2607:8500::/32
# AS198644 NET42, svetovanje in razvoj internetnih resitev, d.o.o.
add list=Blacklist comment="198644" address=2001:67c:27e4::/48
# AS150156 99IT
add list=Blacklist comment="150156" address=2001:df1:1940::/48
# AS133398 Tele Asia Limited
add list=Blacklist comment="133398" address=2401:f9c0:2600::/40
add list=Blacklist comment="133398" address=2406:4300::/32
add list=Blacklist comment="133398" address=2a10:1fc0::/48
# AS204333 Witalij Koweschnikow
add list=Blacklist comment="204333" address=2a13:5681:1::/48
add list=Blacklist comment="204333" address=2a13:5681:4::/48
add list=Blacklist comment="204333" address=2a13:5681:6::/47
add list=Blacklist comment="204333" address=2a13:5681:8::/46
# AS48721 Flyservers S.A.
add list=Blacklist comment="48721" address=2a10:9100:3::/48
# AS209588 Flyservers S.A.
add list=Blacklist comment="209588" address=2a10:9100:7::/48
add list=Blacklist comment="209588" address=2a10:9100:9::/48
add list=Blacklist comment="209588" address=2a10:9107:f000::/36
# AS267784 Flyservers S.A.
add list=Blacklist comment="267784" address=2803:5120:c000::/36
# AS60729 Stiftung Erneuerbare Freiheit
add list=Blacklist comment="60729" address=2a0a:4587:2010::/46
add list=Blacklist comment="60729" address=2a0b:f4c1:2::/48
add list=Blacklist comment="60729" address=2a0b:f4c2::/40
# AS62068 SpectraIP B.V.
add list=Blacklist comment="62068" address=2a0d:2400::/30
add list=Blacklist comment="62068" address=2a0d:2404::/31
add list=Blacklist comment="62068" address=2a0d:2406::/39
add list=Blacklist comment="62068" address=2a0d:2407::/32
add list=Blacklist comment="62068" address=2a0d:2780::/29
add list=Blacklist comment="62068" address=2a0e:16c0::/29
add list=Blacklist comment="62068" address=2a0e:1740::/29
add list=Blacklist comment="62068" address=2a0e:2000::/29
add list=Blacklist comment="62068" address=2a11:b240::/29
add list=Blacklist comment="62068" address=2a12:a8c0::/29
# AS64439 IT Outsourcing LLC
add list=Blacklist comment="64439" address=2a0b:b200::/32
# AS51115 HLL LLC
add list=Blacklist comment="51115" address=2a03:70c0::/32
# AS210630 IncogNET LLC
add list=Blacklist comment="210630" address=2602:fc24::/44
add list=Blacklist comment="210630" address=2602:fc24:10::/45
add list=Blacklist comment="210630" address=2602:fc24:18::/47
add list=Blacklist comment="210630" address=2602:fc24:20::/48
add list=Blacklist comment="210630" address=2602:fc24:100::/40
# AS212461 Nemtcov Nikolai Alexandrovich
add list=Blacklist comment="212461" address=2a0b:6900:1ad::/48
# AS268105 N.F.F.NETWORK SERVICOS DE TELECOMUNICACOES LTDA
add list=Blacklist comment="268105" address=2804:5814::/32
# AS4224 The Calyx Institute
add list=Blacklist comment="4224" address=2602:fef9:100::/48
add list=Blacklist comment="4224" address=2602:fef9:400::/48
# AS13627 Ambyre LLC
add list=Blacklist comment="13627" address=2602:fba3::/38
# AS201814 MEVSPACE sp. z o.o.
add list=Blacklist comment="201814" address=2a03:cfc0::/32
add list=Blacklist comment="201814" address=2a09:d580::/29
add list=Blacklist comment="201814" address=2a12:a800:2::/48
# AS207208 MEVSPACE sp. z o.o.
add list=Blacklist comment="207208" address=2001:67c:2498::/48
# AS61280 FGUP GRCHC
add list=Blacklist comment="61280" address=2a0c:a9c7:156::/47
add list=Blacklist comment="61280" address=2a0c:a9c7:158::/48
# AS61272 Informacines sistemos ir technologijos, UAB
add list=Blacklist comment="61272" address=2a02:e00:ffe7::/48
add list=Blacklist comment="61272" address=2a04:2180::/32
add list=Blacklist comment="61272" address=2a04:2181:c010::/47
add list=Blacklist comment="61272" address=2a04:2181:c012::/48
# AS399486 12651980 CANADA INC.
add list=Blacklist comment="399486" address=2001:550:601::/48
add list=Blacklist comment="399486" address=2a0f:85c1:3d9::/48
# AS44097 CLEMENT CAVADORE
add list=Blacklist comment="44097" address=2001:67c:ec::/48
# AS400130 Hebergement Serv3r.net inc.
add list=Blacklist comment="400130" address=2602:fb53::/40
# AS200136 Association LibraHost
add list=Blacklist comment="200136" address=2a0e:b107:12d::/48
# AS198831 Association HOLYCLOUD
add list=Blacklist comment="198831" address=2a0c:b641:d70::/44
add list=Blacklist comment="198831" address=2a10:4646:2d0::/44
add list=Blacklist comment="198831" address=2a10:4646:3f0::/44
# AS210558 1337 Services GmbH
add list=Blacklist comment="210558" address=2a12:a800:1::/48
add list=Blacklist comment="210558" address=2a12:a800:7::/48
add list=Blacklist comment="210558" address=2a12:a800:8::/48
# AS215599 Zkillu SAS
add list=Blacklist comment="215599" address=2a0c:b641:b0::/44
add list=Blacklist comment="215599" address=2a10:4646:410::/44
# AS47890 UNMANAGED LTD
add list=Blacklist comment="47890" address=2a0c:9f00:2::/48
add list=Blacklist comment="47890" address=2a0e:1d80:7::/48
add list=Blacklist comment="47890" address=2a10:9100:6::/48
add list=Blacklist comment="47890" address=2a10:9100:a::/48
# AS39798 MivoCloud SRL
add list=Blacklist comment="39798" address=2001:67c:2db8::/48
add list=Blacklist comment="39798" address=2a0a:c800::/31
add list=Blacklist comment="39798" address=2a0a:c802::/47
add list=Blacklist comment="39798" address=2a0a:c802:3::/48
add list=Blacklist comment="39798" address=2a0a:c802:4::/47
# AS41436 Kamatera Inc
add list=Blacklist comment="41436" address=2a06:c5c0:200::/48
add list=Blacklist comment="41436" address=2a07:3b80:3::/48
# AS204548 Kamatera Inc
add list=Blacklist comment="204548" address=2a06:c5c0:1100::/48
add list=Blacklist comment="204548" address=2a07:3b80:1::/48
# AS210329 Kamatera Inc
add list=Blacklist comment="210329" address=2a06:c5c0:600::/48
add list=Blacklist comment="210329" address=2a07:3b80:2::/48
# AS25820 IT7 Networks Inc
add list=Blacklist comment="25820" address=2607:8700:2200::/48
add list=Blacklist comment="25820" address=2607:8700:3100::/48
add list=Blacklist comment="25820" address=2607:8700:3400::/48
add list=Blacklist comment="25820" address=2607:8700:5500::/48
add list=Blacklist comment="25820" address=2607:8700:9300::/48
# AS3214 xTom GmbH
add list=Blacklist comment="3214" address=2a03:d9c0:1000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:2000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:4000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:5000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:6000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:7000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:8000::/48
add list=Blacklist comment="3214" address=2a03:d9c0:c0de::/48
add list=Blacklist comment="3214" address=2a03:d9c1:100::/40
add list=Blacklist comment="3214" address=2a03:d9c1:200::/39
add list=Blacklist comment="3214" address=2a03:d9c1:400::/38
add list=Blacklist comment="3214" address=2a03:d9c1:a100::/40
add list=Blacklist comment="3214" address=2a03:d9c1:a200::/39
add list=Blacklist comment="3214" address=2a03:d9c1:a400::/38
add list=Blacklist comment="3214" address=2a03:d9c1:b100::/40
add list=Blacklist comment="3214" address=2a03:d9c1:b200::/39
add list=Blacklist comment="3214" address=2a03:d9c1:b400::/39
add list=Blacklist comment="3214" address=2a03:d9c1:b600::/40
add list=Blacklist comment="3214" address=2a03:d9c1:c100::/40
add list=Blacklist comment="3214" address=2a03:d9c1:c200::/39
add list=Blacklist comment="3214" address=2a03:d9c1:c400::/39
add list=Blacklist comment="3214" address=2a03:d9c1:c600::/40
add list=Blacklist comment="3214" address=2a03:d9c2:100::/47
add list=Blacklist comment="3214" address=2a04:6f00::/32
add list=Blacklist comment="3214" address=2a04:6f02::/31
add list=Blacklist comment="3214" address=2a04:6f04::/30
add list=Blacklist comment="3214" address=2a07:fe00::/29
add list=Blacklist comment="3214" address=2a09:0:1::/48
add list=Blacklist comment="3214" address=2a09:0:2::/48
add list=Blacklist comment="3214" address=2a09:0:6::/47
add list=Blacklist comment="3214" address=2a09:0:8::/47
add list=Blacklist comment="3214" address=2a09:0:11::/48
add list=Blacklist comment="3214" address=2a09:0:16::/48
add list=Blacklist comment="3214" address=2a09:0:9000::/40
add list=Blacklist comment="3214" address=2a0b:89c0::/31
add list=Blacklist comment="3214" address=2a0c:59c0::/29
# AS39421 Sapinet SAS
add list=Blacklist comment="39421" address=2a0c:8880::/29
# AS49581 Ferdinand Zink trading as Tube-Hosting
add list=Blacklist comment="49581" address=2a12:8640::/29
add list=Blacklist comment="49581" address=2a12:b200::/29
add list=Blacklist comment="49581" address=2a12:bec4:1651::/48
add list=Blacklist comment="49581" address=2a12:bec4:1652::/48
add list=Blacklist comment="49581" address=2a12:de40::/32
# AS214339 SRV.RENT UG (haftungsbeschraenkt)
add list=Blacklist comment="214339" address=2a07:6d40:2::/48
#add list=Blacklist comment="214339" address=2a12:de40:46::/48
# AS213151 Christian Elsen
add list=Blacklist comment="213151" address=2001:678:1e8::/48
add list=Blacklist comment="213151" address=2602:fb2a::/40
add list=Blacklist comment="213151" address=2a06:e881:7300::/40
# AS399820 Atomic Networks LLC
add list=Blacklist comment="399820" address=2602:fc2f:100::/40
add list=Blacklist comment="399820" address=2602:fc2f:f00::/48
# AS200482 nexserv GmbH
add list=Blacklist comment="200482" address=2a12:3e80::/40
add list=Blacklist comment="200482" address=2a12:3e80:200::/39
add list=Blacklist comment="200482" address=2a12:3e80:402::/48
add list=Blacklist comment="200482" address=2a12:3e80:500::/40
# AS216081 Paulo Gobbato trading as Gobbato IT Loesungen
add list=Blacklist comment="216081" address=2a12:3e80:6a0::/44
add list=Blacklist comment="216081" address=2a12:3e80:6e0::/44
add list=Blacklist comment="216081" address=2a12:3e80:6f5::/48
# AS198351 SECUREWAN ANTI-DDOS LTD
add list=Blacklist comment="198351" address=2a12:bec4:1020::/44
add list=Blacklist comment="198351" address=2a12:bec4:17a0::/44
# AS215400 Kaan Kalayci trading as FastLayer
#add list=Blacklist comment="215400" address=2a12:de40:27::/48
# AS197477 Moritz Mantel
add list=Blacklist comment="197477" address=2a06:de01:70::/48
add list=Blacklist comment="197477" address=2a06:de01:7a::/47
add list=Blacklist comment="197477" address=2a06:de01:7c::/47
add list=Blacklist comment="197477" address=2a06:de01:7e::/48
add list=Blacklist comment="197477" address=2a13:e3c0::/31
# AS215292 Gravhosting Ltd
add list=Blacklist comment="215292" address=2602:fb54:155::/48
add list=Blacklist comment="215292" address=2a14:7c0:1800::/38
add list=Blacklist comment="215292" address=2a14:7c0:4800::/40
# AS212762 Casper Krook trading as Ck IT Solutions
add list=Blacklist comment="212762" address=2a05:dfc1:5502::/47
add list=Blacklist comment="212762" address=2a05:dfc1:5504::/48
add list=Blacklist comment="212762" address=2a05:dfc1:5506::/48
# AS204914 LABIXE LTD
add list=Blacklist comment="204914" address=2a0c:9a40:8350::/48
# AS215026 Alessandro Accorsi trading as Len Service SRL
add list=Blacklist comment="215026" address=2a0f:9400:6146::/48
add list=Blacklist comment="215026" address=2a0f:9400:6149::/48
add list=Blacklist comment="215026" address=2a0f:9400:614f::/48
add list=Blacklist comment="215026" address=2a0f:9400:6905::/48
add list=Blacklist comment="215026" address=2a0f:9400:693b::/48
# AS203728 BAHU LTD
add list=Blacklist comment="203728" address=2001:678:90c::/48
# AS216063 24fire GmbH
#add list=Blacklist comment="216063" address=2a12:de40:20::/47
#add list=Blacklist comment="216063" address=2a12:de40:200::/40
# AS215365 Tom Gewiese
add list=Blacklist comment="215365" address=2a14:7c0:1000::/38
# AS58052 Tomas William Smith trading as TomasSystems
add list=Blacklist comment="58052" address=2a12:bec0:190::/47
add list=Blacklist comment="58052" address=2a12:bec0:19f::/48
# AS199654 Oxide Group Limited
add list=Blacklist comment="199654" address=2a12:bec0:20a::/47
add list=Blacklist comment="199654" address=2a12:bec0:20c::/48
# AS215039 Semih Gokcalik
add list=Blacklist comment="215039" address=2a0a:6044:ac50::/44
add list=Blacklist comment="215039" address=2a0f:85c1:3c9::/48
# AS40124 Charged IT Solutions LLC
add list=Blacklist comment="40124" address=2602:299:10::/44
add list=Blacklist comment="40124" address=2602:299:30::/44
# AS54990 1337 Services LLC
add list=Blacklist comment="54990" address=2001:67c:235c::/48
# AS39287 ab stract ltd
add list=Blacklist comment="39287" address=2001:67c:2354::/48
add list=Blacklist comment="39287" address=2001:67c:2358::/48
add list=Blacklist comment="39287" address=2620:18:c000::/48
add list=Blacklist comment="39287" address=2a02:6f8::/32
add list=Blacklist comment="39287" address=2a0a:3840::/29
add list=Blacklist comment="39287" address=2a0e:d9c0::/29
add list=Blacklist comment="39287" address=2a0f:5e80::/29
add list=Blacklist comment="39287" address=2c0f:f930::/32
# AS34534 FBW NETWORKS SAS
#add list=Blacklist comment="34534" address=2a09:ca00::/48
# AS49434 FBW NETWORKS SAS
add list=Blacklist comment="49434" address=2a09:ca00::/29
add list=Blacklist comment="49434" address=2a0a:2f82::/32
add list=Blacklist comment="49434" address=2a0f:9240::/32
add list=Blacklist comment="49434" address=2a12:5e40::/32
add list=Blacklist comment="49434" address=2a12:8140::/30
add list=Blacklist comment="49434" address=2a13:bf80::/29
# AS52284 Panamaserver.com
add list=Blacklist comment="52284" address=2803:200::/32
# AS149148 Phu Hai Computer Co., Ltd
add list=Blacklist comment="149148" address=2400:c0e0::/48
add list=Blacklist comment="149148" address=2401:44e0::/48
# AS140817 ODS ONLINE DATA SOLUTION JOINT STOCK COMPANY
add list=Blacklist comment="140817" address=2400:6f60::/48
add list=Blacklist comment="140817" address=2401:2be0::/48
# AS151873 TOTHOST SOLUTIONS AND TECHNOLOGIES COMPANY LIMITED
add list=Blacklist comment="151873" address=2401:5b60::/48
# AS51396 Pfcloud UG
add list=Blacklist comment="51396" address=2a05:b0c6:a200::/39
add list=Blacklist comment="51396" address=2a05:b0c7:6000::/36
add list=Blacklist comment="51396" address=2a11:5780::/29
add list=Blacklist comment="51396" address=2a12:1cc7::/32
add list=Blacklist comment="51396" address=2a12:5a00::/29
add list=Blacklist comment="51396" address=2a12:6740::/29
add list=Blacklist comment="51396" address=2a12:8100::/29
add list=Blacklist comment="51396" address=2a12:8ec0::/29
add list=Blacklist comment="51396" address=2a12:ccc0::/29
add list=Blacklist comment="51396" address=2a12:dd47:8500::/40
add list=Blacklist comment="51396" address=2a12:e240::/29
add list=Blacklist comment="51396" address=2a14:7c1::/32
add list=Blacklist comment="51396" address=2a14:7c2::/31
# AS214940 KPROHOST LLC
add list=Blacklist comment="214940" address=2a13:da05::/32
add list=Blacklist comment="214940" address=2a13:e405::/32
# AS214209 Internet Magnate (Pty) Ltd
add list=Blacklist comment="214209" address=2a0d:8140:1fff::/48
add list=Blacklist comment="214209" address=2a0f:9400:7e11::/48
# AS214515 Amir Mohammad Masoudi
add list=Blacklist comment="214515" address=2a05:9080:6::/48
add list=Blacklist comment="214515" address=2a14:7c0:6000::/40
add list=Blacklist comment="214515" address=2a14:9e00:200::/40
# AS215462 Noel Nayasha Materke
add list=Blacklist comment="215462" address=2a13:da03::/32
add list=Blacklist comment="215462" address=2a13:e403::/32
# AS60223 Netiface Limited
add list=Blacklist comment="60223" address=2a14:7c0:3900::/40
add list=Blacklist comment="60223" address=2a14:62c0::/29
add list=Blacklist comment="60223" address=2a14:9e00:300::/40
add list=Blacklist comment="60223" address=2a14:9e00:9000::/39
add list=Blacklist comment="60223" address=2a14:9e00:9200::/40
# AS139660 OBHost LLC
add list=Blacklist comment="139660" address=2001:df7:c380::/48
# AS213993 FEMBOY PROXY SOLUTIONS HOLDINGS LLC
add list=Blacklist comment="213993" address=2a14:7c0:6600::/40
add list=Blacklist comment="213993" address=2a14:7c0:a000::/36
add list=Blacklist comment="213993" address=2a14:7c5::/32
add list=Blacklist comment="213993" address=2a14:7c6::/32
# AS198154 Pars Abr Toseeh Ertebatat Company
add list=Blacklist comment="198154" address=2a05:9080::/48
add list=Blacklist comment="198154" address=2a14:2340::/48
add list=Blacklist comment="198154" address=2a14:23c0::/48
# AS199052 AquaHost LTD
add list=Blacklist comment="199052" address=2a13:bec0::/29
# AS214967 Optibounce, LLC
add list=Blacklist comment="214967" address=2a13:da01::/32
add list=Blacklist comment="214967" address=2a13:e401::/32
# AS198584 PIO-Hosting GmbH
add list=Blacklist comment="198584" address=2a10:ca80::/48
# AS216213 Lexistar Alliance Ltd.
add list=Blacklist comment="216213" address=2a13:e0c0::/29
add list=Blacklist comment="216213" address=2a14:17c0::/29
add list=Blacklist comment="216213" address=2a14:1840::/29
add list=Blacklist comment="216213" address=2a14:c880::/33
# AS214927 PSB HOSTING LTD
add list=Blacklist comment="214927" address=2a0c:7886:105::/48
add list=Blacklist comment="214927" address=2a0f:e7c6:1000::/48
# AS215826 Partner Hosting LTD
add list=Blacklist comment="215826" address=2a0c:9a40:9404::/47
# AS52053 REDHEBERG Association declaree
add list=Blacklist comment="52053" address=2a14:1d00::/44
# AS138699 TIKTOK PTE. LTD.
add list=Blacklist comment="138699" address=2404:9dc0:cd01::/48
add list=Blacklist comment="138699" address=2404:9dc0:cd03::/48
add list=Blacklist comment="138699" address=2404:9dc0:cd05::/48
# AS35042 Layer7 Networks GmbH
add list=Blacklist comment="35042" address=2a00:1910::/30
add list=Blacklist comment="35042" address=2a09:8700::/32
# AS43350 NForce Entertainment B.V.
add list=Blacklist comment="43350" address=2001:678:a18::/48
add list=Blacklist comment="43350" address=2a00:1768::/34
add list=Blacklist comment="43350" address=2a00:1768:4000::/35
add list=Blacklist comment="43350" address=2a00:1768:6000::/36
add list=Blacklist comment="43350" address=2a02:2ca0:10::/48
add list=Blacklist comment="43350" address=2a02:2ca0:64::/48
add list=Blacklist comment="43350" address=2a02:2ca0:aaa::/48
add list=Blacklist comment="43350" address=2a02:2ca0:1111::/48
add list=Blacklist comment="43350" address=2a03:3740::/32
add list=Blacklist comment="43350" address=2a04:b040::/47
add list=Blacklist comment="43350" address=2a04:b040:2::/48
add list=Blacklist comment="43350" address=2a05:840::/47
add list=Blacklist comment="43350" address=2a06:e80::/36
add list=Blacklist comment="43350" address=2a07:bd80::/29
add list=Blacklist comment="43350" address=2a0b:8400:1::/48
add list=Blacklist comment="43350" address=2a0d:ea80::/29
add list=Blacklist comment="43350" address=2a0f:2b86:10::/48
# AS6204 RIPE Network Coordination Centre
add list=Blacklist comment="6204" address=2a12:3200:f000::/36
# AS25198 INTERKVM HOST SRL
add list=Blacklist comment="25198" address=2a01:7120:6::/47
add list=Blacklist comment="25198" address=2a12:3200::/35
add list=Blacklist comment="25198" address=2a12:3200:2000::/36
add list=Blacklist comment="25198" address=2a12:3200:4000::/35
add list=Blacklist comment="25198" address=2a12:3200:7000::/36
add list=Blacklist comment="25198" address=2a12:3200:8000::/36
add list=Blacklist comment="25198" address=2a12:3200:9000::/48
# AS215450 Snowcore Cyf
add list=Blacklist comment="215450" address=2a14:7c0:100::/40
# AS132825 MYTEK TRADING PTY LTD
add list=Blacklist comment="132825" address=2001:df0:fbc0::/48
add list=Blacklist comment="132825" address=2407:1100::/32
# AS3920 RIPE Network Coordination Centre
add list=Blacklist comment="3920" address=2a13:adc0::/46
# AS60539 Huicast Telecom Limited
add list=Blacklist comment="60539" address=2a13:aac6:c300::/40
add list=Blacklist comment="60539" address=2a13:aac7:60::/44
add list=Blacklist comment="60539" address=2a13:aac7:100::/40
# AS206728 Media Land LLC
add list=Blacklist comment="206728" address=2a0b:7ec0::/29
add list=Blacklist comment="206728" address=2a11:2081::/32
add list=Blacklist comment="206728" address=2a11:6502::/32
add list=Blacklist comment="206728" address=2a11:9880::/32
add list=Blacklist comment="206728" address=2a11:c102::/32
# AS214668 AxusHost B.V.
add list=Blacklist comment="214668" address=2a11:1400:2000::/48
# AS50917 Diederik Focko de Zee
add list=Blacklist comment="50917" address=2001:678:7ec::/48
# AS58212 dataforest GmbH
add list=Blacklist comment="58212" address=2407:9d00:20::/48
add list=Blacklist comment="58212" address=2a03:403::/32
add list=Blacklist comment="58212" address=2a05:dfc1:5801::/48
add list=Blacklist comment="58212" address=2a0c:4ac0:1100::/40
add list=Blacklist comment="58212" address=2a0c:4ac0:1200::/40
add list=Blacklist comment="58212" address=2a0c:4ac1::/32
add list=Blacklist comment="58212" address=2a0d:1180::/29
add list=Blacklist comment="58212" address=2a0d:5940::/29
add list=Blacklist comment="58212" address=2a12:bec4:1520::/44
add list=Blacklist comment="58212" address=2a12:bec4:1750::/44
# AS212935 Theori Inc
add list=Blacklist comment="212935" address=2602:f90a::/48
# AS202306 HOSTGLOBAL.PLUS LTD
add list=Blacklist comment="202306" address=2a04:5200:5977::/48
# AS199414 NEOPROTECT NET
add list=Blacklist comment="199414" address=2a12:bec0:2f0::/47
add list=Blacklist comment="199414" address=2a12:bec0:2f2::/48
# AS44947 AMWAJ ALKHYR COMMERCIAL BROKERS CO.
add list=Blacklist comment="44947" address=2a09:cbc0::/29
add list=Blacklist comment="44947" address=2a13:1640::/29
add list=Blacklist comment="44947" address=2a13:3cc0::/29
add list=Blacklist comment="44947" address=2a13:9600::/29
# AS51852 Private Layer INC
add list=Blacklist comment="51852" address=2a02:29b8::/32
add list=Blacklist comment="51852" address=2a09:4d45::/32
add list=Blacklist comment="51852" address=2a0f:dd40::/29
# AS264617 GRUPO PANAGLOBAL 15 S.A
add list=Blacklist comment="264617" address=2803:9e40::/32
add list=Blacklist comment="264617" address=2a0a:20c0::/29
# AS210937 Xiufeng Guo
add list=Blacklist comment="210937" address=2a09:1::/48
add list=Blacklist comment="210937" address=2a11:1d40::/48
add list=Blacklist comment="210937" address=2a11:1d42::/48
# AS60404 The Infrastructure Group B.V.
add list=Blacklist comment="60404" address=2a01:6340::/29
add list=Blacklist comment="60404" address=2a04:52c0::/32
add list=Blacklist comment="60404" address=2a06:e881:6200::/48
add list=Blacklist comment="60404" address=2a0b:b600:1000::/38
add list=Blacklist comment="60404" address=2a0c:9a40:808e::/48
add list=Blacklist comment="60404" address=2a0c:b642:1a01::/48
add list=Blacklist comment="60404" address=2a0e:fd45:40f8::/48
add list=Blacklist comment="60404" address=2a0f:5707:ab2c::/48
add list=Blacklist comment="60404" address=2a0f:6bc0::/29
# AS202592 area-7 IT-Services GmbH
add list=Blacklist comment="202592" address=2a07:5b47::/32
# AS210743 Babbar SAS
add list=Blacklist comment="210743" address=2001:978:1b04::/47
# AS64476 Shadow SAS
add list=Blacklist comment="64476" address=2a0a:e805:210::/44
add list=Blacklist comment="64476" address=2a0a:e805:500::/40
add list=Blacklist comment="64476" address=2a0a:e805:610::/44
add list=Blacklist comment="64476" address=2a0a:e805:710::/44
# AS53828 NETWORK INNOVATIONS, LLC
add list=Blacklist comment="53828" address=2605:a380::/32
# AS199834 IP Solus Inc
add list=Blacklist comment="199834" address=2001:37c0::/29
# AS56611 REBA Communications BV
add list=Blacklist comment="56611" address=2a02:6c8::/33
# AS26042 FiberState, LLC
add list=Blacklist comment="26042" address=2602:294::/36
add list=Blacklist comment="26042" address=2602:f919:100::/48
add list=Blacklist comment="26042" address=2602:f919:102::/48
add list=Blacklist comment="26042" address=2602:f992:90::/44
add list=Blacklist comment="26042" address=2602:fa3d:a92::/48
add list=Blacklist comment="26042" address=2602:fa42:300::/40
add list=Blacklist comment="26042" address=2602:fd92:200::/40
add list=Blacklist comment="26042" address=2602:fe13:2e0::/44
add list=Blacklist comment="26042" address=2602:fe13:806::/48
add list=Blacklist comment="26042" address=2602:fed2:7114::/48
add list=Blacklist comment="26042" address=2602:fed2:7e05::/48
add list=Blacklist comment="26042" address=2602:fed2:7e06::/48
add list=Blacklist comment="26042" address=2606:c0:1::/48
add list=Blacklist comment="26042" address=2606:fc40:4004::/48
add list=Blacklist comment="26042" address=2606:fc40:4010::/44
add list=Blacklist comment="26042" address=2a09:da00::/32
add list=Blacklist comment="26042" address=2a0c:e641::/32
add list=Blacklist comment="26042" address=2a0f:1584:1::/48
add list=Blacklist comment="26042" address=2a0f:9400:611f::/48
add list=Blacklist comment="26042" address=2a0f:9400:6939::/48
add list=Blacklist comment="26042" address=2a0f:9400:7385::/48
add list=Blacklist comment="26042" address=2a12:bec4:1980::/44
add list=Blacklist comment="26042" address=2a14:7580:fc00::/40
add list=Blacklist comment="26042" address=2a14:7584:1000::/36
add list=Blacklist comment="26042" address=2a14:7584:5000::/36
# AS215120 Evolus IT Solutions GmbH
add list=Blacklist comment="215120" address=2a0c:9a40:8570::/48
add list=Blacklist comment="215120" address=2a12:bec4:19a0::/48
# AS41047 Bart Vrancken trading as MLaB
add list=Blacklist comment="41047" address=2a0e:a6c0::/30
# AS53755 Input Output Flood LLC
add list=Blacklist comment="53755" address=2604:6280::/32
add list=Blacklist comment="53755" address=2a0d:da07::/32
# AS64425 SKB Enterprise B.V.
add list=Blacklist comment="64425" address=2a0d:2406:200::/39
# AS62167 Tismi BV
add list=Blacklist comment="62167" address=2a00:be40:2::/48
add list=Blacklist comment="62167" address=2a01:7520::/32
add list=Blacklist comment="62167" address=2a0b:5800::/32
# AS214337 Webmedia - Nijmegen B.V.
add list=Blacklist comment="214337" address=2a0d:2406:3c00::/48
add list=Blacklist comment="214337" address=2a0f:85c1:88e::/48
# AS20766 Association Gitoyen
add list=Blacklist comment="20766" address=2001:910::/32
add list=Blacklist comment="20766" address=2001:913:4000::/36
add list=Blacklist comment="20766" address=2a04:9ac2::/32
add list=Blacklist comment="20766" address=2a0f:6780::/29
add list=Blacklist comment="20766" address=2a0f:e580:b::/48
# AS2027 MilkyWan Association
add list=Blacklist comment="2027" address=2a0b:cbc0::/32
add list=Blacklist comment="2027" address=2a0e:e700::/31
add list=Blacklist comment="2027" address=2a0f:ce00::/29
# AS44679 INVITE Systems SRL
add list=Blacklist comment="44679" address=2a02:2160:8000::/36
# AS22168 The Shadowserver Foundation, Inc.
add list=Blacklist comment="22168" address=2001:550:d0c::/48
# AS152320 Goalnow Network Technology Co Limited
add list=Blacklist comment="152320" address=2001:df0:a640::/48
# AS43861 Circle B B.V.
add list=Blacklist comment="43861" address=2001:678:348::/48
add list=Blacklist comment="43861" address=2a13:acc0::/32
# AS50053 Individual Entrepreneur Anton Levin
add list=Blacklist comment="50053" address=2a0d:6c2:14::/48
add list=Blacklist comment="50053" address=2a0d:6c2:16::/47
add list=Blacklist comment="50053" address=2a0d:6c2:24::/47
# AS64457 Matteo Fruhwald trading as PipeHost e.U.
add list=Blacklist comment="64457" address=2a14:7c0:f100::/40
add list=Blacklist comment="64457" address=2a14:7c0:f300::/40
# AS216141 Marco Fontana
add list=Blacklist comment="216141" address=2a11:f2c0:ffc7::/48
# AS214576 Berdiev Ruslan Mukhabatovich
add list=Blacklist comment="214576" address=2a0e:4005:1002::/48
# AS209823 Enki Multimedia EURL
add list=Blacklist comment="209823" address=2a12:5541:1::/48
add list=Blacklist comment="209823" address=2a12:5541:2::/48
add list=Blacklist comment="209823" address=2a12:5541:a::/48
add list=Blacklist comment="209823" address=2a12:5541:331::/48
add list=Blacklist comment="209823" address=2a12:5542::/32
# AS211059 Tribeka Web Advisors S.A.
add list=Blacklist comment="211059" address=2a11:4c0:5::/48
# AS210924 ssd networks limited
add list=Blacklist comment="210924" address=2a14:c100::/29
# AS47464 Address Management Inc.
add list=Blacklist comment="47464" address=2a07:ca00::/30
add list=Blacklist comment="47464" address=2a07:ca04::/31
add list=Blacklist comment="47464" address=2a07:ca06::/32
# AS151853 GIZA NETWORK LIMITED
add list=Blacklist comment="151853" address=2401:4120::/48
# AS199669 Okay-Telecom Ltd.
add list=Blacklist comment="199669" address=2a03:ec0::/47
add list=Blacklist comment="199669" address=2a11:2084::/32
add list=Blacklist comment="199669" address=2a11:8305::/32
add list=Blacklist comment="199669" address=2a11:aac4::/32
add list=Blacklist comment="199669" address=2a11:c107::/32
# AS201211 LLC Tvoi Telecom
add list=Blacklist comment="201211" address=2a05:3e80::/29
# AS60230 Neterra Ltd.
add list=Blacklist comment="60230" address=2a00:1728:a::/48
# AS207713 GLOBAL INTERNET SOLUTIONS LLC
add list=Blacklist comment="207713" address=2a05:541:100::/48
add list=Blacklist comment="207713" address=2a05:541:115::/48
add list=Blacklist comment="207713" address=2a05:541:120::/48
add list=Blacklist comment="207713" address=2a05:541:132::/48
add list=Blacklist comment="207713" address=2a05:541:142::/48
add list=Blacklist comment="207713" address=2a05:541:145::/48
add list=Blacklist comment="207713" address=2a05:544::/32
# AS49111 iNet Ltd
add list=Blacklist comment="49111" address=2a0e:98c0::/29
# AS51711 iNet Ltd
add list=Blacklist comment="51711" address=2a00:b700::/48
add list=Blacklist comment="51711" address=2a00:b704::/32
add list=Blacklist comment="51711" address=2a0d:3c45::/32
add list=Blacklist comment="51711" address=2a0e:7f46::/32
# AS205125 Network Management Ltd
add list=Blacklist comment="205125" address=2a03:e2c0::/32
add list=Blacklist comment="205125" address=2a0d:8340::/32
# AS211720 Datashield, Inc.
add list=Blacklist comment="211720" address=2a06:e80:3000::/36
# AS211922 IP Connect Inc
add list=Blacklist comment="211922" address=2a10:5fc7::/47
# AS133772 New Eagle Ltd
add list=Blacklist comment="133772" address=2001:df1:f400::/48
# AS204615 IP Fiber Inc
add list=Blacklist comment="204615" address=2a13:2a00:2::/48
# AS211632 Internet Solutions & Innovations LTD.
add list=Blacklist comment="211632" address=2a11:4c0::/47
# AS43180 Trunk Networks LTD
add list=Blacklist comment="43180" address=2a09:2dc2::/31
# AS35112 GBN group Ltd
add list=Blacklist comment="35112" address=2a0e:7200::/40
# AS36902 Intelvision Ltd
add list=Blacklist comment="36902" address=2c0f:efa0::/32
# AS213373 IP Connect Inc
add list=Blacklist comment="213373" address=2a10:5fc0::/31
# AS328543 Sun Network Company Limited
add list=Blacklist comment="328543" address=2a0c:640::/29
add list=Blacklist comment="328543" address=2a0c:9380::/29
add list=Blacklist comment="328543" address=2a0e:4c80::/29
add list=Blacklist comment="328543" address=2a0f:9a00::/29
add list=Blacklist comment="328543" address=2c0f:2800::/32
# AS29222 Infomaniak Network SA
add list=Blacklist comment="29222" address=2001:1600::/32
add list=Blacklist comment="29222" address=2a01:4f40::/32
# AS43357 Owl Limited
add list=Blacklist comment="43357" address=2a03:d9c0:3000::/47
add list=Blacklist comment="43357" address=2a07:d880::/32
add list=Blacklist comment="43357" address=2a07:d881:3::/48
add list=Blacklist comment="43357" address=2a07:d883::/48
add list=Blacklist comment="43357" address=2a07:d883:200::/48
add list=Blacklist comment="43357" address=2a07:d883:300::/48
add list=Blacklist comment="43357" address=2a07:d883:400::/48
add list=Blacklist comment="43357" address=2a07:d884::/48
add list=Blacklist comment="43357" address=2a07:d884:100::/48
add list=Blacklist comment="43357" address=2a07:d887::/33
add list=Blacklist comment="43357" address=2a07:d887:8000::/34
add list=Blacklist comment="43357" address=2a07:d887:c000::/35
add list=Blacklist comment="43357" address=2a07:d887:e000::/36
add list=Blacklist comment="43357" address=2a07:d887:f000::/37
#add list=Blacklist comment="43357" address=2a07:fe00:1::/48
#add list=Blacklist comment="43357" address=2a0b:89c1:3::/48
#add list=Blacklist comment="43357" address=2a0c:59c0:18::/48
add list=Blacklist comment="43357" address=2a11:3:500::/40
# AS23959 Owl Limited
add list=Blacklist comment="23959" address=2403:fbc0:7000::/48
# AS213205 COOOLBE LTD
add list=Blacklist comment="213205" address=2a13:2380::/29
# AS24013 SB Professional Services
add list=Blacklist comment="24013" address=2a09::/48
add list=Blacklist comment="24013" address=2a11::/48
# AS26737 TREE TELECOM
add list=Blacklist comment="26737" address=2602:f894:100::/40
add list=Blacklist comment="26737" address=2602:f894:200::/39
add list=Blacklist comment="26737" address=2602:f894:400::/38
add list=Blacklist comment="26737" address=2602:f894:800::/39
# AS132088 Wind Cloud Network Technology Co Ltd
add list=Blacklist comment="132088" address=2402:e940:20::/43
add list=Blacklist comment="132088" address=2402:e940:40::/44
add list=Blacklist comment="132088" address=2402:e940:60::/43
add list=Blacklist comment="132088" address=2402:e940:80::/41
add list=Blacklist comment="132088" address=2402:e940:100::/43
# AS138330 SM.MS
add list=Blacklist comment="138330" address=2a12:a307:1::/48
# AS23748 Cat Networks K.K.
add list=Blacklist comment="23748" address=2a12:a307::/48
# AS36832 Network Gibbon LLC
add list=Blacklist comment="36832" address=2602:f8c4::/40
# AS400992 ZhouyiSat Communications
add list=Blacklist comment="400992" address=2602:f909::/40
add list=Blacklist comment="400992" address=2a0d:6c2::/48
add list=Blacklist comment="400992" address=2a0d:6c2:6::/47
add list=Blacklist comment="400992" address=2a0d:6c2:11::/48
add list=Blacklist comment="400992" address=2a0d:6c2:12::/47
add list=Blacklist comment="400992" address=2a0d:6c2:26::/47
# AS30823 aurologic GmbH
add list=Blacklist comment="30823" address=2602:fa59::/40
add list=Blacklist comment="30823" address=2a01:367::/32
add list=Blacklist comment="30823" address=2a09:38c0::/29
add list=Blacklist comment="30823" address=2a0c:3580::/29
add list=Blacklist comment="30823" address=2a0c:6a40::/29
add list=Blacklist comment="30823" address=2a0d:4cc0::/29
add list=Blacklist comment="30823" address=2a0e:5100::/29
add list=Blacklist comment="30823" address=2a0e:b540::/29
# AS211138 Private-Hosting di Cipriano oscar
add list=Blacklist comment="211138" address=2a05:4140:500::/48
add list=Blacklist comment="211138" address=2a11:e104:1::/48
# AS47440 BUSINESS SYSTEM TELEHOUSE, OOO
add list=Blacklist comment="47440" address=2a04:4a00::/29
# AS49447 Nice IT Services Group Inc.
add list=Blacklist comment="49447" address=2a0e:fa00::/48
# AS328383 xTom Limited
add list=Blacklist comment="328383" address=2c0f:ec00::/48
# AS35372 GeniusMind S.A.
add list=Blacklist comment="35372" address=2a0c:b100::/46
# AS213693 Imad Nabil Daher trading as ID Performance
add list=Blacklist comment="213693" address=2a0f:85c1:b36::/48
# AS43641 SOLLUTIUM EU Sp z.o.o.
add list=Blacklist comment="43641" address=2a09:2dc1::/32
add list=Blacklist comment="43641" address=2a11:6100::/31
# AS214223 Luis Jakob Bartel
add list=Blacklist comment="214223" address=2a0a:6044:6409::/48
add list=Blacklist comment="214223" address=2a0a:6044:aa10::/48
add list=Blacklist comment="214223" address=2a10:ccc0:160::/48
# AS200081 Netversor GmbH
add list=Blacklist comment="200081" address=2a01:ea00::/48
add list=Blacklist comment="200081" address=2a02:6aa0::/32
add list=Blacklist comment="200081" address=2a04:5340::/47
add list=Blacklist comment="200081" address=2a04:5340:2::/48
add list=Blacklist comment="200081" address=2a04:5340:4::/47
# AS215659 Aokigahara SRL
add list=Blacklist comment="215659" address=2a0f:85c1:356::/48
# AS210718 FIVE CYBER HOST SECURITY S.R.L.
add list=Blacklist comment="210718" address=2a0f:9400:7e01::/48
add list=Blacklist comment="210718" address=2a0f:9400:7e50::/48
# AS212512 Dogac Dovan
add list=Blacklist comment="212512" address=2403:fbc0:a001::/48
add list=Blacklist comment="212512" address=2403:fbc0:a002::/48
add list=Blacklist comment="212512" address=2a07:d885::/46
add list=Blacklist comment="212512" address=2a07:d885:4::/47
add list=Blacklist comment="212512" address=2a07:d885:6::/48
# AS39351 31173 Services AB
add list=Blacklist comment="39351" address=2a03:1b20:1::/48
add list=Blacklist comment="39351" address=2a03:1b20:2::/47
add list=Blacklist comment="39351" address=2a03:1b20:4::/46
add list=Blacklist comment="39351" address=2a03:1b20:8::/46
add list=Blacklist comment="39351" address=2a03:1b20:901::/48
add list=Blacklist comment="39351" address=2a03:1b20:bef1::/48
add list=Blacklist comment="39351" address=2a03:1b20:bef2::/48
add list=Blacklist comment="39351" address=2a06:de00:12::/48
add list=Blacklist comment="39351" address=2a06:de00:16::/48
add list=Blacklist comment="39351" address=2a07:e344::/32
add list=Blacklist comment="39351" address=2a0c:9a46:a01::/48
add list=Blacklist comment="39351" address=2a10:ccc2:20::/44
# AS59939 WIBO Baltic UAB
add list=Blacklist comment="59939" address=2a04:9640::/31
add list=Blacklist comment="59939" address=2a04:9642::/32
add list=Blacklist comment="59939" address=2a0b:22c0::/29
# AS207957 SERV.HOST GROUP LTD
add list=Blacklist comment="207957" address=2a01:ecc0:2c1::/48
add list=Blacklist comment="207957" address=2a01:ecc0:3c0::/42
add list=Blacklist comment="207957" address=2a01:ecc0:400::/42
add list=Blacklist comment="207957" address=2a01:ecc0:480::/41
add list=Blacklist comment="207957" address=2a01:ecc0:500::/41
# AS62403 PLETX LTD
#add list=Blacklist comment="62403" address=2a12:8641:1::/48
#add list=Blacklist comment="62403" address=2a12:de40:49::/48
#add list=Blacklist comment="62403" address=2a12:de40:50::/48
# AS214194 Justin Nolte
add list=Blacklist comment="214194" address=2a06:de01:160::/44
add list=Blacklist comment="214194" address=2a06:de01:180::/44
# AS215569 Florian Bach
add list=Blacklist comment="215569" address=2a07:2486:4010::/44
# AS140941 Full Time Hosting
add list=Blacklist comment="140941" address=2001:df4:4f80::/48
# AS204104 Giti Secure Cloud LLC
add list=Blacklist comment="204104" address=2a10:ed40::/46
add list=Blacklist comment="204104" address=2a10:ed40:4::/47
# AS202468 Noyan Abr Arvan Co. ( Private Joint Stock)
add list=Blacklist comment="202468" address=2a07:3900::/29
