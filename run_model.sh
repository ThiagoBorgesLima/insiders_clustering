# variable
data=$(date +'%Y-%m-%dT%H:%M:%S') 

# path
path='/Users/thiago/Thiago/Data_Science/comunidade_ds/insiders_clustering'

papermill $path/src/models/c10-tbl-deploy.ipynb $path/reports/c10-tbl-deploy_$data.ipynb
