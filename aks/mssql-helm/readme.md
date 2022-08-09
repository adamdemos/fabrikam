# Readme.md

This is MSSQL Helm chart based on offical MS chart from https://github.com/microsoft/mssql-docker.

## Important paramerters

|     Configuration parameters                 |     Description                                                                                                                      | Default_Value                      |
|----------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|
|     Values.sa_password                       |     Configure   the SA user password.                                                                                                |     StrongPass1!                   |
|     Values.service.type                      |     The   type of the service to be created within the kubernetes cluster.                                                           |     LoadBalancer                   |

## Custom parameters

|     Configuration parameters                 |     Description                                                                                                                      | Value                              |
|----------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|
|     Values.service.type                      |     The value 'AzureInternalLoadBalancer' will instruct Azure to expose this pod using Azure internalLB.                             |     AzureInternalLoadBalancer      |
|                                              |     NOTE: You need to have Azure private networking in place to make usage of internal LB                                            |                                    |
  
## Other parameters
 
|     Configuration parameters                 |     Description                                                                                                                      | Default_Value                      |
|----------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|------------------------------------|
|     Values.image.repository                  |     The   SQL image to be downloaded and used for container deployment.                                                              | mcr.microsoft&#46;com/mssql/server |
|     Values.image.tag                         |     The   tag of the image to be download for the specific SQL image.                                                                | 2019-latest                        |
|     Values.ACCEPT_EULA.value                 |     Set   the ACCEPT_EULA variable to any value to confirm your acceptance of the SQL Server EULA.                                   | Y                                  |
|     Values.MSSQL_PID.value                   |     Set   the SQL Server edition or product key. please refer environment   variable  for more details                               | Developer                          |
|     Values.MSSQL_AGENT_ENABLED.value         |     Enable SQL Server Agent. For example, 'true' is enabled and 'false' is disabled.                                                 | TRUE                               |
|     Values.hostname                          |     The   name that you would like to see when you run the select @@servername for the SQL instance running inside the container.    | mssqllatest                        |
|     Values.fullnameOverride                  |     Sets custom name for service being deployed                                                                                      | [release name]-mssql-latest        |
|     Values.containers.ports.containerPort    |     Port   on which the SQL Server is listening inside the container.                                                                |     1433                           |
|     Values.podSecurityContext.fsgroup        |     Security   context at the pod level.                                                                                             |     10001                          |
|     Values.service.port                      |     The   service port number.                                                                                                       |     1433                           |
|     Values.pvc.StorageClass                  |     The   storage class to be used by the kubernetes cluster for SQL Server deployment.                                              |     azure-disk                     |
|     Values.pvc.userdbaccessMode              |     The   access mode for the pvc (persistance volume claim) to be used by user   databases.                                         |     ReadWriteOnce                  |
|     Values.pvc.userdbsize                    |     The   size to allocate to the persistance volume claim (pvc).                                                                    |     5Gi                            |
|     Values.pvc.userlogaccessMode             |     The   access mode for the pvc (persistance volume claim) to be used by the log   files of the user databases.                    |     ReadWriteOnce                  |
|     Values.pvc.userlogsize                   |     The   size to allocate to the persistance volume claim (pvc) used by the log files   of the user databases.                      |     5Gi                            |
|     Values.pvc.tempdbaccessMode              |     The   access mode for the pvc (persistance volume claim) to be used by temp   database.                                          |     ReadWriteOnce                  |
|     Values.pvc.   Tempsize                   |     The   size to allocate to the persistance volume claim (pvc) used by the temp   database.                                        |     2Gi                            |
|     Values.pvc.mssqldataaccessMode           |     The   access mode for the pvc (persistance volume claim) to be used by system   databases.                                       |     ReadWriteOnce                  |
|     Values.pvc.mssqldbsize                   |     The   size to allocate to the  persistance   volume claim (pvc) used by the system databases                                     |     2Gi                            |
 