#!/bin/sh

LOG_FILE="/app/scripts/start-with-prisma.log"
PRISMA_CMD="npx prisma generate"
RETRY_INTERVAL=60 # seconds
MAX_RETRIES=5


log() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> $LOG_FILE
}

> $LOG_FILE

log "Starting configuration script."


attempt=1

while [ $attempt -le $MAX_RETRIES ]; do
    log "Trying to run: $PRISMA_CMD (attempt $attempt to $MAX_RETRIES)"
    
    if $PRISMA_CMD; then
        log "Comand '$PRISMA_CMD' executed successfully!"
        break
    else
        log "Fail to execute '$PRISMA_CMD'. Trying again in $RETRY_INTERVAL seconds..."
        attempt=$((attempt+1))
        sleep $RETRY_INTERVAL
    fi
done

if [ $attempt -gt $MAX_RETRIES ]; then
    log "Maximum number of attempts reached. Command '$PRISMA_CMD' was not executed successfully."
    exit 1
fi

log "Starting server with npm run start:${NODE_ENV:-dev}"
npm run start:${NODE_ENV:-dev}

if [ $? -eq 0 ]; then
    log "Servidor start sucessfully."
else
    log "Failed to start server."
    exit 1
fi
