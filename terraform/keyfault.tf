resource "azurerm_key_vault" "keyvaultnk12346" {
  name                        = "keyvaultnk12346"
  location                    = "West Europe"
  resource_group_name         = "rg-bootcamp-Niklas-Kehr"
  enabled_for_disk_encryption = true
  tenant_id                   = "f1640c14-f2cd-4607-b90a-ec03d1b46437"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"
  tags = {
    "createdBy" = "Niklas.Kehr@pexon-consulting.de",
    "neededUntil" = "2022-05-05T00:00:00Z",
    "project"     = "cloudbootcamp"
  }

  access_policy {
    tenant_id = "f1640c14-f2cd-4607-b90a-ec03d1b46437"
    object_id = "3f56b8b1-6232-47b8-94de-7285a95e0c7f"

    key_permissions = [
        "Get",
        #"List",
        #"Update",
        #"Create",
        #"Import",
        #"Delete",
        #"Recover",
        #"Backup",
        #"Restore",
        #"ManageContacts",
        #"ManageIssuers",
        #"GetIssuers",
        #"ListIssuers",
        #"SetIssuers",
        #"DeleteIssuers",
    ]
    secret_permissions = [
        "Get",
        #"Set"
        #"Update",
        #"Create",
        #"Import",
        #"Delete",
        #"Recover",
        #"Backup",
        #"Restore",
    ]
    storage_permissions = [
        "Get",
        #"List",
        #"Delete",
        #"Recover",
        #"Backup",
        #"Restore",
    ]
  }
}

#resource "azurerm_key_vault_secret" "ip" {
#  name         = "ip"
#  value        = "34.159.3.127"
#  key_vault_id = azurerm_key_vault.keyvaultnk12346.id
#}

#resource "azurerm_key_vault_secret" "user" {
#  name         = "user"
#  value        = "pexon-training"
#  key_vault_id = azurerm_key_vault.keyvaultnk12345.id
#}

#resource "azurerm_key_vault_secret" "password" {
#  name         = "password"
#  value        = "pexon-training2022!"
#  key_vault_id = azurerm_key_vault.keyvaultnk12345.id
#}

#resource "azurerm_key_vault_secret" "name" {
#  name         = "name"
#  value        = "books"
#  key_vault_id = azurerm_key_vault.keyvaultnk12345.id
#}