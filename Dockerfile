# Bundle Stage
FROM node:18.15.0-buster
WORKDIR /opt/
RUN git clone https://github.com/taotao2008/iframe-auth-example.git
WORKDIR /opt/iframe-auth-example
RUN npm install
EXPOSE 3030
COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
