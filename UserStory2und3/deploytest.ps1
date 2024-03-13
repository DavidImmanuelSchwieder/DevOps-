param (
    [string]$environment
)
$environment = 'dev'
 
function DeployTestToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource rg-david-schwieder --template-file .\UserStory2und3\iotsetup.bicep --parameters .\UserStory2und3\dev.json --confirm-with-what-if
}
 
function DeployTestToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource NAME_OF_YOUR_RESSOURCE_GROUP --template-file .\Userstory2und3\iotsetup.bicep --parameters .\Userstory2und3\test.json --confirm-with-what-if
}
 
function DeployTestToMain {
    Write-Host "Deploying to Prod environment..."
    az deployment group create --resource NAME_OF_YOUR_RESSOURCE_GROUP --template-file .\UserStory2und3\iotsetup.bicep --parameters .\UserStory2und3\main.json --confirm-with-what-if
}
 
if ($environment -eq 'dev') {
    DeployTestToDev
}
elseif ($environment -eq 'test') {
    DeployTestToTest
}
elseif ($environment -eq 'main') {
    DeployTestToMain
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}