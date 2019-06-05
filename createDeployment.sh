#/bin/sh
echo "== Create Deployment Stage =="
microk8s.kubectl create -f deployment.yaml
