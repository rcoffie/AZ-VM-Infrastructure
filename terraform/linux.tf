resource "azurerm_linux_virtual_machine" "linux_vm" {
  name                = "linux-vm"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.linux_nic.id,
  ]

  admin_ssh_key {
    username = "adminuser"
    # public_key = file("~/.ssh/id_rsa.pub")
    public_key = file("C:/Users/Coffie/.ssh/id_rsa.pub")

  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}