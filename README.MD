## VPSManager _by Mateusz Kisiel_

### Problem

When switching to a new VPS, I found myself spending a lot of time reconfiguring everything from scratch. Additionally, I often struggled to remember some of my previous configurations. To streamline this process, I developed VPSManager—a simple script that helps manage my VPS.

### Solution

The `VPSManager` script, named `upload.sh`, automates the configuration process by loading the necessary parameters from the `.env` file. It then securely transfers the required files via SSH and sets up Docker containers, ensuring a clean and containerized environment. With VPSManager, you can quickly and easily configure your VPS without the hassle of manual setup.
