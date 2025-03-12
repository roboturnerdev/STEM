targetScope = 'resourceGroup'

module robExampleVirtualMachine 'modules/linux-vm.bicep' = {
  name: 'example-vm-deployment'
  scope: resourceGroup()
  params: {
    location: resourceGroup().location
    vmName: 'robVirtualMachine'
    adminUsername: 'roboturner'
    adminPassword: 'abcdefg12345'
  }
}
