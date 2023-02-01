# nslookup script

# This script will ask you to enter a domain name and will check if it is available or not
# If the domain is available it will print "domain is available"
# If the domain is not available it will print "domain is already taken"
#
# Author:  Erik Lopes de Oliveira
# Date:    2018-03-01
# Version: 1.0
#
# Powered by Open AI Chat GPT-3

do {
    $domain = Read-Host "Enter the domain you want to check (or type 'quit' to exit)"
    if ($domain -eq "quit") {
        break
    }
    $nslookup = nslookup $domain
    if ($nslookup | Select-String "Name:"){
        Write-Host "`n`n $domain is available `n`n"
    } else {
        Write-Host "`n`n $domain is already taken `n`n"
    }
} while ($domain -ne "quit")