## Clone env
Run command: cp .env.default .env

#### Update env 
 1. Change config mongo db includes:
    MONGO_ROOT_USERNAME, MONGO_ROOT_PASSWORD, MONGO_DATABASE
 2. Change PROJECT_NAME

#### Add cron for project
 1. Access to folder with path: /workspace/cron => create file cron here

##Setup project
 1. Run command:
    docker exec -it workspace bash \
    npm install \
    composer install
 