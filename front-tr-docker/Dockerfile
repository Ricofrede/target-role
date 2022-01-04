FROM node:14

WORKDIR /app

COPY package.json ./

RUN npm install

EXPOSE 3000

COPY . .

COPY launcher.sh /launcher.sh

RUN chmod a+x /launcher.sh

CMD /launcher.sh
