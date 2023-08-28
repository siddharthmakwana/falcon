FROM hyperledger/fabric-tools:2.4
RUN apk add openssl curl curl-dev
RUN wget https://github.com/hyperledger/fabric-ca/releases/download/v1.5.6/hyperledger-fabric-ca-linux-arm64-1.5.6.tar.gz
RUN tar -xvzf hyperledger-fabric-ca-linux-arm64-1.5.6.tar.gz
RUN mv bin/fabric-ca-client /usr/local/bin/fabric-ca-client
RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.23.10/bin/linux/amd64/kubectl \
     && mv kubectl /usr/local/bin/ \
     && chmod 755 /usr/local/bin/fabric-ca-client \
     && chmod 755 /usr/local/bin/kubectl
