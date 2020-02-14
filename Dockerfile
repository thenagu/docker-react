FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
# This is for production, so not mounting. copying the code. After build, this will be ignored anyhow.
COPY . .
RUN npm run build

# the from keyward starts the new phase.
FROM nginx
# to path (/usr/share/nginx/html) is from the documentation at https://hub.docker.com/_/nginx
COPY --from=builder /app/build /usr/share/nginx/html
# Starting nginx is the default command to nginx container, so no need to mention it here.
# Port binding is 8080:80 when you docker run
# To run:
#     docker buid .
#     docker run -p 8080:80 imagaid