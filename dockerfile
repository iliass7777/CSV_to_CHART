FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# We copy package.json first to leverage Docker cache
COPY back/package*.json ./

# Use npm install (package-lock.json may be absent); keep production deps only
RUN npm install --only=production

# Copy application source
COPY back/ .

EXPOSE 3000

ENV NODE_ENV=production


CMD ["npm", "start"]
