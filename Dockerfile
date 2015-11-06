FROM heroku/cedar:14

MAINTAINER Yannick Schutz <yannick@heroku.com>

ADD https://releases.hashicorp.com/vault/0.3.1/vault_0.3.1_linux_amd64.zip /tmp/vault.zip
RUN cd /bin && unzip /tmp/vault.zip && chmod +x /bin/vault && rm /tmp/vault.zip

EXPOSE 8200
ENV VAULT_ADDR "http://127.0.0.1:8200"

RUN mkdir /certs

COPY . /app
WORKDIR /app
ENV HOME /app
ENV STACK cedar-14
ENV PATH /app:$PATH
