FROM stefanscherer/node-windows:12.18.3-windowsservercore

RUN npm i -g azurite

EXPOSE 10000
EXPOSE 10001

VOLUME ["/azurite"]

CMD azurite --silent --location c:\azurite --debug c:\azurite\debug.log --blobHost 0.0.0.0 --queueHost 0.0.0.0