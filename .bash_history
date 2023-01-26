clear
apt update && apt upgrade -y && apt dist-upgrade -y
apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg2 net-tools
hostnamectl set-hostname $(curl -s http://169.254.169.254/latest/meta-data/local-hostname)
apt install -y docker.io
cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

systemctl stop docker
systemctl start docker
systemctl enable docker
cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

sysctl --system
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt update
apt install kubelet="1.22.17-00" 
apt install kubeadm="1.22.17-00"
apt install kubectl="1.22.17-00"
cat << EOF > /etc/kubernetes/aws.yaml
---
apiVersion: kubeadm.k8s.io/v1beta2
kind: ClusterConfiguration
networking:
  serviceSubnet: "10.100.0.0/16"
  podSubnet: "10.244.0.0/16"
apiServer:
  extraArgs:
    cloud-provider: "aws"
controllerManager:
  extraArgs:
    cloud-provider: "aws"
EOF

kubeadm init --config /etc/kubernetes/aws.yaml
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/manifests/calico-typha.yaml
kubectl get nodes
kubectl get pods -A
kubectl get nodes
hostname -f
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl get pods -A
kubectl get nodes
kubectl get pods -A
clear
kubectl get nodes
vi myfirstpod.yaml
kubectl create -f myfirstpod.yaml
vi myfirstpod.yaml
kubectl get nodes
kubectl get pods -A
kubectl get pods -A -owide
kubectl get pods -A
docker ps
kubectl delete pod tomcat-jenkins
ls
clear
ls
vi clusterip.yaml
kubectl apply -f clusterip.yaml 
vi clusterip.yaml
kubectl apply -f clusterip.yaml 
kubectl get service
kubectl get svc
kubectl get pods
curl -v 10.100.236.143:8080
kubectl get nodes
curl -v 10.100.236.143:80
vi myfirstpod.yaml 
vi clusterip.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl get service
kubectl delete service clusterip.yaml 
kubectl delete service tomcat-nginx-cluster
kubectl apply -f clusterip.yaml 
kubectl get svc
curl -v 10.100.207.97:8080
curl -v 10.100.207.97:80
kubectl get endpoints
kubectl get pods
kubectl get pods --show-labels
kubectl get pods -owide
cp clusterip.yaml nodeip.yaml
vi nodeip.yaml 
kubectl get svc
curl -v 10.100.207.97:80
vi nodeip.yaml 
kubectl apply -f nodeip.yaml 
vi nodeip.yaml 
kubectl apply -f nodeip.yaml 
vi nodeip.yaml 
kubectl apply -f nodeip.yaml 
kubectl get svc
kubectl get pods
kubectl get endpoints
kubectl get pods
kubectl get pods -owide
kubectl get pods --show-labels
cp nodeip.yaml loadbalservice.yaml
vi loadbalservice.yaml 
kubectl apply -f loadbalservice.yaml 
vi loadbalservice.yaml 
kubectl apply -f loadbalservice.yaml 
kubectl get svc
kubectl get endpoints
kubectl get pods -owide
cd /etc/kubernetes/
ls
vi aws.yaml 
cd manifests/
ls
vi kube-apiserver.yaml 
cd
kubectl get svc
cp loadbalservice.yaml externalipservice.yaml
vi externalipservice.yaml 
kubectl apply -f externalipservice.yaml 
kubectl get endpoints
kubectl get svc
kubectl delete svc --all
kubectl get svc
kubectl delete svc tomcat-nginx-loadbal
kubectl get svc
kubectl delete myfirstpod.yaml 
kubectl delete pods
kubectl get pods 
kubectl delete pod tomcat-jenkins
kubectl get pods 
kubectl get nodes
clear
ls
kubectl get nodes
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl get endpoints
kubectl apply -f nodeip.yaml 
kubectl get nodes
kubectl get pods
kubectl get endpoints
kubectl get pods -owide
kubectl get svc
cat myfirstpod.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl create -f replicaset.yaml 
vi replicaset.yaml
kubectl get pods
cat replicaset.yaml 
kubectl delete pods -all
kubectl delete pods --all
kubectl get pods
history 
kubetcl get pods
kubectl get pods
kubectl create -f replicaset.yaml 
vi replicaset.yaml 
kubectl create -f replicaset.yaml 
kubectl get pods
kubetcl delete --all
kubetcl delete pods --all
kubetcl delete pod --all
kubectl delete pods --all
kubectl get pods
vi replicaset.yaml 
kubectl create -f replicaset.yaml 
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
vi replicaset.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl get pods tomcat-4sxvx -oyaml
cp replicaset.yaml deploymentobject.yaml
vi deploymentobject.yaml 
kubectl get pods
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl create -f replicaset.yaml 
kubectl get pods
kubectl apply -f replicaset.yaml 
kubectl get pods
kubectl get pods -owide
kubectl get pods -oyaml
kubectl get pods
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl get pods
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods
kubectl delete replicaset tomcat
kubectl get pods
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods
kubectl get replicaset
kubectl get deployment
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods
kubectl get deployment
kubectl get pods
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods
kubectl delete deployment --all
kubectl get pods
vi deploymentobject.yaml 
kubectl get deployment
kubectl get pods
kubectl get nodes
clear
ls
vi newnamespace.yaml
kubectl get namespace
kubectl apply -f newnamespace.yaml 
kubectl get namespace
vi objectpodlimit.yaml
vi resourcequota.yaml
vi myfirstpod.yaml 
vi deploymentobject.yaml 
vi myfirstpod.yaml 
vi limitrange.yaml
clear
ls
kubectl get namespace
kubectl get pods
kubectl apply -f deploymentobject.yaml 
kubectl get pods
kubectl get svc
kubectl get pods
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods
vi myfirstpod.yaml 
kubectl get pods -owide
kubectl describe pod tomcat-6c77f8f598
kubectl get pods
kubectl get pods -n default
kubectl get pods -n kube-system
kubectl delete tomcat-6c77f8f598
kubectl delete tomcat-6c77f8f598 -n default
kubectl delete deployment tomcat-6c77f8f598 
kubectl delete pods tomcat-6c77f8f598 
kubectl delete pod tomcat-6c77f8f598 
kubectl delete deployment tomcat-6c77f8f598 
kubectl delete deployment --all
kubectl get pods
clear
kubectl get namespace
kubectl apply -f deploymentobject.yaml --namespace=dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl delete pod tomcat-6c77f8f598 -n dev-envi-namespace
kubectl delete pod tomcat -n dev-envi-namespace
vi deploymentobject.yaml 
kubectl delete pod --all -n dev-envi-namespace
kubectl get pods
vi deploymentobject.yaml 
kubectl get namespace
vi myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl get pods -n dev-envi-namespace
vi deploymentobject.yaml 
kubectl delete deployment -all -n dev-envi-namespace
kubectl delete deployment --all -n dev-envi-namespace
kubectl get pods
kubectl get pods -n dev-envi-namespace
kubectl delete pods -n dev-envi-namespace
kubectl delete pods --all -n dev-envi-namespace
kubectl get pods -n dev-envi-namespace
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get pods
vi resourcequota.yaml 
cat resourcequota.yaml 
kubectl describe namespace dev-envi-namespace
kubectl describe namespace default
kubectl apply -f resourcequota.yaml 
kubectl describe namespace dev-envi-namespace
ls
cat limitrange.yaml 
kubectl apply -f limitrange.yaml 
kubectl describe namespace dev-envi-namespace
cat limitrange.yaml 
ls
cat objectpodlimit.yaml 
kubectl apply -f objectpodlimit.yaml 
kubectl describe namespace dev-envi-namespace
kubect get reourcequota
kubect get resourcequota
kubect get resourcequota -n dev-envi-namespace
kubect get quota -n dev-envi-namespace
kubectl get quota -n dev-envi-namespace
cat limitrange.yaml 
cat resourcequota.yaml 
vi deploymentobject.yaml 
kubectl delete deployment --all -n dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl apply -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl describe namespace dev-envi-namespace
kubectl delete deployment --all -n dev-envi-namespace
vi objectpodlimit.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
cat objectpodlimit.yaml 
vi deploymentobject.yaml 
vi replicaset.yaml 
kubectl describe namespace dev-envi-namespace
kubectl apply -f objectpodlimit.yaml 
kubectl get pods -n dev-envi-namespace
kubectl describe namespace dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl describe replicaset tomcat-6c77f8f598 -n dev-envi-namespace
kubectl describe replicaset
kubectl describe replicaset -n dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl delete deployment --all -n dev-envi-namespace
kubectl delete quota --all -n dev-envi-namespace
kubectl delete svc --all -n dev-envi-namespace
kubectl delete svc
kubectl delete svc --all
kubectl get pods - dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl get svc
kubectl get pods -n dev-envi-namespace
clear
ls
vi deploymentobject.yaml 
kubectl get nodes
kubectl taint node ip-10-0-0-60.ec2.internal colour=red:NoSchedule
kubectl get pods
kubectl apply -f deploymentobject.yaml 
kubectl get pods
kubectl get namespace
kubectl get pods -n dev-envi-namespace
kubectl get pods -owide -n dev-envi-namespace
kubectl get nodes
vi deploymentobject.yaml 
kubectl delete -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl apply -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get pods -owide -n dev-envi-namespace
cat deploymentobject.yaml 
kubectl describe deploymentobject.yaml 
kubectl describe node  -n dev-envi-namespace
kubectl get nodes
kubectl describe node ip-10-0-0-228.ec2.internal 
kubectl describe node ip-10-0-0-60.ec2.internal 
kubectl get svc
clear
kubectl get nodes
kubectl taint node ip-10-0-0-60.ec2.internal colour=red:NoSchedule-
cat deploymentobject.yaml 
mkdir taintlabel
ls
cd taintlabel/
touch tainttolerationsdeploy
vi tainttolerationsdeploy 
cd
cd taintlabel/
cd
vi deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get nodes
kubectl label node ip-10-0-0-228.ec2.internal
kubectl label node ip-10-0-0-228.ec2.internal size=large
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
cat deploymentobject.yaml 
cd taintlabel/
ls
vi labeldeployment
ls
mv labeldeployment labeldeployment.yaml
mv tainttolerationsdeploy tainttolerationsdeploy.yaml
ls
cd
kubectl label node ip-10-0-0-228.ec2.internal size=large-
kubectl label node ip-10-0-0-60.ec2.internal size=large
kubectl delete -f deploymentobject.yaml 
kubectl get nodes
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
cd taintlabel/
ls
cat tainttolerationsdeploy.yaml 
clear
ls
vi depl
vi deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl apply -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl describe node ip-10-0-0-60.ec2.internal
kubectl describe node ip-10-0-0-228.ec2.internal
vi deploymentobject.yaml 
kubectl label node ip-10-0-0-60.ec2.internal size=small
kubectl label node ip-10-0-0-60.ec2.internal size=small --overwrite
kubectl delete -f deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
vi deploymentobject.yaml 
kubectl delete -f deploymentobject.yaml 
vi deploymentobject.yaml 
cat deploymentobject.yaml 
cd taintlabel/
vi requiredlab
mv requiredlab requiredlab.yaml
cd
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
vi deploymentobject.yaml 
cd taintlabel/
ls
cat tainttolerationsdeploy.yaml 
cat labeldeployment.yaml 
ls
cat requiredlab.yaml 
cd
cat deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
vi deploymentobject.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl get svc -owide -n dev-envi-namespace
clear
cd taintlabel/
ls
vi labeldeployment.yaml 
vi tainttolerationsdeploy.yaml 
vi requiredlab.yaml 
cd
clear
ls
vi myfirstpod.yaml 
vi deploymentobject.yaml 
cp deploymentobject.yaml daemonobject.yaml
vi daemonobject.yaml 
kubectl apply -f daemonobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl get pods -n dev-envi-namespace -oyaml
kubectl get pods -n dev-envi-namespace
kubectl get nodes
kubectl get pods -n dev-envi-namespace
vi daemonobject.yaml 
cp deploymentobject.yaml podaffinity.yaml
vi podaffinity.yaml 
rm -rf podaffinity.yaml 
ls
cd taintlabel/
ls
vi requiredlab.yaml 
cp requiredlab.yaml /root/podaffinity.yaml
cd
ls
vi podaffinity.yaml 
kubectl apply -f podaffinity.yaml 
vi podaffinity.yaml 
kubectl apply -f podaffinity.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f daemonobject.yaml 
kubectl get pods -owide -n dev-envi-namespace
vi podaffinity.yaml 
cp podaffinity.yaml antiaffinity.yaml
vi antiaffinity.yaml 
kubectl delete -f podaffinity.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl apply -f antiaffinity.yaml 
kubectl get pods -owide -n dev-envi-namespace
vi antiaffinity.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f antiaffinity.yaml 
kubectl get pods -owide -n dev-envi-namespace
ls
kubectl apply -f myfirstpod.yaml 
kubectl describe pods -n dev-envi-namespace
vi myfirstpod.yaml 
kubectl delete -f limitrange.yaml 
kubectl delete -f resourcequota.yaml 
kubectl delete -f myfirstp
clear
ls
kubectl apply -f myfirstpod.yaml 
kubectl get pods -dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl describe pods -n dev-envi-namespace
clear
kubectl delete pods -f myfirstpod.yaml 
kubectl delete -f pods myfirstpod.yaml 
kubectl delete -f myfirstpod.yaml 
ls
vi limitrange.yaml 
kubectl apply -f limitrange.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl describe pods -n dev-envi-namespace
clear
ls
kubectl delete -f limitrange.yaml 
kubectl delete -f myfirstpod.yaml 
vi limitrange.yaml 
kubectl apply -f limitrange.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl describe pods -n dev-envi-namespace
kubectl delete -f limitrange.yaml 
kubectl delete -f myfirstpod.yaml 
clear
ls
vi limitrange.yaml 
kubectl apply -f limitrange.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl describe pods -n dev-envi-namespace
clear
ls
kubectl delete -f limitrange.yaml 
kubectl describe pods -n dev-envi-namespace
kubectl delete -f myfirstpod.yaml 
clear
kubectl get pods 
kubectl get pods -n dev-envi-namespace
vi daemonobject.yaml 
clear
kubectl get nodes --show-labels
ls
cat myfirstpod.yaml 
cp myfirstpod.yaml datavolpod.yaml
vi datavolpod.yaml 
kubectl apply -f datavolpod.yaml 
vi datavolpod.yaml 
kubectl apply -f datavolpod.yaml 
kubectl get pods -n dev-envi-namespace
vi datavolpod.yaml 
kubectl delete -f datavolpod.yaml 
kubect get pods
kubect get pods -n dev-envi-namespace
kubectl get pods -n dev-envi-namespace
kubectl create -f datavolpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datavolpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get nodes --show-labels
clear
kubectl get nodes
vi datavolpod.yaml 
kubectl apply -f datavolpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datavolpod.yaml 
vi datavolpod.yaml 
apt update
apt-key 
kubectl apply -f datavolpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datavolpod.yaml 
kubectl apply -f datavolpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datavolpod.yaml 
kubectl logs --previous --tail 10
kubectl logs -h
vi datavolpod.yaml 
rm -rf datavolpod.yaml 
vi datvolume.yaml
kubectl apply -f datvolume.yaml 
kubectl get namespace
vi datvolume.yaml
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f limitrange.yaml 
kubectl delete -f resourcequota.yaml 
kubectl get nodes
kubectl delete -f datvolume.yaml 
kubectl get nodes
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
vi datvolume.yaml 
ls
vi deploymentobject.yaml 
cp deploymentobject.yaml datvodeploy.yaml
vi datvodeploy.yaml 
kubectl apply -f datvodeploy.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datvodeploy.yaml 
ls
kubectl apply -f myfirstpod.yaml 
kubectl get pods -n dev-envi-namespace
vi myfirstpod.yaml 
kubectl delete -f myfirstpod.yaml 
clear
ls
vi datvodeploy.yaml 
kubectl apply -f datvodeploy.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datvodeploy.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f myfirstpod.yaml 
kubectl apply -f deploymentobject.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f deploymentobject.yaml 
clear
ls
kubectl get nodes --show-label
kubectl get nodes --show-labels
vi datvolume.yaml 
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datvolume.yaml 
vi datvolume.yaml 
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datvolume.yaml 
clear
apt upgrade
clear
ls
vi datvolume.yaml 
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get nodes
kubectl get nodes -owide
kubectl delete -f datvolume.yaml 
kubectl describe nodes
clear
kubectl get nodes -owide
kubectl describe nodes
clear
ls
vi datvodeploy.yaml 
vi datvolume.yaml 
cd taintlabel/
ls
cd
cd taintlabel/
cat labeldeployment.yaml 
cd
clear
kubectl get nodes
clear
kubectl get nodes
ls
kubectl apply -f myfirstpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f myfirstpod.yaml 
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get nodes
kubectl delete -f datvolume.yaml 
vi datvolume.yaml 
kubectl apply -f datvolume.yaml 
kubectl get pods -n dev-envi-namespace
kubectl delete -f datvolume.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods -n dev-envi-namespace
kubectl get pods -owide -n dev-envi-namespace
kubectl delete -f myfirstpod.yaml 
kubectl get pods -owide -n dev-envi-namespace
kubectl get nodes
clear
kubectl get nodes
ls
kubectl get nodes
kubectl logs nodes
clear
kubectl get nodes
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
kubectl get nodes
clear
kubectl get nodes
swapoff -a
systemctl restart kubelete
systemctl restart kubelet
kubectl get nodes
systemctl restart kube-proxy
systemctl restart kubeproxy
syslogs
