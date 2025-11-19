FROM node:18

WORKDIR /usr/src/app

# Install app dependencies
# We copy package.json first to leverage Docker cache
COPY package*.json ./

RUN npm install 

# Copy application source
COPY . .

EXPOSE 3000

ENV NODE_ENV=production


CMD ["npm", "start"]
