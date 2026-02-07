FROM node:18-alpine

WORKDIR /app

# Copy backend package files and install dependencies
COPY backend/package*.json ./backend/
RUN cd backend && npm install --production

# Copy backend source
COPY backend ./backend

ENV PORT 5000
EXPOSE 5000

# Start the backend
CMD ["sh", "-c", "cd backend && npm start"]
