# fastapi-k8s

## How to build and run

```bash
# Build an image
docker build ./ -t fastapi-k8s
docker tag fastapi-k8s:latest ghcr.io/argi-berri/fastapi-k8s/fastapi-k8s:latest

# Please upload the image to somewhere like GHCR
# After upload, make it be public so that K8S can pull the image
echo ... | docker login ghcr.io -u argi-berri --password-stdin
docker push ghcr.io/argi-berri/fastapi-k8s/fastapi-k8s:latest

# Deploy the service
microk8s kubectl apply -f k8s/manifest.yaml

# Access the service
microk8s kubectl port-forward services/fastapi-service 8080:80
curl localhost:8080
```

## License

Apache-2.0
