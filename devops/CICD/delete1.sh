kubectl -n watcher delete -f git-clone-task.yaml
kubectl -n watcher delete -f kaniko-task.yaml 
kubectl -n watcher delete -f kaniko-pipeline.yaml 
kubectl -n watcher delete -f kaniko-pipeline-run.yaml 
