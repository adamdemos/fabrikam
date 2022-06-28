## Installation with helm
    helm upgrade --install <release name> . --set saPassword=<password> --namespace <namespace> --create-namespace

## Mandatory parameters
- saPassword - *desired password for SA account*

## Optional parameters
Check **values.sample.yaml** file for information.
  <br>
  <br>

## Test SQL using sqlcmd.exe
    sqlcmd -S <ip> -U sa -P <password> -i .\sql-samples\instpubs.sql

## Links
[Official Microsoft guide to run MSSQL 2019 in container](https://docs.microsoft.com/en-us/sql/linux/tutorial-sql-server-containers-kubernetes?view=sql-server-ver15)