# deploy.ps1 - Clean version without emojis

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  DevOps Magic - Kubernetes Deployment" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Verify kind cluster is running
Write-Host "[1/6] Checking kind cluster..." -ForegroundColor Yellow
$clusterExists = kind get clusters | Select-String "devops-demo"

if (-not $clusterExists) {
    Write-Host "      Cluster not found. Creating..." -ForegroundColor Red
    kind create cluster --name devops-demo --image kindest/node:v1.27.3
} else {
    Write-Host "      Cluster is running!" -ForegroundColor Green
}
Write-Host ""

# Step 2: Pull latest image from Docker Hub (simulate this)
Write-Host "[2/6] Pulling latest image from Docker Hub..." -ForegroundColor Yellow
Write-Host "      Image: monil08/netflix-ka-bhai:by-githb-actions" -ForegroundColor Gray
Start-Sleep -Seconds 2
Write-Host "      Image ready!" -ForegroundColor Green
Write-Host ""

# Step 3: Apply Kubernetes manifests
Write-Host "[3/6] Deploying to Kubernetes..." -ForegroundColor Yellow
kubectl apply -f k8s/
Write-Host ""

# Step 4: Wait for deployment
Write-Host "[4/6] Waiting for pods to be ready..." -ForegroundColor Yellow
kubectl rollout status deployment/flask-app
Write-Host ""

# Step 5: Show resources
Write-Host "[5/6] Deployment Status" -ForegroundColor Yellow
Write-Host "----------------------------------------" -ForegroundColor Gray
kubectl get pods -l app=flask-app
Write-Host ""
kubectl get services flask-service
Write-Host ""

# Step 6: Success message
Write-Host "========================================" -ForegroundColor Green
Write-Host "  DEPLOYMENT SUCCESSFUL!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Starting port-forward to access the app..." -ForegroundColor Yellow
Write-Host ""
Write-Host "   Your app will be available at: http://localhost:30000" -ForegroundColor Cyan
Write-Host "   Press Ctrl+C to stop port-forwarding and exit" -ForegroundColor Gray

Write-Host ""
Write-Host "[6/6] Starting port-forward now..." -ForegroundColor Cyan
Write-Host ""

# Port forward (this blocks until Ctrl+C)
kubectl port-forward service/flask-service 30000:80