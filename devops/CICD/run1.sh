kubectl -n watcher apply -f git-clone-task.yaml 
kubectl -n watcher apply -f kaniko-task.yaml 
kubectl -n watcher apply -f kaniko-pipeline.yaml 
kubectl -n watcher apply -f kaniko-pipeline-run.yaml 
