FROM gradle

ADD apktool /workspace

WORKDIR /workspace

RUN ./gradlew build shadowJar proguard

RUN mkdir /apktool && \
    cp scripts/linux/* /apktool/ && \
    cp brut.apktool/apktool-cli/build/libs/apktool-*-dirty-small.jar /apktool/apktool.jar
