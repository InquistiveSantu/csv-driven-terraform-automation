# Input CSV
$csvFile = ".\Input\infra.csv"

# Output tfvars
$outputFile = ".\env\dev-env\terraform.tfvars"
$data = Import-Csv $csvFile

# Separate RG and Storage records
$resourceGroups = $data | Where-Object { $_.Type -eq "RG" }
$storageAccounts = $data | Where-Object { $_.Type -eq "STG" }

$content = ""

# ----------------------------
# Resource Groups
# ----------------------------
$content += "RG = {" + "`n`n"

foreach ($rg in $resourceGroups) {

    $content += "  $($rg.Key) = {" + "`n"
    $content += "    name     = `"$($rg.Name)`"" + "`n"
    $content += "    location = `"$($rg.Location)`"" + "`n"
    $content += "  }" + "`n`n"
}

$content += "}" + "`n`n"

# ----------------------------
# Storage Accounts
# ----------------------------
$content += "Stg = {" + "`n`n"

foreach ($stg in $storageAccounts) {

    $content += "  $($stg.Key) = {" + "`n"
    $content += "    name                     = `"$($stg.Name)`"" + "`n"
    $content += "    location                 = `"$($stg.Location)`"" + "`n"
    $content += "    resource_group_name      = `"$($stg.ResourceGroupName)`"" + "`n"
    $content += "    account_tier             = `"$($stg.AccountTier)`"" + "`n"
    $content += "    account_replication_type = `"$($stg.AccountReplicationType)`"" + "`n"
    $content += "  }" + "`n`n"
}

$content += "}" + "`n"

# Write tfvars file
Set-Content -Path $outputFile -Value $content

Write-Host "terraform.tfvars generated successfully!"
Write-Host "Location: $outputFile"