FROM node:18-alpine3.17

RUN addgroup -g 1001 -S nodejs && \
    adduser -S nextjs -u 1001

WORKDIR /app

COPY package.json ./
COPY --chown=nextjs:nodejs app.js ./

USER nextjs

EXPOSE 3000

CMD ["node", "app.js"]
