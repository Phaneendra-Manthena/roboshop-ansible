git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=mysql -e server=mysql
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=redis -e server=redis
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=rabbitmq -e server=rabbitmq
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=mongodb -e server=mongodb
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=user -e server=user -e env=dev
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=cart -e server=cart -e env=dev
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=catalogue -e server=catalogue -e env=dev
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=shipping -e server=shipping -e env=dev
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=payment -e server=payment -e env=dev
git pull ; ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=frontend -e server=frontend -e env=dev
