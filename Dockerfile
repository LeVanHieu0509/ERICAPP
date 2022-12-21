# syntax=docker/dockerfile:1
## Chuyển bị một node môi trường kép một cái pod về
FROM node:18-alpine

#Tạo một cái thư mục root
WORKDIR /app

##copy source code 
COPY . .

## Build về ngôn ngữ máy
RUN yarn install --production

# Hưỡng dẫn docker làm sao chạy được Image này
CMD ["node", "src/index.js"]    

#docker build -t getting-started .
#Cổng 3000 là cổng của docker, là từ cổng 3000 ứng với cổng 3001
#docker run -dp 3001:3000 getting-started