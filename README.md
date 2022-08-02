# Docker image for running Azure CLI commands in an Azure Pipelines container job

<!-- markdownlint-disable MD013 -->
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-azurecli/blob/main/LICENSE) [![Build](https://img.shields.io/github/workflow/status/swissgrc/docker-azure-pipelines-azurecli/Build/develop?style=flat-square)](https://github.com/swissgrc/docker-azure-pipelines-azurecli/actions/workflows/publish.yml) [![Pulls](https://img.shields.io/docker/pulls/swissgrc/azure-pipelines-azurecli.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-azurecli) [![Stars](https://img.shields.io/docker/stars/swissgrc/azure-pipelines-azurecli.svg?style=flat-square)](https://hub.docker.com/r/swissgrc/azure-pipelines-azurecli)
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
        container: swissgrc/azure-pipelines-azurecli:latest
        environment: smarthotel-dev
        strategy:
          runOnce:
            deploy:
              steps:
                - bash: |
                    az version
```

### Tags

| Tag      | Description                                                                                         | Base Image                              | Azure CLI | Size                                                                                                                              |
|----------|-----------------------------------------------------------------------------------------------------|-----------------------------------------|-----------|-----------------------------------------------------------------------------------------------------------------------------------|
| latest   | Latest stable release (from `main` branch)                                                          | swissgrc/azure-pipelines-dotnet:6.0.302 | 2.38.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/latest?style=flat-square)   |
| unstable | Latest unstable release (from `develop` branch)                                                     | swissgrc/azure-pipelines-dotnet:6.0.302 | 2.39.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/unstable?style=flat-square) |
| 2.37.0   | [Azure CLI 2.37.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#may-24-2022)  | swissgrc/azure-pipelines-dotnet:6.0.301 | 2.37.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.37.0?style=flat-square)   |
| 2.38.0   | [Azure CLI 2.38.0](https://docs.microsoft.com/en-us/cli/azure/release-notes-azure-cli#july-05-2022) | swissgrc/azure-pipelines-dotnet:6.0.302 | 2.38.0    | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/swissgrc/azure-pipelines-azurecli/2.38.0?style=flat-square)   |

### Configuration

These environment variables are supported:

| Environment variable   | Default value        | Description                                                      |
|------------------------|----------------------|------------------------------------------------------------------|
| AZURECLI_VERSION       | `2.38.0`             | Version of Azure CLI installed in the image.                     |

[Azure Pipelines container jobs]: https://docs.microsoft.com/en-us/azure/devops/pipelines/process/container-phases
