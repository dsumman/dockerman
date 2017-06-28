FROM node 

RUN npm install pm2 -g
RUN npm install grunt -g

VOLUME ["/var/www"]
ADD start.sh /start.sh
RUN chmod 755 /start.sh
CMD ["/start.sh"]
