docker run -d --name=portainer\
    --restart=always\
    -p 8000:8000 -p 9000:9000\
    -v /var/run/docker.sock:/var/run/docker.sock\
    -v /home/docker/portainer/portainer_data:/data portainer/portainer-ce\