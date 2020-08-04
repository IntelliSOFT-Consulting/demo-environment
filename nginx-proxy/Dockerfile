FROM nginx:1.13-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY utils/replace-vars /replace-vars
COPY cmd.sh /cmd.sh
#COPY fullchain.pem /etc/nginx/certs/fullchain.pem
#COPY privkey.pem /etc/nginx/certs/privkey.pem

COPY server.crt /etc/ssl/crt/server.crt
COPY server.key /etc/ssl/crt/server.key

CMD ./cmd.sh
