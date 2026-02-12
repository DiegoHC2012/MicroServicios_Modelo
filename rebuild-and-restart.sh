#!/bin/bash

echo "==========================================="
echo "Recompilando microservicios..."
echo "==========================================="

# Compilar couponservice
echo ""
echo "📦 Recompilando couponservice..."
cd couponservice
./mvnw clean package -DskipTests
if [ $? -ne 0 ]; then
    echo "❌ Error al compilar couponservice"
    exit 1
fi
cd ..

# Compilar productservice
echo ""
echo "📦 Recompilando productservice..."
cd productservice
./mvnw clean package -DskipTests
if [ $? -ne 0 ]; then
    echo "❌ Error al compilar productservice"
    exit 1
fi
cd ..

echo ""
echo "==========================================="
echo "✅ Recompilación exitosa"
echo "==========================================="

# Detener contenedores existentes
echo ""
echo "🛑 Deteniendo contenedores..."
docker-compose down

# Reconstruir e iniciar contenedores
echo ""
echo "🐳 Reconstruyendo e iniciando contenedores..."
echo "==========================================="
docker-compose up --build -d

echo ""
echo "==========================================="
echo "✅ Servicios reiniciados correctamente"
echo "==========================================="
echo ""
echo "Ver logs con: docker-compose logs -f"
echo "Estado de servicios: docker-compose ps"
