resource "azurerm_container_registry" "MyAzureCR05" {
  location            = "West Europe"
  name                = "MyAzureCR05"
  resource_group_name = "rg-bootcamp-Niklas-Kehr"
  sku = "Standard"
  admin_enabled = true
  tags = {
    "createdBy" = "Niklas.Kehr@pexon-consulting.de",
    "neededUntil" = "2022-05-05T00:00:00Z",
    "project"     = "cloudbootcamp"
  }
}