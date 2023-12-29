## VPS MANAGER _by Mateusz Kisiel_

### Project's description:
Have you ever had to create new VPS and reconfigure everything again? <br />
This project solves this issue. I just run one ansible script and whole VPS is configured.
There are 2 ansible scripts:
Usage: ansible-playbook /playbooks/[pipeline_name].yml
1) configure_vps.yml:
    - Updates packages. 
    - Creates new user. 
    - Adds it to wheels. 
    - Uploads ssh public keys from ssh_keyes directory.
      (You can generate keypair with `ssh-keygen -t ed25519 -f keyname.pem`)
    - Installs new docker version.
    - Create necessary directories.
2) update_containers.yml:
    - Imports variables from secrets.yaml (file is in gitignore, it should look like secrets.example.yaml)
    - Creates and starts nginx docker image with nginx.conf (it is in /playbooks/nginx/nginx.conf)
    - It atomatically creates SSL keys and generates certificates with service letsencrypt
    - Creates PostgreSql database container with pre existing databases
