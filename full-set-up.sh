for component in frontend cart catalogue user shipping payment redis mongodb mysql rabbitmq ; do
ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=$component -e server=test -e env=dev

done
