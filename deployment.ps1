$resourceGroupName = "rg-david-schwieder"
$templateFilePath = "C:\Users\David.Schwieder\DevOps\main.bicep"
$storageAccout = "rg-david-schwieder"

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName `
        -TemplateFile $templateFilePath `
        -TemplateParamterObkecz @{
            "storageAccountName" = $storageAccout
        }