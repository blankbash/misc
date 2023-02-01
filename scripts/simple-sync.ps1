# Sync only files that are not in the destination folder
# This is a one way sync, files in the destination folder will not be deleted
#
 # Simple Sync

# This script will ask you to enter a domain name and will check if it is available or not
# If the domain is available it will print "domain is available"
# If the domain is not available it will print "domain is already taken"
#
# Author:  Erik Lopes de Oliveira
# Date:    2018-03-01
# Version: 1.0
#
# Powered by Open AI Chat GPT-3


$source = "c:\SourceFolder"
$destinaion = "c:\DestinationFolder"

Get-ChildItem $source | Where-Object { -not  (Test-Path (Join-Path $destinaion $_.Name))} | Copy-Item -Destination $destinaion
