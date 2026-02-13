#!/bin/bash

echo "=========================================="
echo "Testing Microservices Endpoints"
echo "=========================================="
echo ""

# Colores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Función para probar un endpoint
test_endpoint() {
    local service_name=$1
    local url=$2
    
    echo -e "${YELLOW}Testing ${service_name}...${NC}"
    echo "URL: $url"
    
    response=$(curl -s -o /dev/null -w "%{http_code}" $url 2>/dev/null)
    
    if [ $? -eq 0 ] && [ "$response" -eq 200 ]; then
        echo -e "${GREEN}✓ ${service_name} is UP (HTTP $response)${NC}"
        content=$(curl -s $url)
        echo "Response: $content"
    elif [ $? -eq 0 ]; then
        echo -e "${RED}✗ ${service_name} returned HTTP $response${NC}"
    else
        echo -e "${RED}✗ ${service_name} is DOWN or not responding${NC}"
    fi
    echo ""
}

# Probar endpoints
test_endpoint "Coupon Service" "http://localhost:8080/hello-world"
test_endpoint "Product Service" "http://localhost:8081/hello-world"
test_endpoint "Coupon get" "http://localhost:8080/coupon/getCoupon/HOLIDAY10"

echo "=========================================="
echo "Testing Complete"
echo "=========================================="
