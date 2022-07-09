FROM node:14.19.3-alpine3.16
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN mkdir data
COPY --chown=app:app package.json .
RUN npm install
COPY --chown=app:app . .
ENV API_URL=https://myapi.com/api
ENV StripeSKey=sk_thhwh02993992ljjjjss
EXPOSE 3000
CMD [ "npm", "start" ]