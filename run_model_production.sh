# variable
data=$(date +'%Y-%m-%dT%H:%M:%S')

# path
path='/home/ubuntu/insiders_clustering'
path_to_envs='/home/ubuntu/ins_clustenv/bin'

$path_to_envs/papermill $path/src/models/c-10-tbl-deploy.ipynb $path/reports/c10-tbl-deploy_$data.ipynb
