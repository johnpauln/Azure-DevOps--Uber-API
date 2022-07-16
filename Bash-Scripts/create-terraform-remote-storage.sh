#!/bin/bash

# This script creates the resource group, storage account and blob container for the terraform state file
RESOURCE_GROUP_NAME="tfstate-rg"
STORAGE_ACCOUNT_NAME="tfstate$RANDOM" 
CONTAINER_NAME="tfstate"  

# Create Resource Group
az group create --location uksouth   --name $RESOURCE_GROUP_NAME

# Create Storage Account
az storage account create --name $STORAGE_ACCOUNT_NAME --resource-group $RESOURCE_GROUP_NAME --kind StorageV2 --location uksouth --sku Standard_LRS --encryption-services blob

# Create Storage Account blob
az storage container create  --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME