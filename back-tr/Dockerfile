FROM node:14

WORKDIR /app

# Resolve node_modules for caching
COPY package.json ./
RUN npm install -f

EXPOSE 1337

COPY . .

COPY launcher.sh /launcher.sh

RUN chmod a+x /launcher.sh

CMD /launcher.sh
