curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh 
wget https://github.com/rxpp34/mspr-wazuh-installation/blob/main/config.yml

bash wazuh-install.sh --generate-config-files

bash wazuh-install.sh --wazuh-indexer wazuh-indexer

tar -axf wazuh-install-files.tar wazuh-install-files/wazuh-passwords.txt -O | grep -P "\'admin\'" -A 1
