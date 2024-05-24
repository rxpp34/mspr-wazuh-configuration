curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh 

bash wazuh-install.sh --generate-config-files

bash wazuh-install.sh --wazuh-indexer wazuh-indexer

tar -axf wazuh-install-files.tar wazuh-install-files/wazuh-passwords.txt -O | grep -P "\'admin\'" -A 1
