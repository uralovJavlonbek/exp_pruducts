$ ->

  vm = ko.mapping.fromJS
    direction: []

  vm.showDirection = ->
    console.log(vm.direction([]))

  ko.applyBindings {vm}

