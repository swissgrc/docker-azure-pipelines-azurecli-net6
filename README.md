# Docker image for running Azure CLI commands in an Azure Pipelines container job

<!-- markdownlint-disable MD013 -->
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-azurecli-net6/blob/main/LICENSE) [![Build](https://img.shields.io/github/actions/workflow/status/swissgrc/docker-azure-pipelines-azurecli-net6/publish.yml?branch=develop&style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-azurecli-net6/actions/workflows/publish.yml) [![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=swissgrc_docker-azure-pipelines-azurecli-net6&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=swissgrc_docker-azure-pipelines-azurecli-net6) [![Pulls](https://img.shields.io/docker/pulls/swissgrc/azure-pipelines-azurecli.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-azurecli) [![Stars](https://img.shields.io/docker/stars/swissgrc/azure-pipelines-azurecli.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-azurecli)
<!-- markdownlint-restore -->

Docker image to run Azure CLI commands in [Azure Pipelines container jobs].

## Usage

This image can be used to run Azure CLI commands in [Azure Pipelines container jobs].

### Azure Pipelines Container Job

To use the image in an Azure Pipelines Container Job, add one of the following example tasks and use it with the `container` property.

The following example shows the container used for a deployment step with a Azure CLI command:

```yaml
  - stage: deploy
    jobs:
      - deployment: runAzureCLI
        container: swissgrc/azure-pipelines-azurecli:latest-net6
        environment: smarthotel-dev
        strategy:
          runOnce:
            deploy:
              steps:
                - bash: |
                    az version
```

### Tags

| Tag           | Description                                                                                               | Base Image                                | Azure CLI | Size                                                                                                                                   |
|---------------|-----------------------------------------------------------------------------------------------------------|-------------------------------------------|-----------|----------------------------------------------------------------------------------------------------------------------------------------|
| latest-net6   | Latest stable release (from `main` branch)                                                                | swissgrc/azure-pipelines-dotnet:6.0.427   | 2.66.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/latest-net6?style=flat-square)   |
| unstable-net6 | Latest unstable release (from `develop` branch)                                                           | swissgrc/azure-pipelines-dotnet:6.0.427   | 2.66.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/unstable-net6?style=flat-square) |
| 2.37.0        | [Azure CLI 2.37.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#may-24-2022)        | swissgrc/azure-pipelines-dotnet:6.0.301   | 2.37.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.37.0?style=flat-square)        |
| 2.38.0        | [Azure CLI 2.38.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#july-05-2022)       | swissgrc/azure-pipelines-dotnet:6.0.302   | 2.38.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.38.0?style=flat-square)        |
| 2.39.0        | [Azure CLI 2.39.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#august-02-2022)     | swissgrc/azure-pipelines-dotnet:6.0.302   | 2.39.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.39.0?style=flat-square)        |
| 2.39.1        | [Azure CLI 2.39.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#august-02-2022)     | swissgrc/azure-pipelines-dotnet:6.0.302.1 | 2.39.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.39.0.1?style=flat-square)      |
| 2.40.0        | [Azure CLI 2.40.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#september-06-2022)  | swissgrc/azure-pipelines-dotnet:6.0.400   | 2.40.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.40.0?style=flat-square)        |
| 2.41.0        | [Azure CLI 2.41.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#october-11-2022)   | swissgrc/azure-pipelines-dotnet:6.0.402   | 2.41.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.41.0?style=flat-square)        |
| 2.42.0        | [Azure CLI 2.42.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#november-01-2022)  | swissgrc/azure-pipelines-dotnet:6.0.402   | 2.42.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.42.0?style=flat-square)        |
| 2.43.0        | [Azure CLI 2.43.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#december-06-2022)  | swissgrc/azure-pipelines-dotnet:6.0.404   | 2.43.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.43.0?style=flat-square)        |
| 2.44.0        | [Azure CLI 2.44.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#january-10-2023)   | swissgrc/azure-pipelines-dotnet:6.0.405   | 2.44.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.44.0?style=flat-square)        |
| 2.45.0        | [Azure CLI 2.45.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#february-07-2023)  | swissgrc/azure-pipelines-dotnet:6.0.406   | 2.45.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.45.0?style=flat-square)        |
| 2.46.0        | [Azure CLI 2.46.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#march-07-2023)     | swissgrc/azure-pipelines-dotnet:6.0.407   | 2.46.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.46.0?style=flat-square)        |
| 2.47.0        | [Azure CLI 2.47.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#april-04-2023)     | swissgrc/azure-pipelines-dotnet:6.0.408   | 2.47.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.47.0?style=flat-square)        |
| 2.48.0        | [Azure CLI 2.48.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#april-25-2023-1)   | swissgrc/azure-pipelines-dotnet:6.0.408   | 2.48.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.48.0?style=flat-square)        |
| 2.48.1        | [Azure CLI 2.48.1](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#april-25-2023)     | swissgrc/azure-pipelines-dotnet:6.0.408   | 2.48.1    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.48.1?style=flat-square)        |
| 2.49.0        | [Azure CLI 2.49.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#may-23-2023)       | swissgrc/azure-pipelines-dotnet:6.0.408   | 2.49.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.49.0?style=flat-square)        |
| 2.50.0-net6   | [Azure CLI 2.50.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#july-04-2023)      | swissgrc/azure-pipelines-dotnet:6.0.411   | 2.50.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.50.0-net6?style=flat-square)   |
| 2.51.0-net6   | [Azure CLI 2.51.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#august-01-2023)    | swissgrc/azure-pipelines-dotnet:6.0.412   | 2.51.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.51.0-net6?style=flat-square)   |
| 2.52.0-net6   | [Azure CLI 2.52.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#september-05-2023) | swissgrc/azure-pipelines-dotnet:6.0.413   | 2.52.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.52.0-net6?style=flat-square)   |
| 2.53.0-net6   | [Azure CLI 2.53.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#september-26-2023) | swissgrc/azure-pipelines-dotnet:6.0.414   | 2.53.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.53.0-net6?style=flat-square)   |
| 2.53.1-net6   | [Azure CLI 2.53.1](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#october-24-2023)   | swissgrc/azure-pipelines-dotnet:6.0.415   | 2.53.1    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.53.1-net6?style=flat-square)   |
| 2.54.0-net6   | [Azure CLI 2.54.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#november-14-2023)  | swissgrc/azure-pipelines-dotnet:6.0.416   | 2.54.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.54.0-net6?style=flat-square)   |
| 2.55.0-net6   | [Azure CLI 2.55.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#december-05-2023)  | swissgrc/azure-pipelines-dotnet:6.0.417   | 2.55.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.55.0-net6?style=flat-square)   |
| 2.56.0-net6   | [Azure CLI 2.56.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#january-09-2024)   | swissgrc/azure-pipelines-dotnet:6.0.418   | 2.56.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.56.0-net6?style=flat-square)   |
| 2.57.0-net6   | [Azure CLI 2.57.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#february-06-2024)  | swissgrc/azure-pipelines-dotnet:6.0.419   | 2.57.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.57.0-net6?style=flat-square)   |
| 2.58.0-net6   | [Azure CLI 2.58.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#march-05-2024)     | swissgrc/azure-pipelines-dotnet:6.0.420   | 2.58.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.58.0-net6?style=flat-square)   |
| 2.59.0-net6   | [Azure CLI 2.59.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#april-02-2024)     | swissgrc/azure-pipelines-dotnet:6.0.421   | 2.59.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.59.0-net6?style=flat-square)   |
| 2.60.0-net6   | [Azure CLI 2.60.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#april-30-2024)     | swissgrc/azure-pipelines-dotnet:6.0.422   | 2.60.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.60.0-net6?style=flat-square)   |
| 2.61.0-net6   | [Azure CLI 2.61.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#may-21-2024)       | swissgrc/azure-pipelines-dotnet:6.0.423   | 2.61.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.61.0-net6?style=flat-square)   |
| 2.62.0-net6   | [Azure CLI 2.62.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#july-09-2024)      | swissgrc/azure-pipelines-dotnet:6.0.424   | 2.62.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.62.0-net6?style=flat-square)   |
| 2.63.0-net6   | [Azure CLI 2.63.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#august-06-2024)    | swissgrc/azure-pipelines-dotnet:6.0.425   | 2.63.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.63.0-net6?style=flat-square)   |
| 2.64.0-net6   | [Azure CLI 2.64.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#september-03-2024) | swissgrc/azure-pipelines-dotnet:6.0.425   | 2.64.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.64.0-net6?style=flat-square)   |
| 2.65.0-net6   | [Azure CLI 2.65.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#october-01-2024)   | swissgrc/azure-pipelines-dotnet:6.0.425   | 2.65.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.65.0-net6?style=flat-square)   |
| 2.66.0-net6   | [Azure CLI 2.66.0](https://learn.microsoft.com/en-us/cli/azure/release-notes-azure-cli#november-05-2024)  | swissgrc/azure-pipelines-dotnet:6.0.427   | 2.66.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.66.0-net6?style=flat-square)   |

### Configuration

These environment variables are supported:

| Environment variable   | Default value        | Description                                                      |
|------------------------|----------------------|------------------------------------------------------------------|
| AZURECLI_VERSION       | `2.65.0`             | Version of Azure CLI installed in the image.                     |

[Azure Pipelines container jobs]: https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases
