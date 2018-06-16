FROM arm32v7/alpine

RUN apk --update add bash openssl

WORKDIR /certs

COPY generate-certs /usr/local/bin/generate-certs

CMD /usr/local/bin/generate-certs

VOLUME /certs
