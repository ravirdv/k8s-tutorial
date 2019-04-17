FROM sickp/alpine-sshd:latest


RUN apk add --update ca-certificates \
 && apk add --update -t deps curl \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*
RUN apk add --update curl
RUN echo "export KUBECONFIG=/tmp/kubeconfig.yaml" >> /root/.profile
RUN echo "sed -i -e 's/localhost/server/g' /tmp/kubeconfig.yaml" >> /root/.profile
COPY motd /etc/motd
COPY activities /root/
