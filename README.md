# entra-id-windows-vm-terraform
Terraform module and examples to enable Microsoft Entra ID login on Azure Windows VMs and assign VM-scoped RBAC roles.
This repository provides Terraform infrastructure-as-code for deploying a Windows VM in Azure with Entra ID (formerly Azure AD) authentication integration.

**Key Purpose**
Instead of using local admin credentials, it enables passwordless login to Windows VMs via Entra ID, allowing users to authenticate using their organizational credentials.

Main Components
Infrastructure Setup:

Resource group, virtual network, subnet, and network security group
Windows Server VM with System Assigned managed identity
Public IP and network interface for RDP access
Entra ID Integration:

AADLoginForWindows extension installed on the VM for Entra ID support
Role-based access control (RBAC) assignments to grant login permissions:
Virtual Machine Administrator Login — for admin-level access
Virtual Machine User Login — for standard user access
Uses azuread and azurerm Terraform providers to configure both Azure infrastructure and Entra ID roles
Workflow
Deploy Azure infrastructure (networking, VM, managed identity)
Install Entra ID login extension on the Windows VM
Assign Entra ID users/groups to VM roles via RBAC
Users can then RDP into the VM using their Entra ID credentials instead of local admin passwords
Security Benefits
Eliminates local admin credential storage and sharing
Centralized access management through Entra ID
Audit trail of who accessed which VM
Aligns with zero-trust security principles
This is ideal for enterprise environments where Entra ID is the identity provider.
