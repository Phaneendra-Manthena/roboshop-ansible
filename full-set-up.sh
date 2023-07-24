ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=$1 -e server=$2 -e env=dev

