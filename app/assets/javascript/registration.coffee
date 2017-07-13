$ ->

  vm = ko.mapping.fromJS
    client:
      directions : ["So'tuvchi","Xaridor"]
      selected:
        direction: ''
      product: []
      clientFullName : ''
      clientEmail: ''
      clientPhone: ''
      clientLogin: ''
      clientPassword: ''
      clientConfirmationPassword: ''
      clientPS: ''
      clientPN: ''
      clientAddress: ''
      clientAccount: ''
      clientTermCondition: ''

  vm.showAllInformation = ->
    console.log(vm.client)

  ko.applyBindings {vm}

