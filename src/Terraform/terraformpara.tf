terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {

  features {}

}
resource "azurerm_resource_group" "example" {
  name     = "RGG2"
  location = "East US"
}

resource "azurerm_template_deployment" "example" {
  name                = "azuredeploy1"
  resource_group_name = azurerm_resource_group.example.name


    parameters = {
   "WebsiteName" = "uniwebnate7835"
    "MHC_ServerName" = "MHCServNtest647"
    "MHC_DBLogin" = "mohit1"
    "MHC_DBPassword" = "Guptarachit@195"
    "MHC_DBPasswordForTest" = "Guptarachit@195"
    "MHC_DBName" = "MyHealthClinicDB"
    "MHC_DBCollation" = "SQL_Latin1_General_CP1_CI_AS"
    "MHC_DBEdition" = "Basic"
    "MHC_HostingPlanName" = "MHCHostPlanN143257"
    "MHC_HostingPlanSKU" = "Standard"
    "MHC_HostingPlanWorkerSize" = "0"
    EnableRules = null
 }
  deployment_mode = "Incremental"
}