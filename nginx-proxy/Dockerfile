FROM nginx:1.13-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY utils/replace-vars /replace-vars
COPY cmd.sh /cmd.sh
#COPY fullchain.pem /etc/nginx/certs/fullchain.pem
#COPY privkey.pem /etc/nginx/certs/privkey.pem

COPY /etc/ssl/crt/server.crt /etc/nginx/certs/fullchain.pem
COPY /etc/ssl/crt/server.key /etc/nginx/certs/privkey.pem

CMD ./cmd.sh
