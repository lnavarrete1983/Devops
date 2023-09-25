/* Equipo LINUX BackEnd*/
resource "azurerm_network_interface" "nicbladexappsdev" {
  name                = "NIC-BLADEXAPPS-DP-DEV-BE01"
  location            = "East Us"
  resource_group_name = "UIO-RG-BLXAPPS-TE"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnetbladexappdev.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmlnxbladexappsdev" {
  name                = "VM-BLADEXAPPS-DP-DEV-BE01-LNX"
  resource_group_name = azurerm_resource_group.rgbladexdappdev.name
  location            = "East Us"
  size                = "Standard_D2_v2"
  admin_username      = "adminuser"
  admin_password = "B14d3x.4pp$"
  disable_password_authentication = "false"
  network_interface_ids = [
    azurerm_network_interface.nicbladexappsdev.id,
  ]

   os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}

/* Equipo LINUX FrontEnd*/
resource "azurerm_network_interface" "nicbladexappsfedev" {
  name                = "NIC-BLADEXAPPS-DP-DEV-FE01"
  location            = "East Us"
  resource_group_name = "UIO-RG-BLXAPPS-TE"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnetbladexappdev.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vmlnxbladexappsfedev" {
  name                = "VM-BLADEXAPPS-DP-DEV-FE01-LNX"
  resource_group_name = azurerm_resource_group.rgbladexdappdev.name
  location            = "East Us"
  size                = "Standard_D2_v2"
  admin_username      = "adminuser"
  admin_password = "B14d3x.4pp$"
  disable_password_authentication = "false"
  network_interface_ids = [
    azurerm_network_interface.nicbladexappsfedev.id,
  ]

   os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}