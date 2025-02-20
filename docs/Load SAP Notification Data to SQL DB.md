# Load SAP Notification Data to SQL DB

## Introduction

It is to document the solution to load notifications data from SAP to the Azure SQL database. This document contains all the implementation details.

## Azure

All the Azure components are specified in the ARM template files. There are two templates, one for the SQL Server and another for SQL Database.

Login in the database and run the [query to create all the tables](../sql-server/sap-pm-notif-tables.sql).

## Synapse

The pipeline "Load SAP Notifications to SQLDB" contains all the Copy data and Data flow activities to copy all the content from the CDS Views bellow to the SQL Server. There is one activity for each CDS View selected for Notifications, so you can activate according to the needs.

| CDS View                     | View            | Activity name                          | Type      |
| ---------------------------- | --------------- | -------------------------------------- | --------- |
| I_PMNotifMaintenanceData     | IPMNTFMAINTDATA | Maintenance Notification Data          | Copy Data |
| I_MaintNotificationActyData  | INOTIFACTYDATA  | Maintenance Notification Activity Data | Data Flow |
| I_MaintNotificationCauseData | INOTIFCAUSEDATA | Maintenance Notification Cause Data    | Data Flow |
| I_MaintNotificationItemData  | INOTIFITEMDATA  | Maintenance Notification Item Data     | Data Flow |
| I_MaintNotificationTaskData  | INOTIFTASKDATA  | Maintenance Notification Task Data     | Data Flow |

Here is the repository with the pipeline: [syn-sap-integration-hacks](https://github.com/furlan/copilot-studio-hack/tree/main/syn-sap-integration-hacks).

## SHIR: Self-hosted Integration Runtime

To access SAP system, it's required a SHIR. You can setup running [this Terraform script](https://github.com/microsoft/power-platform-terraform-quickstarts/tree/main/quickstarts/301-sap-gateway).
