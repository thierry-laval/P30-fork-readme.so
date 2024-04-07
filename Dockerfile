FROM node:21.6.1-alpine

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install

ADD . /app/

COPY . .

RUN npm run build

EXPOSE 3000

# For production
CMD ["npm","run","start"]

# For development
# CMD ["npm","run","dev"]