FROM orienteer/orienteer:latest

WORKDIR /tmp/src/
ADD . /tmp/src/
RUN mvn -s /usr/share/maven/ref/settings-docker.xml clean install && \
    mv target/sav.war /app/ && \
    cp orienteer.properties /app/ && \
    rm -rf /tmp/src/ && \
    ln -s -f /app/sav.war /app/active.war

WORKDIR /app/runtime

asfsadfsdf
