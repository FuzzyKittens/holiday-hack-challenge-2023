$path = '.\objectives\'

$report = 'report.md'

$files = @(
    'orientation.md'
    'snowball-fight.md'
    'linux-101.md'
    'reportinator.md'
    'azure-101.md'
    'luggage-lock.md'
    'linux-privesc.md'
    'faster-lock-combination.md'
    'game-cartridges-vol1.md'
    'game-cartridges-vol2.md'
    'game-cartridges-vol3.md'
    'naan.md'
    'kql-kraken-hunt.md'
    'phish-detection-agency.md'
    'hashcat.md'
    'elf-hunt.md'
    'certificate-sshenanigans.md'
    'captains-coms.md'
    'active-directory.md'
    'door-access-speaker.md'
    'camera-access.md'
    'missile-diversion.md'
    'bonus-fishing-mastery.md'
    )

$reportHeader = @"
# SANS Holiday Hack Contest 2023

![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/sans-banner.png)

**Character: RealCyberDude**

**Report by: [Kory Kliner](https://www.linkedin.com/in/kory-kliner-b2663451/)**

A more thorough report can be found at: **[https://fuzzykittens.github.io/holiday-hack-challenge-2023](https://fuzzykittens.github.io/holiday-hack-challenge-2023)**

## Table of Contents

1. [Orientation](./report.md#orientation-)
1. [Snowball Fight](./report.md#snowball-fight-)
1. [Linux 101](./report.md#linux-101-)
1. [Reportinator](./report.md#reportinator-)
1. [Azure 101](./report.md#azure-101-)
1. [Luggage Lock](./report.md#luggage-lock-)
1. [Linux PrivEsc](./report.md#linux-privesc-)
1. [Faster Lock Combination](./report.md#faster-lock-combination-)
1. [Game Cartridges: Vol 1](./report.md#game-cartridges-vol1-)
1. [Game Cartridges: Vol 2](./report.md#game-cartridges-vol2-)
1. [Game Cartridges: Vol 3](./report.md#game-cartridges-vol3-)
1. [Na'aN](./report.md#naan-)
1. [KQL Kraken Hunt](./report.md#kql-kraken-hunt-)
1. [Phish Detection Agency](./report.md#phish-detection-agency-)
1. [Hashcat](./report.md#hashcat-)
1. [Elf Hunt](./report.md#elf-hunt-)
1. [Certificate SSHenanigans](./report.md#certificate-sshenanigans-)
1. [The Captain's Comms](./report.md#captains-coms-)
1. [Active Directory](./report.md#active-directory-)
1. [Space Island Door Access Speaker](./report.md#door-access-speaker-)
1. [Camera Access](./report.md#camera-access-)
1. [Missile Diversion](./report.md#missile-diversion-)
1. [Bonus! Fishing Mastery](./report.md#bonus-fishing-mastery-)
"@

$reportHeader | Out-File -FilePath $report

foreach ($file in $files) {
    $contents = Get-Content -Path $(Join-Path -Path $path -ChildPath $file) -Encoding UTF8
    #$keep = $true

    foreach ($content in $contents) {
        if ($content.Contains('<!-- report-keep -->')){
            $keep = $true
        }
        
        if ($content.Contains('<!-- report-ignore -->')){
            $keep = $false
        }

        if ($keep) {
            $content = $content.Replace('../img/','https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/')
            $content = $content.Replace('# ','## ')
            $content | Out-File -FilePath $report -Append
        }
    }
    "" | Out-File -FilePath $report -Append
    "---" | Out-File -FilePath $report -Append
    "" | Out-File -FilePath $report -Append
}

$reportFooter = @"
![image](https://raw.githubusercontent.com/FuzzyKittens/holiday-hack-challenge-2023/main/img/finale.png)

A more thorough report can be found at: **[https://fuzzykittens.github.io/holiday-hack-challenge-2023](https://fuzzykittens.github.io/holiday-hack-challenge-2023)**

---
"@

$reportFooter | Out-File -FilePath $report -Append
