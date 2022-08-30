kubectl config view # view config, kuberconfig

kubectl cluster-info # info about cluster

kubectl get nodes # list of nodes

kubectl get pods -o wide # list pods with IPs

kubectl get pods -l k8s-app=web-dash # list pods filtered by label

kubectl get all # list all resources, show pods, services, deployments, replicasets, etc

kubectl proxy # auth to API server and open it on 8001 port

kubectl get namespaces # list of namespaces.

When not using the kubectl proxy, we need to authenticate to the API Server when sending API requests.
We can authenticate by providing a Bearer Token when issuing a curl,
or by providing a set of keys and certificates.

kubectl get deployments # list of deployments

kubectl delete deployments my-deployment # delete deployment

kubectl get replicasets # list of replica sets

kubectl apply -f file.yaml # to up pod from the file

kubectl run nginx --image=nginx # run nginx

kubectl service list # list of IPs with exposed ports

kubectl describe nodes my-node # return descriptive node info

kubectl describe pods my-pod # return descriptive node info

kubectl describe deploy my-deploy # return descriptive deploy info

kubectl replace --force -f ./pod.json # replace pod with new one

kubectl delete pods my-pod # delete pod

kubectl create deployment nginx --image=nginx # creates 1 pod with Nginx

kubectl scale deployment foo --replicas=3 # scale number of podes to 3

kubectl set image deployment/frontend www=image:v2      # Плавающее обновление контейнеров "www" развёртывания "frontend", обновление образа
kubectl rollout history deployment/frontend # Проверить историю развёртывания, включая ревизии.
kubectl rollout undo deployment/frontend # Откатиться к предыдущему развёртыванию
kubectl rollout undo deployment/frontend --to-revision=3 # Откатиться к определённой ревизии
kubectl rollout status -w deployment/frontend # Отслеживать статус плавающего развёртывания "frontend" до его завершения
kubectl rollout restart deployment/frontend # Перезапуск плавающего развёртывания "frontend"

kubectl replace --force -f ./pod.json # force to delete and re-create pod, it leads to down time

kubectl expose rc nginx --port=80 --target-port=8000 # cоздать сервис с реплицированным nginx на порту 80, который подключается к контейнерам на порту 8000.
kubectl expose deployment my-deployment --port=80 --type=NodePort # открыть порт 80 на ранее созданном деплойменте
kubectl expose deployment my-deployment --type=NodePort # тоже самое (если в контейнере приложение поднято на 80 порту)

kubectl exec --stdin --tty my-pod -- /bin/bash # run shell/terminal in a running container

kubectl get services # list of services

kubectl delete all --all # delete all resources, clear everything that you created

kubectl create configmap my-config --from-literal=key1=value1 --from-literal=key2=value2 # create configMap
kubectl create configmap permission-config --from-file=<some-file-path>.properties # create from file

