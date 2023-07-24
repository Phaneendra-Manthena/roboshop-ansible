#for component in frontend cart catalogue user shipping payment redis mongodb mysql rabbitmq ; do
#ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=$component -e server= -e env=dev
#
#done
for component in frontend cart catalogue user shipping payment redis mongodb mysql rabbitmq; do
    ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=$component -e "server=$(grep -oP "${component}\s+\K\S+" hosts | tr '\n' ',')" -e env=dev
done
