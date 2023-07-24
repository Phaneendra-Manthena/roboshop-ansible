#for component in frontend cart catalogue user shipping payment redis mongodb mysql rabbitmq ; do
#ansible-playbook -i hosts roboshop.yml -e ROLE_NAME=$component -e server= -e env=dev
#
#done
#!/bin/bash

# Read the components and servers from the hosts file
hosts_file="hosts"

# Loop through each server in the hosts file
while IFS= read -r server_entry; do
  # Extract the server IP and credentials
  server_ip=$(echo "$server_entry" | awk '{print $1}')
  ansible_user=$(echo "$server_entry" | awk -F'ansible_user=' '{print $2}' | awk '{print $1}')
  ansible_password=$(echo "$server_entry" | awk -F'ansible_password=' '{print $2}' | awk '{print $1}')

  # Loop through each component and execute the Ansible playbook for the current server
  for component in frontend cart catalogue user shipping payment redis mongodb mysql rabbitmq; do
    ansible-playbook -i "$server_ip," roboshop.yml -e "ROLE_NAME=$component" -e "server=$server" -e "env=dev" --user="$ansible_user" --extra-vars="ansible_password=$ansible_password"
  done

done <"$hosts_file"
