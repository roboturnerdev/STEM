targetScope = 'resourceGroup'

param adminUsername string = 'stem'
param adminPublicKey string = 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDtPqAP7FEHPt6BR0GyTSiMov/ePAxnHzY2XxHQjA/7XiEiYWrmjzgNlnCRSjqP2oCuFQNFrE+/yP16H/jBqZgvB+03C8xb1wBsdwEveh59aSSvwv19qFGNfX+D1jzlAQ+kdhqrrWxG8addxrrT64psvfFaF/tgLIzZKAW58ts1aIoza8NUXUbsdzwKuAtP1qAgCboWkmB6o9/xW4vImkgazQrPn35eD/YB7+QoF9oVQVFZHBy/ssb3ojGLf/dp/zQrUy8Alb9ytRhz5Z6p+20OibMb/R44YH7cDZmkFC85EXzBFqqxs0oMBi/bEB6dxE2n2+bfkt+0YaFRl3qQ3REK41gVypSxMy1h5oKdmkZ9ZzE5WOpJTa4AD7Z822Cil/oEyBYyN40pVuG3Jw3WAHYGFJW00ckiMTPG1G6xhGLtgxTxOBy74yazZ8bNt10ovVLGQF1+X8mOfgNUV906l02K3qtTbXw78m5XVcIriGZaSwnKh7R362R8SuHiT3zrFNF1whccxUMQtI+4oiT+hhdlF5QCIop7DGfFh6NI+z7tm/hMHi90gz1mPBHvvuo4HHBjbwnW2rdnGsZJIw7hGFWRBuIZ6WBaa6OEuwMZE/aGl+rM2zgj53loA6b7q+CLzkD3w5fPS8ozIwuKS3B3Wwa9osLaCgynNnyVJYWb1de0OQ=='

module robExampleVirtualMachine 'modules/linux-vm.bicep' = {
  name: 'example-vm-deploy'
  scope: resourceGroup()
  params: {
    location: resourceGroup().location
    vmName: 'rob-example'
    adminUsername: adminUsername
    adminPublicKey: adminPublicKey
  }
}
