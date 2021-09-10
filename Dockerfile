FROM mcr.microsoft.com/vscode/devcontainers/universal

USER root

RUN apt-get update && \
	apt-get upgrade -y

USER codespace
