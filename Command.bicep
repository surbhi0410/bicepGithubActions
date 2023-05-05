param location string = 'eastus'

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: 'VNet02'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
  }
}

resource subnet1 'Microsoft.Network/virtualNetworks/subnets@2021-02-01' = {
  name: 'Subnet1'
  parent: vnet
  properties: {
    addressPrefix: '10.0.1.0/24'
  }
}

resource subnet2 'Microsoft.Network/virtualNetworks/subnets@2021-02-01' = {
  name: 'Subnet2'
  parent: vnet
  properties: {
    addressPrefix: '10.0.2.0/24'
  }
}
