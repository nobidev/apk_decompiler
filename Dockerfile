FROM ghcr.io/nobidev/apk_decompiler/apktool:main as apktool

FROM ghcr.io/nobidev/apk_decompiler/dex2jar:main as dex2jar

FROM mcr.microsoft.com/vscode/devcontainers/universal

USER root

RUN apt-get update && \
	apt-get upgrade -y

COPY --from=apktool /apktool /opt/apktool

COPY --from=dex2jar /dex2jar /opt/dex2jar

USER codespace
