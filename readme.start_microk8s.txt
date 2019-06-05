

//Stopping and Restarting MicroK8s
microk8s.stop

//Start MicroK8s
microk8s.start


microk8s.kubectl get all --all-namespaces
NAMESPACE     NAME                           TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)             AGE
default       service/kubernetes             ClusterIP   10.152.183.1     <none>        443/TCP             8m9s
kube-system   service/heapster               ClusterIP   10.152.183.206   <none>        80/TCP              5m40s
kube-system   service/kube-dns               ClusterIP   10.152.183.10    <none>        53/UDP,53/TCP       5m54s
kube-system   service/kubernetes-dashboard   ClusterIP   10.152.183.27    <none>        443/TCP             5m40s



//access dashboard
https://10.152.183.27
