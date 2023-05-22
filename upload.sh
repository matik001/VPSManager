rsync -e "ssh -o StrictHostKeyChecking=no" -arvc ./nginx root@157.230.18.69:~/config/

ssh -o StrictHostKeyChecking=no root@157.230.18.69 "
    cd ~/config/nginx;
    docker compose up --build --remove-orphans -d"