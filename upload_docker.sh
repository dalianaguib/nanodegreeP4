
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=dalianaguib/project4
# Step 2:
# Authenticate & tag
export DOCKER_ID_USER="dalianaguib"
docker login
docker tag project4 $DOCKER_ID_USER/project4
docker push $DOCKER_ID_USER/project4

# Step 3:
# Push image to a docker repository
docker push dalianaguib/project4
