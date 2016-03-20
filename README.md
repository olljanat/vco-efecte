# vco-efecte
Efecte (http://www.efecte.com) WebAPI plugin for VMware vCenter Orchestrator / VMware vRealize Orchestrator

This can be used to create integrations between Efecte and other systems.

# Currently implemented features
| Item type | Name | Description|
|---|---|---|
| Action | generateAndExecuteSQLquery | Generates SQL query using table/view name and column names |
| Action | convertSQLresultToXML | Converts "generateAndExecuteSQLquery" action result to Efecte WebAPI format |
| Workflow | Add Efecte REST Operations | Adds Efecte REST operations to REST host |
| Workflow | Invoke a Efecte dataCardImport using folderCode | Calls "Efecte-dataCardImport-folderCode" REST operation |

# Usage
* Add REST host using "Add a REST host" workflow.
* Add REST operations using "Add Efecte REST Operations" workflow.
* Create your own workflows based on examples on [vco-efecte-examples](https://github.com/olljanat/vco-efecte-examples) project.

## Known issues
* Only dataCardImport using FolderCode is currently tested.

## TODO
* Invoke workflows for other REST operations.

## Build
This project uses vFLOWer (https://github.com/ByteLife/vFLOWer) toolkit for package generating.

Build requirements:
- Git for Windows: https://msysgit.github.io
- Apache Ant for Windows: http://ant.apache.org
- OpenSSL for Windows: http://gnuwin32.sourceforge.net

Include Ant and OpenSSL binary paths to Windows PATH environment variable
and openssl.cnf -file path to OPENSSL_CONF environment variable.

### Build:
git clone https://github.com/olljanat/vco-netscaler-base.git
ant build

### Install:
Install using vCO client from inout folder

### Exporting package back to sources:
Export package using vCO client to inout folder
Update sources using command:
ant precommit
