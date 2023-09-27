#!/bin/bash

run_frontend() {
  if [[ $1 == "admin" ]]; then
    cd /home/seti/seti/admin-view/
  elif [[ $1 == "inventariado" ]]; then
    cd /home/seti/seti/inventory-view/
  else
    echo "Produto não reconhecido"
    exit 1
  fi

  gnome-terminal --tab -- bash -c "npm run dev"
}

run_backend() {
  if [[ $1 == "admin" ]]; then
    cd /home/seti/seti/admin-api/
  elif [[ $1 == "inventariado" ]]; then
    cd /home/seti/seti/inventory-api/
  else
    echo "Produto não reconhecido"
    exit 1
  fi

  gnome-terminal --tab -- bash -c "mvn spring-boot:run -Dspring-boot.run.profiles=dev"
}

read -p "Qual produto você deseja executar (admin/inventariado/ambos)? " produto


# Verificar a escolha e executar FRONT-END e BACK-END correspondentes
if [[ $produto == "admin" || $produto == "ambos" ]]; then
  run_frontend "admin" &
  run_backend "admin" &
fi

if [[ $produto == "inventariado" || $produto == "ambos" ]]; then
  run_frontend "inventariado" &
  run_backend "inventariado" &
fi

wait
