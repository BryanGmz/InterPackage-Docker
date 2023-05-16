#!/bin/bash

echo "Selecciona el servicio que deseas ejecutar:"
echo "1. Discover"
echo "2. Gateway"
echo "3. Notification"
echo "4. Payments"
echo "5. Tracking"
echo "6. Users"
echo "7. Users"
echo "8. Users"
echo "9. Todos"

read option

case $option in
  1)
    # Discover
    cd /home/Interpackage/InterPackage-Discovery-Server && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Discover: $?"

    docker stop docker-interpackage-service-discovery-1
    docker rm docker-interpackage-service-discovery-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-discovery
    ;;
  2)
    # Gateway
    cd /home/Interpackage/InterPackage-Gateway && git pull origin master && mvn clean install -DskipTests
    echo "Resultado de Gateway: $?"

    docker stop docker-interpackage-service-gateway-1
    docker rm docker-interpackage-service-gateway-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-gateway
    ;;
  3)
    # Notification
    cd /home/Interpackage/InterPackage-Notification && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Notification: $?"

    docker stop docker-interpackage-service-notification-1
    docker rm docker-interpackage-service-notification-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-notification
    ;;
  4)
    # Payments
    cd /home/Interpackage/InterPackage-Payments && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Payments: $?"

    docker stop docker-interpackage-service-payment-1
    docker rm docker-interpackage-service-payment-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-payment
    ;;
  5)
    # Tracking
    cd /home/Interpackage/InterPackage-Tracking && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Tracking: $?"

    docker stop docker-interpackage-service-tracking-1
    docker rm docker-interpackage-service-tracking-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-tracking
    ;;
  6)
    # Users
    cd /home/Interpackage/InterPackage-Users && git pull origin master && mvn clean install -DskipTests
    echo "Resultado de Users: $?"

    docker stop docker-interpackage-service-users-1
    docker rm docker-interpackage-service-users-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-users
    ;;

  7)
    # Cards
    cd /home/Interpackage/InterPackage-Cards && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Cards: $?"

    docker stop docker-interpackage-service-cards-1
    docker rm docker-interpackage-service-cards-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-cards
    ;;

  8)
    # Package
    cd /home/Interpackage/InterPackage-Package && git pull origin master && mvn clean install -DskipTests
    echo "Resultado de Package: $?"

    docker stop docker-interpackage-service-package-1
    docker rm docker-interpackage-service-package-1
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-package
    ;;

  9)
    # Todos
    
    cd /home/Interpackage/InterPackage-Discovery-Server && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Discover: $?"
    
    cd /home/Interpackage/InterPackage-Gateway && git pull origin master && mvn clean install -DskipTests
    echo "Resultado de Gateway: $?"

    cd /home/Interpackage/InterPackage-Notification && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Notification: $?"

    cd /home/Interpackage/InterPackage-Payments && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Payments: $?"

    cd /home/Interpackage/InterPackage-Tracking && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Tracking: $?"

    cd /home/Interpackage/InterPackage-Users && git pull origin master && mvn clean install -DskipTests
    echo "Resultado de Users: $?"
    
    cd /home/Interpackage/InterPackage-Cards && git pull origin main && mvn clean install -DskipTests
    echo "Resultado de Cards: $?"
    
    cd /home/Interpackage/InterPackage-Package && git pull origin master && mvn clean install -DskipTests
    echo "Resultado de Package: $?"

    docker stop docker-interpackage-service-discovery-1
    docker stop docker-interpackage-service-gateway-1
    docker stop docker-interpackage-service-notification-1
    docker stop docker-interpackage-service-payment-1
    docker stop docker-interpackage-service-tracking-1
    docker stop docker-interpackage-service-users-1
    docker stop docker-interpackage-service-cards-1
    docker stop docker-interpackage-service-package-1
    
    docker rm docker-interpackage-service-discovery-1
    docker rm docker-interpackage-service-gateway-1
    docker rm docker-interpackage-service-notification-1
    docker rm docker-interpackage-service-payment-1
    docker rm docker-interpackage-service-tracking-1
    docker rm docker-interpackage-service-users-1
    docker rm docker-interpackage-service-cards-1
    docker rm docker-interpackage-service-package-1
    
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-discovery
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-gateway
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-notification
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-payment
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-tracking    
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-users
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-cards
    cd /home/Interpackage/docker && docker-compose up -d --build interpackage-service-package
    ;;

  *)
    echo "Opción inválida. Saliendo del script."
    ;;
esac
