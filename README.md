# Azure VM Infrastructure Project

This project uses Terraform to deploy a virtual machine infrastructure on Azure. It includes resources for Windows and Linux virtual machines, a Network Security Group (NSG), availability set, virtual machine scale set, Remote Desktop Services (RDS), and SSH access.

## Table of Contents 
* Requirements
* Project Overview
* Infrastructure Resources
* Setup and Usage
* Outputs
* Contributing

## Requirments
* Terraform version 1.3 or later
* Azure CLI for authentication
* An Azure subscription

## Project Overview
This Terraform project creates a complete infrastructure for running virtual machines in Azure. The resources include:
* Windows and Linux virtual machines
* Network Security Groups (NSGs) with defined inbound/outbound rules
* An availability set for high availability of virtual machines
* A virtual machine scale set for scaling workloads
* Remote Desktop Services (RDS) on Windows VM with SSH access for Linux VM
