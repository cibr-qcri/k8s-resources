# Airflow Deployment

## add this helm repository

```
helm repo add airflow-stable https://airflow-helm.github.io/charts
```

## update your helm repo cache

```
helm repo update
```

## Install Airflow PVC:

```
kubectl apply -f pvc.yaml
```

## Install Airflow:

```
helm install airflow-cluster   airflow-stable/airflow  --namespace airflow-cluster -f values.yaml --version "8.X.X" --create-namespace
```

## Install Airflow Ingress:

```
kubectl apply -f ingress.yaml
```
