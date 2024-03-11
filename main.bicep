
param location string = resourceGroup().location
resource storageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'kysdevops'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
resource survivalContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: '${storageaccount.name}/default/games'
  dependsOn: [
    storageaccount
  ]
}
