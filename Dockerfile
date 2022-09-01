FROM  node:alpine3.15 as build
RUN  mkdir -p /angular_bootstrap 
WORKDIR  /angular_bootstrap 

COPY package.json /angular_bootstrap/
RUN npm install
COPY .  /angular_bootstrap/
RUN npm run build 

FROM  nginx:alpine
COPY --from=build /angular_bootstrap /usr/share/nginx/html