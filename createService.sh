#/bin/sh
echo "== Create Service Stage =="
microk8s.kubectl create -f service.yaml
