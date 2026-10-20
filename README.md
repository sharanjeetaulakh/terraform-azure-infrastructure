Indonesia Loan Management System --- Terraform Root Project

This root Terraform configuration creates the Azure storage foundation
for a sample Loan Management System environment.
What this project creates
1. Azure Resource Group: rg-lms-idn-dev-01
2. Azure Storage Account: stlmsidndev001
3. Private Blob Container: loan-documents
4. Blob: loan-application-sample.pdf
The root configuration calls four reusable GitHub modules in dependency
order: