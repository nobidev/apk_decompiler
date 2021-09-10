FROM gradle

ADD dex2jar /workspace

WORKDIR /workspace

RUN ./gradlew distTar

RUN cp dex-tools/build/distributions/dex-tools-*.tar /dex2jar.tar && \
    mkdir /dex2jar && \
    tar xf /dex2jar.tar --strip-components 1 -C /dex2jar && \
    find /dex2jar -name "*.bat" -delete
