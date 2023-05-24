ENV_VARS=$(cat .env | xargs)
export $ENV_VARS
# NGINX
rsync -e "ssh -o StrictHostKeyChecking=no" -arvc ./nginx $SSH_USER@$SSH_IP:~/config/

ssh -o StrictHostKeyChecking=no $SSH_USER@$SSH_IP "
    export $ENV_VARS;
    cd ~/config/nginx;
    docker compose up --build --remove-orphans -d"

# POSTGRES

rsync -e "ssh -o StrictHostKeyChecking=no" -arvc ./postgres $SSH_USER@$SSH_IP:~/config/

ssh -o StrictHostKeyChecking=no $SSH_USER@$SSH_IP "
    export $ENV_VARS;
    cd ~/config/postgres;
    docker compose up --build --remove-orphans -d"