## VPSManager _by Mateusz Kisiel_

### Problem
When I changed VPS I had to configure everything from beggining. It was time-consuming and I didn't remember some of my previous configuration. So I came with the idea to manage my VPS with one simple script.

### Solution
Script ./upload.sh loads configuration params from .env, sends necessary files to ssh and then runs dockers containers, so everything is clean and containerized.