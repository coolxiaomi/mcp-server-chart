# FROM node:lts-alpine
FROM swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/library/node:22.9.0

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --ignore-scripts

# Copy application code
COPY . .

# Build the application
RUN npm run build

EXPOSE 1122
# Command will be provided by smithery.yaml
CMD ["node", "build/index.js","--transport","sse"]