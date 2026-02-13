#!/bin/bash

echo "==========================================="
echo "Compilando microservicios..."
echo "==========================================="

# Compilar couponservice
echo ""
echo "📦 Compilando couponservice..."
cd couponservice
./mvnw clean package -DskipTests
if [ $? -ne 0 ]; then
    echo "❌ Error al compilar couponservice"
    exit 1
fi
cd ..

# Compilar productservice
echo ""
echo "📦 Compilando productservice..."
cd productservice
./mvnw clean package -DskipTests
if [ $? -ne 0 ]; then
    echo "❌ Error al compilar productservice"
    exit 1
fi
cd ..

echo ""
echo "==========================================="
echo "✅ Compilación exitosa"
echo "==========================================="

cd infra

# Ejecutar docker-compose
echo ""
echo "🐳 Iniciando contenedores con Docker Compose..."
echo "=================================================="
docker-compose up --build -d

