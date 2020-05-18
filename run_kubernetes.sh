
#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dalianaguib/project4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project4 --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
/home/ec2-user/kubectl port-forward deployment/project4 8080:80
