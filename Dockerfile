FROM heroku/cedar:14

MAINTAINER Yannick Schutz <yannick@heroku.com>

RUN mkdir -p /app/user

ADD https://releases.hashicorp.com/vault/0.3.1/vault_0.3.1_linux_amd64.zip /tmp/vault.zip
RUN cd /app/user && unzip /tmp/vault.zip && chmod +x /app/user/vault && rm /tmp/vault.zip

EXPOSE 8080
ENV VAULT_ADDR "http://127.0.0.1:8080"

COPY . /app/user
WORKDIR /app/user
ENV HOME /app/user
ENV STACK cedar-14
ENV PATH /app/user:$PATH
