param (
    [string]$environment
)

az login
 
function DeployToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource rg-david-schwieder --template-file deploy-app.bicep --parameters .\Userstory1\dev.json --confirm-with-what-if
}
 
function DeployToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource rg-david-schwieder --template-file deploy-app.bicep --parameters .\Userstory1\test.json --confirm-with-what-if
}
 
function DeployToMain {
    Write-Host "Deploying to Main environment..."
    az deployment group create --resource rg-david-schwieder --template-file deploy-app.bicep --parameters .\Userstory1\main.json --confirm-with-what-if
}
 
if ($environment -eq 'dev') {
    DeployToDev
}
elseif ($environment -eq 'test') {
    DeployToTest
}
elseif ($environment -eq 'main') {
    DeployToMain
}
else {
    Write-Host "Please use 'dev', 'test', or 'main'."
}