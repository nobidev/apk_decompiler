FROM ghcr.io/nobidev/apk_decompiler/apktool:main as apktool

FROM mcr.microsoft.com/vscode/devcontainers/universal

USER root

RUN apt-get update && \
	apt-get upgrade -y

COPY --from=apktool /apktool /opt/apktool

USER codespace
