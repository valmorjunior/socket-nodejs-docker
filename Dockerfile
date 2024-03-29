FROM node:10
RUN mkdir -p devops/projetos/socket/html/node_modules && chown -R node:node devops/projetos/socket/html
WORKDIR devops/projetos/socket/html
COPY package*.json ./
RUN npm install
COPY . .
COPY --chown=node:node . .
USER node
EXPOSE 8080
CMD [ "node", "app.js" ]