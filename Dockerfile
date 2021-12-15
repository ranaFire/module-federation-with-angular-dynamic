FROM node:12.14.1-alpine3.10
RUN apk add git
RUN npm install -g @angular/cli@12.0.0
WORKDIR /frontendapp
EXPOSE 4200
EXPOSE 3000
EXPOSE 3001
CMD npm run start
#Change in the package.json file: ng serve --host 0.0.0.0
#sudo docker run -v $PWD:/frontendapp -p 4200:4200  -p 3000:3000 -p 3001:3001 -it frontend:1 sh
#safari: localhost.4200