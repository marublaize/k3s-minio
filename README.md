# k3s-minio-deployment

## Project Structure

```bash
k3s-minio-deployment/
├── .github/
│   └── workflows/
│       └── deploy-helm-chart.yml       # GitHub Action workflow file
│
├── helm/
│   ├── minio-chart/                    # Helm chart for Minio
│       ├── Chart.yaml
│       ├── values.yaml
│       ├── templates/
│           ├── minio-deployment.yaml   # Kubernetes manifest for Minio
│           ├── minio-service.yaml      # Kubernetes service manifest for Minio
│           ├── minio-pvc.yaml          # Kubernetes PVC manifest for Minio
│
├── README.md                           # Project documentation
│
├── setup_k3s.sh                        # K3s installation script
```

## Deploy Minio using Helm

Deploy Minio using the Helm chart:

```bash
helm upgrade --install minio ./minio-chart
```

## Minio Configuration

You need to set at least the following configs inside ```values.yaml```:

Access Key: your-access-key
Secret Key: your-secret-key

## Exposing Minio

By default, the service was configure to be exposed as a ```LoadBalancer```. You can change this behavior through ```values.yaml``` file.

## High-Availability Options

For high availability, consider configuring distributed storage backends or running Minio in a multi-node cluster.
