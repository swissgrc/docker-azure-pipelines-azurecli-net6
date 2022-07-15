FROM swissgrc/azure-pipelines-dotnet:6.0.302

LABEL org.opencontainers.image.vendor="Swiss GRC AG"
LABEL org.opencontainers.image.authors="Swiss GRC AG <opensource@swissgrc.com>"
LABEL org.opencontainers.image.title="azure-pipelines-azurecli"
LABEL org.opencontainers.image.documentation="https://github.com/swissgrc/docker-azure-pipelines-azurecli"

# Make sure to fail due to an error at any stage in shell pipes
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Install Azure CLI

# renovate: datasource=github-tags depName=Azure/azure-cli extractVersion=^azure-cli-(?<version>.*)$
ENV AZURECLI_VERSION=2.37.0

RUN curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
  AZ_REPO=$(lsb_release -cs) && \
  echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" > /etc/apt/sources.list.d/azure-cli.list && \
  apt-get update && apt-get install -y --no-install-recommends azure-cli=${AZURECLI_VERSION}-1~bullseye && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  # Smoke test
  az version
