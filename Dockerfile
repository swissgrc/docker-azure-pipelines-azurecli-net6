# Base image containing dependencies used in builder and final image
FROM ghcr.io/swissgrc/azure-pipelines-dotnet:7.0.302 AS base


# Builder image
FROM base AS build

# Make sure to fail due to an error at any stage in shell pipes
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# renovate: datasource=repology depName=debian_11/curl versioning=loose
ENV CURL_VERSION=7.74.0-1.3+deb11u7
# renovate: datasource=repology depName=debian_11/lsb-release versioning=loose
ENV LSBRELEASE_VERSION=11.1.0
# renovate: datasource=repology depName=debian_11/gnupg2 versioning=loose
ENV GNUPG_VERSION=2.2.27-2+deb11u2

RUN apt-get update -y && \
  # Install necessary dependencies
  apt-get install -y --no-install-recommends curl=${CURL_VERSION} lsb-release=${LSBRELEASE_VERSION} gnupg=${GNUPG_VERSION} && \
  # Add Azure CLI public key
  curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
  AZ_REPO=$(lsb_release -cs) && \
  echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" > /etc/apt/sources.list.d/azure-cli.list


# Final image
FROM base AS final

LABEL org.opencontainers.image.vendor="Swiss GRC AG"
LABEL org.opencontainers.image.authors="Swiss GRC AG <opensource@swissgrc.com>"
LABEL org.opencontainers.image.title="azure-pipelines-azurecli"
LABEL org.opencontainers.image.documentation="https://github.com/swissgrc/docker-azure-pipelines-azurecli"

# Make sure to fail due to an error at any stage in shell pipes
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

WORKDIR /
COPY --from=build /etc/apt/trusted.gpg.d/ /etc/apt/trusted.gpg.d
COPY --from=build /etc/apt/sources.list.d/ /etc/apt/sources.list.d

# Install Azure CLI

# renovate: datasource=github-tags depName=Azure/azure-cli extractVersion=^azure-cli-(?<version>.*)$
ENV AZURECLI_VERSION=2.49.0

RUN apt-get update -y && \
  # Install Azure CLI
  apt-get install -y --no-install-recommends azure-cli=${AZURECLI_VERSION}-1~bullseye && \
  # Clean up
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  # Smoke test
  az version
