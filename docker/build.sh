#!/bin/bash
# 构建MiCO SDK Docker镜像

echo "=== Building MiCO SDK Docker image ==="
docker build -t tcz1/mico-sdk:latest -f Dockerfile.mico-sdk .
echo "=== Build completed ==="

echo ""
echo "=== Usage ==="
echo "1. Build and run container:"
echo "   docker-compose up -d"
echo ""
echo "2. Execute build inside container:"
echo "   docker-compose exec mico-sdk bash -c './build.sh'"
echo ""
echo "3. Or mount current directory and build:"
echo "   docker run -it --rm -v \$(pwd):/workspace tcz1/mico-sdk:latest bash -c './build.sh'"
