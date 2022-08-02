FROM node

WORKDIR /app

COPY ["src/package.json", "src/package-lock.json*", "./"] /app
RUN npm install

COPY src /app
CMD [ "node", "/app/server.js"]