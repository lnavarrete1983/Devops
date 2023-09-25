resource "azurerm_resource_group" "rgbladexdappdev" {
  name     = "UIO-RG-BLXAPPS-TE"
  location = "East Us"
}

resource "azurerm_virtual_network" "avnbladexappdev" {
  name                = "VN-BLADEXAPPS-DP-DEV"
  address_space       = ["10.0.0.0/16"]
  location            = "East Us"
  resource_group_name = "UIO-RG-BLXAPPS-TE"
  depends_on = [ azurerm_resource_group.rgbladexdappdev ]
}

resource "azurerm_subnet" "subnetbladexappdev" {
  name                 = "SUBN-BLADEXAPPS-DP-DEV"
  resource_group_name  = "UIO-RG-BLXAPPS-TE"
  virtual_network_name = "VN-BLADEXAPPS-DP-DEV"
  address_prefixes     = ["10.0.1.0/24"]
  depends_on = [ azurerm_virtual_network.avnbladexappdev ]
}