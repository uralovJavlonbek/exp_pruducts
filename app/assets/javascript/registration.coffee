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
      clientConfirmPassword: ''
      clientPS: ''
      clientPN: ''
      clientAddress: ''
      clientAccount: ''
      clientTermCondition: false

  vm.showAllInformation = ->
    console.log(vm.client.product())
    console.log(vm.client.clientFullName())

  vm.onAddFormSubmit = ->
    direction = vm.client.selected.direction()
    products = vm.client.product()
    name = vm.client.clientFullName()
    email = vm.client.clientEmail()
    login = vm.client.clientLogin()
    passw = vm.client.clientPassword()
    cpassw = vm.client.clientConfirmPassword()
    ps = vm.client.clientPS().toUpperCase()
    pn = vm.client.clientPN()
    addr = vm.client.clientAddress()
    account = vm.client.clientAccount()
    term = vm.client.clientTermCondition()
    console.log(ps)
    errorText =
      if !direction or !name or !email or !login or !passw or !ps or !pn or !addr or !account
        "Iltimos xamma maydonni to'ldiring."
      else if(products.length < 1)
        'Kamida bir mahsulotni tanlang.'
      else if (passw != cpassw)
        'Parol bir xil emas.'
      else if (ps.length != 2)
        'Passport Seriya noto"gri kiritildi'
      else if (pn.length != 7)
        'Passport Raqam noto"gri kiritildi'
      else if (term == false)
        'Iltimos qoidalarimiz bilan tanishib chiqing va uni qabul qilish tugmasini bosing'
    if errorText
      alert(errorText)
    else
      alert('Siz muaffoqiyatli royhatdan o"tdinggiz')
      submit()
    false

  ko.applyBindings {vm}

