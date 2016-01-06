FROM nginx:1.9.7

RUN apt-get update && apt-get install -yq gettext

ADD events-ui.tar /usr/share/nginx/html

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
